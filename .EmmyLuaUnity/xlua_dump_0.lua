---@meta
---@class System.Collections.Generic.List<T>: object, System.Collections.Generic.IList<T>, System.Collections.Generic.ICollection<T>, System.Collections.Generic.IReadOnlyList<T>, System.Collections.Generic.IReadOnlyCollection<T>, System.Collections.Generic.IEnumerable<T>, System.Collections.IList, System.Collections.ICollection, System.Collections.IEnumerable
---@overload fun(): System.Collections.Generic.List
---@overload fun(collection: System.Collections.Generic.IEnumerable<T>): System.Collections.Generic.List
---@overload fun(capacity: integer): System.Collections.Generic.List
local List = {}
---@type integer
List.Capacity = nil

---@type integer
List.Count = nil

---@param item T
---@return void
function List:Add(item)
end

---@param collection System.Collections.Generic.IEnumerable<T>
---@return void
function List:AddRange(collection)
end

---@return System.Collections.ObjectModel.ReadOnlyCollection<T>
function List:AsReadOnly()
end

---@param index integer
---@param count integer
---@param item T
---@param comparer System.Collections.Generic.IComparer<T>
---@return integer
function List:BinarySearch(index, count, item, comparer)
end

---@param item T
---@return integer
function List:BinarySearch(item)
end

---@param item T
---@param comparer System.Collections.Generic.IComparer<T>
---@return integer
function List:BinarySearch(item, comparer)
end

---@return void
function List:Clear()
end

---@param item T
---@return boolean
function List:Contains(item)
end

---@param converter System.Converter<T, TOutput>
---@return TOutput[]
function List:ConvertAll(converter)
end

---@param index integer
---@param array T[]
---@param arrayIndex integer
---@param count integer
---@return void
function List:CopyTo(index, array, arrayIndex, count)
end

---@param array T[]
---@return void
function List:CopyTo(array)
end

---@param array T[]
---@param arrayIndex integer
---@return void
function List:CopyTo(array, arrayIndex)
end

---@param match System.Predicate<T>
---@return boolean
function List:Exists(match)
end

---@param match System.Predicate<T>
---@return T
function List:Find(match)
end

---@param match System.Predicate<T>
---@return T[]
function List:FindAll(match)
end

---@param startIndex integer
---@param count integer
---@param match System.Predicate<T>
---@return integer
function List:FindIndex(startIndex, count, match)
end

---@param startIndex integer
---@param match System.Predicate<T>
---@return integer
function List:FindIndex(startIndex, match)
end

---@param match System.Predicate<T>
---@return integer
function List:FindIndex(match)
end

---@param match System.Predicate<T>
---@return T
function List:FindLast(match)
end

---@param startIndex integer
---@param count integer
---@param match System.Predicate<T>
---@return integer
function List:FindLastIndex(startIndex, count, match)
end

---@param startIndex integer
---@param match System.Predicate<T>
---@return integer
function List:FindLastIndex(startIndex, match)
end

---@param match System.Predicate<T>
---@return integer
function List:FindLastIndex(match)
end

---@param action System.Action<T>
---@return void
function List:ForEach(action)
end

---@return T[]
function List:GetEnumerator()
end

---@param index integer
---@param count integer
---@return T[]
function List:GetRange(index, count)
end

---@param item T
---@return integer
function List:IndexOf(item)
end

---@param item T
---@param index integer
---@return integer
function List:IndexOf(item, index)
end

---@param item T
---@param index integer
---@param count integer
---@return integer
function List:IndexOf(item, index, count)
end

---@param index integer
---@param item T
---@return void
function List:Insert(index, item)
end

---@param index integer
---@param collection System.Collections.Generic.IEnumerable<T>
---@return void
function List:InsertRange(index, collection)
end

---@param item T
---@return integer
function List:LastIndexOf(item)
end

---@param item T
---@param index integer
---@return integer
function List:LastIndexOf(item, index)
end

---@param item T
---@param index integer
---@param count integer
---@return integer
function List:LastIndexOf(item, index, count)
end

---@param item T
---@return boolean
function List:Remove(item)
end

---@param match System.Predicate<T>
---@return integer
function List:RemoveAll(match)
end

---@param index integer
---@return void
function List:RemoveAt(index)
end

---@param index integer
---@param count integer
---@return void
function List:RemoveRange(index, count)
end

---@return void
function List:Reverse()
end

---@param index integer
---@param count integer
---@return void
function List:Reverse(index, count)
end

---@return void
function List:Sort()
end

---@param comparer System.Collections.Generic.IComparer<T>
---@return void
function List:Sort(comparer)
end

---@param comparison System.Comparison<T>
---@return void
function List:Sort(comparison)
end

---@param index integer
---@param count integer
---@param comparer System.Collections.Generic.IComparer<T>
---@return void
function List:Sort(index, count, comparer)
end

---@return T[]
function List:ToArray()
end

---@return void
function List:TrimExcess()
end

---@param match System.Predicate<T>
---@return boolean
function List:TrueForAll(match)
end


---@class System.Collections.Generic.Dictionary<TKey, TValue>: object, System.Collections.Generic.IDictionary<TKey, TValue>, System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey, TValue>>, System.Collections.Generic.IReadOnlyDictionary<TKey, TValue>, System.Collections.Generic.IReadOnlyCollection<System.Collections.Generic.KeyValuePair<TKey, TValue>>, System.Collections.Generic.IEnumerable<System.Collections.Generic.KeyValuePair<TKey, TValue>>, System.Collections.IDictionary, System.Collections.ICollection, System.Collections.IEnumerable, System.Runtime.Serialization.IDeserializationCallback, System.Runtime.Serialization.ISerializable
---@overload fun(): System.Collections.Generic.Dictionary
---@overload fun(dictionary: System.Collections.Generic.IDictionary<TKey, TValue>): System.Collections.Generic.Dictionary
---@overload fun(dictionary: System.Collections.Generic.IDictionary<TKey, TValue>, comparer: System.Collections.Generic.IEqualityComparer<TKey>): System.Collections.Generic.Dictionary
---@overload fun(collection: System.Collections.Generic.IEnumerable<System.Collections.Generic.KeyValuePair<TKey, TValue>>): System.Collections.Generic.Dictionary
---@overload fun(collection: System.Collections.Generic.IEnumerable<System.Collections.Generic.KeyValuePair<TKey, TValue>>, comparer: System.Collections.Generic.IEqualityComparer<TKey>): System.Collections.Generic.Dictionary
---@overload fun(comparer: System.Collections.Generic.IEqualityComparer<TKey>): System.Collections.Generic.Dictionary
---@overload fun(capacity: integer): System.Collections.Generic.Dictionary
---@overload fun(capacity: integer, comparer: System.Collections.Generic.IEqualityComparer<TKey>): System.Collections.Generic.Dictionary
local Dictionary = {}
---@type System.Collections.Generic.IEqualityComparer<TKey>
Dictionary.Comparer = nil

---@type integer
Dictionary.Count = nil

---@type table
Dictionary.Keys = nil

---@type table
Dictionary.Values = nil

---@param key TKey
---@param value TValue
---@return void
function Dictionary:Add(key, value)
end

---@return void
function Dictionary:Clear()
end

---@param key TKey
---@return boolean
function Dictionary:ContainsKey(key)
end

---@param value TValue
---@return boolean
function Dictionary:ContainsValue(value)
end

---@param capacity integer
---@return integer
function Dictionary:EnsureCapacity(capacity)
end

---@return table
function Dictionary:GetEnumerator()
end

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return void
function Dictionary:GetObjectData(info, context)
end

---@param sender any
---@return void
function Dictionary:OnDeserialization(sender)
end

---@param key TKey
---@return boolean
function Dictionary:Remove(key)
end

---@param key TKey
---@return boolean, TValue
function Dictionary:Remove(key, value)
end

---@return void
function Dictionary:TrimExcess()
end

---@param capacity integer
---@return void
function Dictionary:TrimExcess(capacity)
end

---@param key TKey
---@param value TValue
---@return boolean
function Dictionary:TryAdd(key, value)
end

---@param key TKey
---@return boolean, TValue
function Dictionary:TryGetValue(key, value)
end


---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#10:17"
---@class XLuaTest.Foo1Parent: object
---@overload fun(): XLuaTest.Foo1Parent
local Foo1Parent = {}
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#79:27"
---@return void
function Foo1Parent:PlainExtension()
end


---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#15:17"
---@class XLuaTest.Foo2Parent: object
---@overload fun(): XLuaTest.Foo2Parent
local Foo2Parent = {}

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#20:17"
---@class XLuaTest.Foo1Child: XLuaTest.Foo1Parent
---@overload fun(): XLuaTest.Foo1Child
local Foo1Child = {}

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#25:17"
---@class XLuaTest.Foo2Child: XLuaTest.Foo2Parent
---@overload fun(): XLuaTest.Foo2Child
local Foo2Child = {}

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#30:17"
---@class XLuaTest.Foo: object
---@overload fun(): XLuaTest.Foo
local Foo = {}
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#34:20"
---@param a T
---@return void
function Foo:Test1(a)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#39:18"
---@param a T1
---@param b T2
---@param c UnityEngine.GameObject
---@return T1
function Foo:Test2(a, b, c)
end

---不支持生成lua的泛型方法（没有泛型约束）
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#52:20"
---@param a T
---@return void
function Foo:UnsupportedMethod1(a)
end

---不支持生成lua的泛型方法（缺少带约束的泛型参数）
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#60:20"
---@return void
function Foo:UnsupportedMethod2()
end

---不支持生成lua的泛型方法（泛型约束必须为class）
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#68:20"
---@param a T
---@return void
function Foo:UnsupportedMethod3(a)
end


---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#77:24"
---@class XLuaTest.FooExtension: object
local FooExtension = {}

---@class System.Object
---@overload fun(): System.Object
local Object = {}
---@param obj any
---@return boolean
function Object:Equals(obj)
end

---@param objA any
---@param objB any
---@return boolean
function Object.Equals(objA, objB)
end

---@return integer
function Object:GetHashCode()
end

---@return System.Type
function Object:GetType()
end

---@param objA any
---@param objB any
---@return boolean
function Object.ReferenceEquals(objA, objB)
end

---@return string
function Object:ToString()
end


---Base class for all objects Unity can reference.
---@class UnityEngine.Object: object
---@overload fun(): UnityEngine.Object
local Object = {}
---The name of the object.
---@type string
Object.name = nil

---Should the object be hidden, saved with the Scene or modifiable by the user?
---@type UnityEngine.HideFlags
Object.hideFlags = nil

---Returns the instance ID of the object.
---@return integer
function Object:GetInstanceID()
end

---@return integer
function Object:GetHashCode()
end

---@param other any
---@return boolean
function Object:Equals(other)
end

---@param exists UnityEngine.Object
---@return boolean
function Object.op_Implicit(exists)
end

---@param original T
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original)
end

---@param original T
---@param parent UnityEngine.Transform
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, parent)
end

---@param original T
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, position, rotation)
end

---@param original T
---@param parent UnityEngine.Transform
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, parent, position, rotation)
end

---@param original T
---@param count integer
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, count)
end

---@param original T
---@param count integer
---@param parent UnityEngine.Transform
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, count, parent)
end

---@param original T
---@param count integer
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, count, position, rotation)
end

---@param original T
---@param count integer
---@param positions System.ReadOnlySpan<UnityEngine.Vector3>
---@param rotations System.ReadOnlySpan<UnityEngine.Quaternion>
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, count, positions, rotations)
end

---@param original T
---@param count integer
---@param parent UnityEngine.Transform
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, count, parent, position, rotation)
end

---@param original T
---@param count integer
---@param parent UnityEngine.Transform
---@param positions System.ReadOnlySpan<UnityEngine.Vector3>
---@param rotations System.ReadOnlySpan<UnityEngine.Quaternion>
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, count, parent, positions, rotations)
end

---@param original T
---@param parameters UnityEngine.InstantiateParameters
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, parameters)
end

---@param original T
---@param count integer
---@param parameters UnityEngine.InstantiateParameters
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, count, parameters)
end

---@param original T
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param parameters UnityEngine.InstantiateParameters
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, position, rotation, parameters)
end

---@param original T
---@param count integer
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param parameters UnityEngine.InstantiateParameters
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, count, position, rotation, parameters)
end

---@param original T
---@param count integer
---@param positions System.ReadOnlySpan<UnityEngine.Vector3>
---@param rotations System.ReadOnlySpan<UnityEngine.Quaternion>
---@param parameters UnityEngine.InstantiateParameters
---@return UnityEngine.AsyncInstantiateOperation<T>
function Object.InstantiateAsync(original, count, positions, rotations, parameters)
end

---The instantiated clone.
---@param original UnityEngine.Object An existing object that you want to make a copy of.
---@param position UnityEngine.Vector3 Position for the new object.
---@param rotation UnityEngine.Quaternion Orientation of the new object.
---@return UnityEngine.Object
function Object.Instantiate(original, position, rotation)
end

---The instantiated clone.
---@param original UnityEngine.Object An existing object that you want to make a copy of.
---@param position UnityEngine.Vector3 Position for the new object.
---@param rotation UnityEngine.Quaternion Orientation of the new object.
---@param parent UnityEngine.Transform Parent that will be assigned to the new object.
---@return UnityEngine.Object
function Object.Instantiate(original, position, rotation, parent)
end

---The instantiated clone.
---@param original UnityEngine.Object An existing object that you want to make a copy of.
---@return UnityEngine.Object
function Object.Instantiate(original)
end

---The instantiated clone.
---@param original UnityEngine.Object An existing object that you want to make a copy of.
---@param scene UnityEngine.SceneManagement.Scene
---@return UnityEngine.Object
function Object.Instantiate(original, scene)
end

---@param original T
---@param parameters UnityEngine.InstantiateParameters
---@return T
function Object.Instantiate(original, parameters)
end

---@param original T
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param parameters UnityEngine.InstantiateParameters
---@return T
function Object.Instantiate(original, position, rotation, parameters)
end

---The instantiated clone.
---@param original UnityEngine.Object An existing object that you want to make a copy of.
---@param parent UnityEngine.Transform Parent that will be assigned to the new object.
---@return UnityEngine.Object
function Object.Instantiate(original, parent)
end

---The instantiated clone.
---@param original UnityEngine.Object An existing object that you want to make a copy of.
---@param parent UnityEngine.Transform Parent that will be assigned to the new object.
---@param instantiateInWorldSpace boolean When you assign a parent Object, pass true to position the new object directly in world space. Pass false to set the Object’s position relative to its new parent.
---@return UnityEngine.Object
function Object.Instantiate(original, parent, instantiateInWorldSpace)
end

---@param original T
---@return T
function Object.Instantiate(original)
end

---@param original T
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return T
function Object.Instantiate(original, position, rotation)
end

---@param original T
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param parent UnityEngine.Transform
---@return T
function Object.Instantiate(original, position, rotation, parent)
end

---@param original T
---@param parent UnityEngine.Transform
---@return T
function Object.Instantiate(original, parent)
end

---@param original T
---@param parent UnityEngine.Transform
---@param worldPositionStays boolean
---@return T
function Object.Instantiate(original, parent, worldPositionStays)
end

---Removes a GameObject, component or asset.
---@param obj UnityEngine.Object The object to destroy.
---@param t number The optional amount of time to delay before destroying the object.
---@return void
function Object.Destroy(obj, t)
end

---Removes a GameObject, component or asset.
---@param obj UnityEngine.Object The object to destroy.
---@return void
function Object.Destroy(obj)
end

---Destroys the object obj immediately. You are strongly recommended to use Destroy instead.
---@param obj UnityEngine.Object Object to be destroyed.
---@param allowDestroyingAssets boolean Set to true to allow assets to be destroyed.
---@return void
function Object.DestroyImmediate(obj, allowDestroyingAssets)
end

---Destroys the object obj immediately. You are strongly recommended to use Destroy instead.
---@param obj UnityEngine.Object Object to be destroyed.
---@return void
function Object.DestroyImmediate(obj)
end

---The array of objects found matching the type specified.
---@param type System.Type The type of object to find.
---@return UnityEngine.Object[]
function Object.FindObjectsOfType(type)
end

---The array of objects found matching the type specified.
---@param type System.Type The type of object to find.
---@param includeInactive boolean If true, components attached to inactive GameObjects are also included.
---@return UnityEngine.Object[]
function Object.FindObjectsOfType(type, includeInactive)
end

---The array of objects found matching the type specified.
---@param type System.Type The type of object to find.
---@param sortMode UnityEngine.FindObjectsSortMode Whether and how to sort the returned array. Not sorting the array makes this function run significantly faster.
---@return UnityEngine.Object[]
function Object.FindObjectsByType(type, sortMode)
end

---The array of objects found matching the type specified.
---@param type System.Type The type of object to find.
---@param findObjectsInactive UnityEngine.FindObjectsInactive Whether to include components attached to inactive GameObjects. If you don't specify this parameter, this function doesn't include inactive objects in the results.
---@param sortMode UnityEngine.FindObjectsSortMode Whether and how to sort the returned array. Not sorting the array makes this function run significantly faster.
---@return UnityEngine.Object[]
function Object.FindObjectsByType(type, findObjectsInactive, sortMode)
end

---Do not destroy the target Object when loading a new Scene.
---@param target UnityEngine.Object An Object not destroyed on Scene change.
---@return void
function Object.DontDestroyOnLoad(target)
end

---@param obj UnityEngine.Object
---@param t number
---@return void
function Object.DestroyObject(obj, t)
end

---@param obj UnityEngine.Object
---@return void
function Object.DestroyObject(obj)
end

---@param type System.Type
---@return UnityEngine.Object[]
function Object.FindSceneObjectsOfType(type)
end

---The array of objects and assets found matching the type specified.
---@param type System.Type The type of object or asset to find.
---@return UnityEngine.Object[]
function Object.FindObjectsOfTypeIncludingAssets(type)
end

---@return T[]
function Object.FindObjectsOfType()
end

---@param sortMode UnityEngine.FindObjectsSortMode
---@return T[]
function Object.FindObjectsByType(sortMode)
end

---@param includeInactive boolean
---@return T[]
function Object.FindObjectsOfType(includeInactive)
end

---@param findObjectsInactive UnityEngine.FindObjectsInactive
---@param sortMode UnityEngine.FindObjectsSortMode
---@return T[]
function Object.FindObjectsByType(findObjectsInactive, sortMode)
end

---@return T
function Object.FindObjectOfType()
end

---@param includeInactive boolean
---@return T
function Object.FindObjectOfType(includeInactive)
end

---@return T
function Object.FindFirstObjectByType()
end

---@return T
function Object.FindAnyObjectByType()
end

---@param findObjectsInactive UnityEngine.FindObjectsInactive
---@return T
function Object.FindFirstObjectByType(findObjectsInactive)
end

---@param findObjectsInactive UnityEngine.FindObjectsInactive
---@return T
function Object.FindAnyObjectByType(findObjectsInactive)
end

---The array of objects found matching the type specified.
---@param type System.Type The type of object to find.
---@return UnityEngine.Object[]
function Object.FindObjectsOfTypeAll(type)
end

---Object The first active loaded object that matches the specified type. It returns null if no Object matches the type.
---@param type System.Type The type of object to find.
---@return UnityEngine.Object
function Object.FindObjectOfType(type)
end

---Returns the first active loaded object that matches the specified type. If no object matches the specified type, returns null.
---@param type System.Type The type of object to find.
---@return UnityEngine.Object
function Object.FindFirstObjectByType(type)
end

---Returns an arbitrary active loaded object that matches the specified type. If no object matches the specified type, returns null.
---@param type System.Type The type of object to find.
---@return UnityEngine.Object
function Object.FindAnyObjectByType(type)
end

---Object The first active loaded object that matches the specified type. It returns null if no Object matches the type.
---@param type System.Type The type of object to find.
---@param includeInactive boolean
---@return UnityEngine.Object
function Object.FindObjectOfType(type, includeInactive)
end

---Returns the first active loaded object that matches the specified type. If no object matches the specified type, returns null.
---@param type System.Type The type of object to find.
---@param findObjectsInactive UnityEngine.FindObjectsInactive Whether to include components attached to inactive GameObjects. If you don't specify this parameter, this function doesn't include inactive objects in the results.
---@return UnityEngine.Object
function Object.FindFirstObjectByType(type, findObjectsInactive)
end

---Returns an arbitrary active loaded object that matches the specified type. If no object matches the specified type, returns null.
---@param type System.Type The type of object to find.
---@param findObjectsInactive UnityEngine.FindObjectsInactive Whether to include components attached to inactive GameObjects. If you don't specify this parameter, this function doesn't include inactive objects in the results.
---@return UnityEngine.Object
function Object.FindAnyObjectByType(type, findObjectsInactive)
end

---The name returned by ToString.
---@return string
function Object:ToString()
end

---@param x UnityEngine.Object
---@param y UnityEngine.Object
---@return boolean
function Object.op_Equality(x, y)
end

---@param x UnityEngine.Object
---@param y UnityEngine.Object
---@return boolean
function Object.op_Inequality(x, y)
end


---Representation of 2D vectors and points.
---@class UnityEngine.Vector2: System.ValueType, System.IEquatable<UnityEngine.Vector2>, System.IFormattable
---@overload fun(): UnityEngine.Vector2
---@overload fun(x: number, y: number): UnityEngine.Vector2
local Vector2 = {}
---X component of the vector.
---@type number
Vector2.x = nil

---Y component of the vector.
---@type number
Vector2.y = nil

---@type number
Vector2.kEpsilon = nil

---@type number
Vector2.kEpsilonNormalSqrt = nil

---Returns a normalized vector based on the current vector. The normalized vector has a magnitude of 1 and is in the same direction as the current vector. Returns a zero vector If the current vector is too small to be normalized.
---@type UnityEngine.Vector2
Vector2.normalized = nil

---Returns the length of this vector (Read Only).
---@type number
Vector2.magnitude = nil

---Returns the squared length of this vector (Read Only).
---@type number
Vector2.sqrMagnitude = nil

---Shorthand for writing Vector2(0, 0).
---@type UnityEngine.Vector2
Vector2.zero = nil

---Shorthand for writing Vector2(1, 1).
---@type UnityEngine.Vector2
Vector2.one = nil

---Shorthand for writing Vector2(0, 1).
---@type UnityEngine.Vector2
Vector2.up = nil

---Shorthand for writing Vector2(0, -1).
---@type UnityEngine.Vector2
Vector2.down = nil

---Shorthand for writing Vector2(-1, 0).
---@type UnityEngine.Vector2
Vector2.left = nil

---Shorthand for writing Vector2(1, 0).
---@type UnityEngine.Vector2
Vector2.right = nil

---Shorthand for writing Vector2(float.PositiveInfinity, float.PositiveInfinity).
---@type UnityEngine.Vector2
Vector2.positiveInfinity = nil

---Shorthand for writing Vector2(float.NegativeInfinity, float.NegativeInfinity).
---@type UnityEngine.Vector2
Vector2.negativeInfinity = nil

---Set x and y components of an existing Vector2.
---@param newX number
---@param newY number
---@return void
function Vector2:Set(newX, newY)
end

---Linearly interpolates between vectors a and b by t.
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@param t number
---@return UnityEngine.Vector2
function Vector2.Lerp(a, b, t)
end

---Linearly interpolates between vectors a and b by t.
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@param t number
---@return UnityEngine.Vector2
function Vector2.LerpUnclamped(a, b, t)
end

---Moves a point current towards target.
---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param maxDistanceDelta number
---@return UnityEngine.Vector2
function Vector2.MoveTowards(current, target, maxDistanceDelta)
end

---Multiplies two vectors component-wise.
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.Scale(a, b)
end

---Multiplies every component of this vector by the same component of scale.
---@param scale UnityEngine.Vector2
---@return void
function Vector2:Scale(scale)
end

---Makes this vector have a magnitude of 1.
---@return void
function Vector2:Normalize()
end

---Returns a formatted string for this vector.
---@return string
function Vector2:ToString()
end

---Returns a formatted string for this vector.
---@param format string A numeric format string.
---@return string
function Vector2:ToString(format)
end

---Returns a formatted string for this vector.
---@param format string A numeric format string.
---@param formatProvider System.IFormatProvider An object that specifies culture-specific formatting.
---@return string
function Vector2:ToString(format, formatProvider)
end

---@return integer
function Vector2:GetHashCode()
end

---Returns true if the given vector is exactly equal to this vector.
---@param other any
---@return boolean
function Vector2:Equals(other)
end

---@param other UnityEngine.Vector2
---@return boolean
function Vector2:Equals(other)
end

---Reflects a vector off the surface defined by a normal.
---@param inDirection UnityEngine.Vector2 The direction vector towards the surface.
---@param inNormal UnityEngine.Vector2 The normal vector that defines the surface.
---@return UnityEngine.Vector2
function Vector2.Reflect(inDirection, inNormal)
end

---The perpendicular direction.
---@param inDirection UnityEngine.Vector2 The input direction.
---@return UnityEngine.Vector2
function Vector2.Perpendicular(inDirection)
end

---Dot Product of two vectors.
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return number
function Vector2.Dot(lhs, rhs)
end

---The unsigned angle in degrees between the two vectors.
---@param from UnityEngine.Vector2 The vector from which the angular difference is measured.
---@param to UnityEngine.Vector2 The vector to which the angular difference is measured.
---@return number
function Vector2.Angle(from, to)
end

---The signed angle in degrees between the two vectors.
---@param from UnityEngine.Vector2 The vector from which the angular difference is measured.
---@param to UnityEngine.Vector2 The vector to which the angular difference is measured.
---@return number
function Vector2.SignedAngle(from, to)
end

---Returns the distance between a and b.
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return number
function Vector2.Distance(a, b)
end

---Returns a copy of vector with its magnitude clamped to maxLength.
---@param vector UnityEngine.Vector2
---@param maxLength number
---@return UnityEngine.Vector2
function Vector2.ClampMagnitude(vector, maxLength)
end

---@param a UnityEngine.Vector2
---@return number
function Vector2.SqrMagnitude(a)
end

---@return number
function Vector2:SqrMagnitude()
end

---Returns a vector that is made from the smallest components of two vectors.
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.Min(lhs, rhs)
end

---Returns a vector that is made from the largest components of two vectors.
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.Max(lhs, rhs)
end

---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param currentVelocity UnityEngine.Vector2
---@param smoothTime number
---@param maxSpeed number
---@return UnityEngine.Vector2, UnityEngine.Vector2
function Vector2.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed)
end

---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param currentVelocity UnityEngine.Vector2
---@param smoothTime number
---@return UnityEngine.Vector2, UnityEngine.Vector2
function Vector2.SmoothDamp(current, target, currentVelocity, smoothTime)
end

---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param currentVelocity UnityEngine.Vector2
---@param smoothTime number
---@param maxSpeed number
---@param deltaTime number
---@return UnityEngine.Vector2, UnityEngine.Vector2
function Vector2.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_Addition(a, b)
end

---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_Subtraction(a, b)
end

---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_Multiply(a, b)
end

---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_Division(a, b)
end

---@param a UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_UnaryNegation(a)
end

---@param a UnityEngine.Vector2
---@param d number
---@return UnityEngine.Vector2
function Vector2.op_Multiply(a, d)
end

---@param d number
---@param a UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_Multiply(d, a)
end

---@param a UnityEngine.Vector2
---@param d number
---@return UnityEngine.Vector2
function Vector2.op_Division(a, d)
end

---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return boolean
function Vector2.op_Equality(lhs, rhs)
end

---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return boolean
function Vector2.op_Inequality(lhs, rhs)
end

---@param v UnityEngine.Vector3
---@return UnityEngine.Vector2
function Vector2.op_Implicit(v)
end

---@param v UnityEngine.Vector2
---@return UnityEngine.Vector3
function Vector2.op_Implicit(v)
end


---Representation of 3D vectors and points.
---@class UnityEngine.Vector3: System.ValueType, System.IEquatable<UnityEngine.Vector3>, System.IFormattable
---@overload fun(): UnityEngine.Vector3
---@overload fun(x: number, y: number, z: number): UnityEngine.Vector3
---@overload fun(x: number, y: number): UnityEngine.Vector3
local Vector3 = {}
---@type number
Vector3.kEpsilon = nil

---@type number
Vector3.kEpsilonNormalSqrt = nil

---X component of the vector.
---@type number
Vector3.x = nil

---Y component of the vector.
---@type number
Vector3.y = nil

---Z component of the vector.
---@type number
Vector3.z = nil

---Returns a normalized vector based on the current vector. The normalized vector has a magnitude of 1 and is in the same direction as the current vector. Returns a zero vector If the current vector is too small to be normalized.
---@type UnityEngine.Vector3
Vector3.normalized = nil

---Returns the length of this vector (Read Only).
---@type number
Vector3.magnitude = nil

---Returns the squared length of this vector (Read Only).
---@type number
Vector3.sqrMagnitude = nil

---Shorthand for writing Vector3(0, 0, 0).
---@type UnityEngine.Vector3
Vector3.zero = nil

---Shorthand for writing Vector3(1, 1, 1).
---@type UnityEngine.Vector3
Vector3.one = nil

---Shorthand for writing Vector3(0, 0, 1).
---@type UnityEngine.Vector3
Vector3.forward = nil

---Shorthand for writing Vector3(0, 0, -1).
---@type UnityEngine.Vector3
Vector3.back = nil

---Shorthand for writing Vector3(0, 1, 0).
---@type UnityEngine.Vector3
Vector3.up = nil

---Shorthand for writing Vector3(0, -1, 0).
---@type UnityEngine.Vector3
Vector3.down = nil

---Shorthand for writing Vector3(-1, 0, 0).
---@type UnityEngine.Vector3
Vector3.left = nil

---Shorthand for writing Vector3(1, 0, 0).
---@type UnityEngine.Vector3
Vector3.right = nil

---Shorthand for writing Vector3(float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity).
---@type UnityEngine.Vector3
Vector3.positiveInfinity = nil

---Shorthand for writing Vector3(float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity).
---@type UnityEngine.Vector3
Vector3.negativeInfinity = nil

---@type UnityEngine.Vector3
Vector3.fwd = nil

---Spherically interpolates between two vectors.
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function Vector3.Slerp(a, b, t)
end

---Spherically interpolates between two vectors.
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function Vector3.SlerpUnclamped(a, b, t)
end

---@param normal UnityEngine.Vector3
---@param tangent UnityEngine.Vector3
---@return void, UnityEngine.Vector3, UnityEngine.Vector3
function Vector3.OrthoNormalize(normal, tangent)
end

---@param normal UnityEngine.Vector3
---@param tangent UnityEngine.Vector3
---@param binormal UnityEngine.Vector3
---@return void, UnityEngine.Vector3, UnityEngine.Vector3, UnityEngine.Vector3
function Vector3.OrthoNormalize(normal, tangent, binormal)
end

---The location that RotateTowards generates.
---@param current UnityEngine.Vector3 The vector being managed.
---@param target UnityEngine.Vector3 The vector.
---@param maxRadiansDelta number The maximum angle in radians allowed for this rotation.
---@param maxMagnitudeDelta number The maximum allowed change in vector magnitude for this rotation.
---@return UnityEngine.Vector3
function Vector3.RotateTowards(current, target, maxRadiansDelta, maxMagnitudeDelta)
end

---Interpolated value, equals to a + (b - a) * t.
---@param a UnityEngine.Vector3 Start value, returned when t = 0.
---@param b UnityEngine.Vector3 End value, returned when t = 1.
---@param t number Value used to interpolate between a and b.
---@return UnityEngine.Vector3
function Vector3.Lerp(a, b, t)
end

---Linearly interpolates between two vectors.
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function Vector3.LerpUnclamped(a, b, t)
end

---The new position.
---@param current UnityEngine.Vector3 The position to move from.
---@param target UnityEngine.Vector3 The position to move towards.
---@param maxDistanceDelta number Distance to move current per call.
---@return UnityEngine.Vector3
function Vector3.MoveTowards(current, target, maxDistanceDelta)
end

---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param currentVelocity UnityEngine.Vector3
---@param smoothTime number
---@param maxSpeed number
---@return UnityEngine.Vector3, UnityEngine.Vector3
function Vector3.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed)
end

---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param currentVelocity UnityEngine.Vector3
---@param smoothTime number
---@return UnityEngine.Vector3, UnityEngine.Vector3
function Vector3.SmoothDamp(current, target, currentVelocity, smoothTime)
end

---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param currentVelocity UnityEngine.Vector3
---@param smoothTime number
---@param maxSpeed number
---@param deltaTime number
---@return UnityEngine.Vector3, UnityEngine.Vector3
function Vector3.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

---Set x, y and z components of an existing Vector3.
---@param newX number
---@param newY number
---@param newZ number
---@return void
function Vector3:Set(newX, newY, newZ)
end

---Multiplies two vectors component-wise.
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Scale(a, b)
end

---Multiplies every component of this vector by the same component of scale.
---@param scale UnityEngine.Vector3
---@return void
function Vector3:Scale(scale)
end

---Cross Product of two vectors.
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Cross(lhs, rhs)
end

---@return integer
function Vector3:GetHashCode()
end

---Returns true if the given vector is exactly equal to this vector.
---@param other any
---@return boolean
function Vector3:Equals(other)
end

---@param other UnityEngine.Vector3
---@return boolean
function Vector3:Equals(other)
end

---Reflects a vector off the plane defined by a normal.
---@param inDirection UnityEngine.Vector3 The direction vector towards the plane.
---@param inNormal UnityEngine.Vector3 The normal vector that defines the plane.
---@return UnityEngine.Vector3
function Vector3.Reflect(inDirection, inNormal)
end

---A new vector with the same direction as the original vector but with a magnitude of 1.0.
---@param value UnityEngine.Vector3 The vector to be normalized.
---@return UnityEngine.Vector3
function Vector3.Normalize(value)
end

---Makes this vector have a magnitude of 1.
---@return void
function Vector3:Normalize()
end

---Dot Product of two vectors.
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return number
function Vector3.Dot(lhs, rhs)
end

---Projects a vector onto another vector.
---@param vector UnityEngine.Vector3
---@param onNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Project(vector, onNormal)
end

---The orthogonal projection of vector on the plane.
---@param vector UnityEngine.Vector3 The vector to project on the plane.
---@param planeNormal UnityEngine.Vector3 The normal which defines the plane to project on.
---@return UnityEngine.Vector3
function Vector3.ProjectOnPlane(vector, planeNormal)
end

---The angle in degrees between the two vectors.
---@param from UnityEngine.Vector3 The vector from which the angular difference is measured.
---@param to UnityEngine.Vector3 The vector to which the angular difference is measured.
---@return number
function Vector3.Angle(from, to)
end

---Returns the signed angle between from and to in degrees.
---@param from UnityEngine.Vector3 The vector from which the angular difference is measured.
---@param to UnityEngine.Vector3 The vector to which the angular difference is measured.
---@param axis UnityEngine.Vector3 A vector around which the other vectors are rotated.
---@return number
function Vector3.SignedAngle(from, to, axis)
end

---Returns the distance between a and b.
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return number
function Vector3.Distance(a, b)
end

---Returns a copy of vector with its magnitude clamped to maxLength.
---@param vector UnityEngine.Vector3
---@param maxLength number
---@return UnityEngine.Vector3
function Vector3.ClampMagnitude(vector, maxLength)
end

---@param vector UnityEngine.Vector3
---@return number
function Vector3.Magnitude(vector)
end

---@param vector UnityEngine.Vector3
---@return number
function Vector3.SqrMagnitude(vector)
end

---Returns a vector that is made from the smallest components of two vectors.
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Min(lhs, rhs)
end

---Returns a vector that is made from the largest components of two vectors.
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Max(lhs, rhs)
end

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.op_Addition(a, b)
end

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.op_Subtraction(a, b)
end

---@param a UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.op_UnaryNegation(a)
end

---@param a UnityEngine.Vector3
---@param d number
---@return UnityEngine.Vector3
function Vector3.op_Multiply(a, d)
end

---@param d number
---@param a UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.op_Multiply(d, a)
end

---@param a UnityEngine.Vector3
---@param d number
---@return UnityEngine.Vector3
function Vector3.op_Division(a, d)
end

---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return boolean
function Vector3.op_Equality(lhs, rhs)
end

---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return boolean
function Vector3.op_Inequality(lhs, rhs)
end

---Returns a formatted string for this vector.
---@return string
function Vector3:ToString()
end

---Returns a formatted string for this vector.
---@param format string A numeric format string.
---@return string
function Vector3:ToString(format)
end

---Returns a formatted string for this vector.
---@param format string A numeric format string.
---@param formatProvider System.IFormatProvider An object that specifies culture-specific formatting.
---@return string
function Vector3:ToString(format, formatProvider)
end

---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@return number
function Vector3.AngleBetween(from, to)
end

---@param excludeThis UnityEngine.Vector3
---@param fromThat UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Exclude(excludeThis, fromThat)
end


---Representation of four-dimensional vectors.
---@class UnityEngine.Vector4: System.ValueType, System.IEquatable<UnityEngine.Vector4>, System.IFormattable
---@overload fun(): UnityEngine.Vector4
---@overload fun(x: number, y: number, z: number, w: number): UnityEngine.Vector4
---@overload fun(x: number, y: number, z: number): UnityEngine.Vector4
---@overload fun(x: number, y: number): UnityEngine.Vector4
local Vector4 = {}
---@type number
Vector4.kEpsilon = nil

---X component of the vector.
---@type number
Vector4.x = nil

---Y component of the vector.
---@type number
Vector4.y = nil

---Z component of the vector.
---@type number
Vector4.z = nil

---W component of the vector.
---@type number
Vector4.w = nil

---Returns a normalized vector based on the current vector. The normalized vector has a magnitude of 1 and is in the same direction as the current vector. Returns a zero vector If the current vector is too small to be normalized.
---@type UnityEngine.Vector4
Vector4.normalized = nil

---Returns the length of this vector (Read Only).
---@type number
Vector4.magnitude = nil

---Returns the squared length of this vector (Read Only).
---@type number
Vector4.sqrMagnitude = nil

---Shorthand for writing Vector4(0,0,0,0).
---@type UnityEngine.Vector4
Vector4.zero = nil

---Shorthand for writing Vector4(1,1,1,1).
---@type UnityEngine.Vector4
Vector4.one = nil

---Shorthand for writing Vector4(float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity).
---@type UnityEngine.Vector4
Vector4.positiveInfinity = nil

---Shorthand for writing Vector4(float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity).
---@type UnityEngine.Vector4
Vector4.negativeInfinity = nil

---Set x, y, z and w components of an existing Vector4.
---@param newX number
---@param newY number
---@param newZ number
---@param newW number
---@return void
function Vector4:Set(newX, newY, newZ, newW)
end

---Linearly interpolates between two vectors.
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@param t number
---@return UnityEngine.Vector4
function Vector4.Lerp(a, b, t)
end

---Linearly interpolates between two vectors.
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@param t number
---@return UnityEngine.Vector4
function Vector4.LerpUnclamped(a, b, t)
end

---Moves a point current towards target.
---@param current UnityEngine.Vector4
---@param target UnityEngine.Vector4
---@param maxDistanceDelta number
---@return UnityEngine.Vector4
function Vector4.MoveTowards(current, target, maxDistanceDelta)
end

---Multiplies two vectors component-wise.
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.Scale(a, b)
end

---Multiplies every component of this vector by the same component of scale.
---@param scale UnityEngine.Vector4
---@return void
function Vector4:Scale(scale)
end

---@return integer
function Vector4:GetHashCode()
end

---Returns true if the given vector is exactly equal to this vector.
---@param other any
---@return boolean
function Vector4:Equals(other)
end

---@param other UnityEngine.Vector4
---@return boolean
function Vector4:Equals(other)
end

---A new vector with the same direction as the original vector but with a magnitude of 1.0.
---@param a UnityEngine.Vector4 The vector to be normalized.
---@return UnityEngine.Vector4
function Vector4.Normalize(a)
end

---Makes this vector have a magnitude of 1.
---@return void
function Vector4:Normalize()
end

---Dot Product of two vectors.
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return number
function Vector4.Dot(a, b)
end

---Projects a vector onto another vector.
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.Project(a, b)
end

---Returns the distance between a and b.
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return number
function Vector4.Distance(a, b)
end

---@param a UnityEngine.Vector4
---@return number
function Vector4.Magnitude(a)
end

---Returns a vector that is made from the smallest components of two vectors.
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.Min(lhs, rhs)
end

---Returns a vector that is made from the largest components of two vectors.
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.Max(lhs, rhs)
end

---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.op_Addition(a, b)
end

---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.op_Subtraction(a, b)
end

---@param a UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.op_UnaryNegation(a)
end

---@param a UnityEngine.Vector4
---@param d number
---@return UnityEngine.Vector4
function Vector4.op_Multiply(a, d)
end

---@param d number
---@param a UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.op_Multiply(d, a)
end

---@param a UnityEngine.Vector4
---@param d number
---@return UnityEngine.Vector4
function Vector4.op_Division(a, d)
end

---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return boolean
function Vector4.op_Equality(lhs, rhs)
end

---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return boolean
function Vector4.op_Inequality(lhs, rhs)
end

---@param v UnityEngine.Vector3
---@return UnityEngine.Vector4
function Vector4.op_Implicit(v)
end

---@param v UnityEngine.Vector4
---@return UnityEngine.Vector3
function Vector4.op_Implicit(v)
end

---@param v UnityEngine.Vector2
---@return UnityEngine.Vector4
function Vector4.op_Implicit(v)
end

---@param v UnityEngine.Vector4
---@return UnityEngine.Vector2
function Vector4.op_Implicit(v)
end

---Returns a formatted string for this vector.
---@return string
function Vector4:ToString()
end

---Returns a formatted string for this vector.
---@param format string A numeric format string.
---@return string
function Vector4:ToString(format)
end

---Returns a formatted string for this vector.
---@param format string A numeric format string.
---@param formatProvider System.IFormatProvider An object that specifies culture-specific formatting.
---@return string
function Vector4:ToString(format, formatProvider)
end

---@param a UnityEngine.Vector4
---@return number
function Vector4.SqrMagnitude(a)
end

---@return number
function Vector4:SqrMagnitude()
end


---Quaternions are used to represent rotations.
---@class UnityEngine.Quaternion: System.ValueType, System.IEquatable<UnityEngine.Quaternion>, System.IFormattable
---@overload fun(): UnityEngine.Quaternion
---@overload fun(x: number, y: number, z: number, w: number): UnityEngine.Quaternion
local Quaternion = {}
---X component of the Quaternion. Don't modify this directly unless you know quaternions inside out.
---@type number
Quaternion.x = nil

---Y component of the Quaternion. Don't modify this directly unless you know quaternions inside out.
---@type number
Quaternion.y = nil

---Z component of the Quaternion. Don't modify this directly unless you know quaternions inside out.
---@type number
Quaternion.z = nil

---W component of the Quaternion. Do not directly modify quaternions.
---@type number
Quaternion.w = nil

---@type number
Quaternion.kEpsilon = nil

---The identity rotation (Read Only).
---@type UnityEngine.Quaternion
Quaternion.identity = nil

---Returns or sets the euler angle representation of the rotation in degrees.
---@type UnityEngine.Vector3
Quaternion.eulerAngles = nil

---Returns this quaternion with a magnitude of 1 (Read Only).
---@type UnityEngine.Quaternion
Quaternion.normalized = nil

---A unit quaternion which rotates from fromDirection to toDirection.
---@param fromDirection UnityEngine.Vector3 A non-unit or unit vector representing a direction axis to rotate.
---@param toDirection UnityEngine.Vector3 A non-unit or unit vector representing the target direction axis.
---@return UnityEngine.Quaternion
function Quaternion.FromToRotation(fromDirection, toDirection)
end

---Returns the Inverse of rotation.
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function Quaternion.Inverse(rotation)
end

---A unit quaternion spherically interpolated between quaternions a and b.
---@param a UnityEngine.Quaternion Start unit quaternion value, returned when t = 0.
---@param b UnityEngine.Quaternion End unit quaternion value, returned when t = 1.
---@param t number Interpolation ratio. Value is clamped to the range [0, 1].
---@return UnityEngine.Quaternion
function Quaternion.Slerp(a, b, t)
end

---A unit quaternion spherically interpolated between unit quaternions a and b.
---@param a UnityEngine.Quaternion Start unit quaternion value, returned when t = 0.
---@param b UnityEngine.Quaternion End unit quaternion value, returned when t = 1.
---@param t number Interpolation ratio. Value is unclamped.
---@return UnityEngine.Quaternion
function Quaternion.SlerpUnclamped(a, b, t)
end

---A unit quaternion interpolated between quaternions a and b.
---@param a UnityEngine.Quaternion Start unit quaternion value, returned when t = 0.
---@param b UnityEngine.Quaternion End unit quaternion value, returned when t = 1.
---@param t number Interpolation ratio. The value is clamped to the range [0, 1].
---@return UnityEngine.Quaternion
function Quaternion.Lerp(a, b, t)
end

---Interpolates between a and b by t and normalizes the result afterwards. The parameter t is not clamped.
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t number
---@return UnityEngine.Quaternion
function Quaternion.LerpUnclamped(a, b, t)
end

---Creates a rotation which rotates angle degrees around axis.
---@param angle number
---@param axis UnityEngine.Vector3
---@return UnityEngine.Quaternion
function Quaternion.AngleAxis(angle, axis)
end

---Creates a rotation with the specified forward and upwards directions.
---@param forward UnityEngine.Vector3 The direction to look in.
---@param upwards UnityEngine.Vector3 The vector that defines in which direction up is.
---@return UnityEngine.Quaternion
function Quaternion.LookRotation(forward, upwards)
end

---Creates a rotation with the specified forward and upwards directions.
---@param forward UnityEngine.Vector3 The direction to look in.
---@return UnityEngine.Quaternion
function Quaternion.LookRotation(forward)
end

---Set x, y, z and w components of an existing Quaternion.
---@param newX number
---@param newY number
---@param newZ number
---@param newW number
---@return void
function Quaternion:Set(newX, newY, newZ, newW)
end

---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function Quaternion.op_Multiply(lhs, rhs)
end

---@param rotation UnityEngine.Quaternion
---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function Quaternion.op_Multiply(rotation, point)
end

---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return boolean
function Quaternion.op_Equality(lhs, rhs)
end

---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return boolean
function Quaternion.op_Inequality(lhs, rhs)
end

---The dot product between two rotations.
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@return number
function Quaternion.Dot(a, b)
end

---Creates a rotation with the specified forward and upwards directions.
---@param view UnityEngine.Vector3 The direction to look in.
---@return void
function Quaternion:SetLookRotation(view)
end

---Creates a rotation with the specified forward and upwards directions.
---@param view UnityEngine.Vector3 The direction to look in.
---@param up UnityEngine.Vector3 The vector that defines in which direction up is.
---@return void
function Quaternion:SetLookRotation(view, up)
end

---Returns the angle in degrees between two rotations a and b. The resulting angle ranges from 0 to 180.
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@return number
function Quaternion.Angle(a, b)
end

---Returns a rotation that rotates z degrees around the z axis, x degrees around the x axis, and y degrees around the y axis; applied in that order.
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Quaternion
function Quaternion.Euler(x, y, z)
end

---Returns a rotation that rotates z degrees around the z axis, x degrees around the x axis, and y degrees around the y axis.
---@param euler UnityEngine.Vector3
---@return UnityEngine.Quaternion
function Quaternion.Euler(euler)
end

---@return void, number, UnityEngine.Vector3
function Quaternion:ToAngleAxis(angle, axis)
end

---Creates a rotation which rotates from fromDirection to toDirection.
---@param fromDirection UnityEngine.Vector3
---@param toDirection UnityEngine.Vector3
---@return void
function Quaternion:SetFromToRotation(fromDirection, toDirection)
end

---A unit quaternion rotated towards to by an angular step of maxDegreesDelta.
---@param from UnityEngine.Quaternion The unit quaternion to be aligned with to.
---@param to UnityEngine.Quaternion The target unit quaternion.
---@param maxDegreesDelta number The maximum angle in degrees allowed for this rotation.
---@return UnityEngine.Quaternion
function Quaternion.RotateTowards(from, to, maxDegreesDelta)
end

---Converts this quaternion to a quaternion with the same orientation but with a magnitude of 1.0.
---@param q UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function Quaternion.Normalize(q)
end

---@return void
function Quaternion:Normalize()
end

---@return integer
function Quaternion:GetHashCode()
end

---@param other any
---@return boolean
function Quaternion:Equals(other)
end

---@param other UnityEngine.Quaternion
---@return boolean
function Quaternion:Equals(other)
end

---Returns a formatted string for this quaternion.
---@return string
function Quaternion:ToString()
end

---Returns a formatted string for this quaternion.
---@param format string A numeric format string.
---@return string
function Quaternion:ToString(format)
end

---Returns a formatted string for this quaternion.
---@param format string A numeric format string.
---@param formatProvider System.IFormatProvider An object that specifies culture-specific formatting.
---@return string
function Quaternion:ToString(format, formatProvider)
end

---@param x number
---@param y number
---@param z number
---@return UnityEngine.Quaternion
function Quaternion.EulerRotation(x, y, z)
end

---@param euler UnityEngine.Vector3
---@return UnityEngine.Quaternion
function Quaternion.EulerRotation(euler)
end

---@param x number
---@param y number
---@param z number
---@return void
function Quaternion:SetEulerRotation(x, y, z)
end

---@param euler UnityEngine.Vector3
---@return void
function Quaternion:SetEulerRotation(euler)
end

---@return UnityEngine.Vector3
function Quaternion:ToEuler()
end

---@param x number
---@param y number
---@param z number
---@return UnityEngine.Quaternion
function Quaternion.EulerAngles(x, y, z)
end

---@param euler UnityEngine.Vector3
---@return UnityEngine.Quaternion
function Quaternion.EulerAngles(euler)
end

---@return void, UnityEngine.Vector3, number
function Quaternion:ToAxisAngle(axis, angle)
end

---@param x number
---@param y number
---@param z number
---@return void
function Quaternion:SetEulerAngles(x, y, z)
end

---@param euler UnityEngine.Vector3
---@return void
function Quaternion:SetEulerAngles(euler)
end

---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Vector3
function Quaternion.ToEulerAngles(rotation)
end

---@return UnityEngine.Vector3
function Quaternion:ToEulerAngles()
end

---@param axis UnityEngine.Vector3
---@param angle number
---@return void
function Quaternion:SetAxisAngle(axis, angle)
end

---@param axis UnityEngine.Vector3
---@param angle number
---@return UnityEngine.Quaternion
function Quaternion.AxisAngle(axis, angle)
end


---Representation of RGBA colors.
---@class UnityEngine.Color: System.ValueType, System.IEquatable<UnityEngine.Color>, System.IFormattable
---@overload fun(): UnityEngine.Color
---@overload fun(r: number, g: number, b: number, a: number): UnityEngine.Color
---@overload fun(r: number, g: number, b: number): UnityEngine.Color
local Color = {}
---Red component of the color.
---@type number
Color.r = nil

---Green component of the color.
---@type number
Color.g = nil

---Blue component of the color.
---@type number
Color.b = nil

---Alpha component of the color (0 is transparent, 1 is opaque).
---@type number
Color.a = nil

---Solid red. RGBA is (1, 0, 0, 1).
---@type UnityEngine.Color
Color.red = nil

---Solid green. RGBA is (0, 1, 0, 1).
---@type UnityEngine.Color
Color.green = nil

---Solid blue. RGBA is (0, 0, 1, 1).
---@type UnityEngine.Color
Color.blue = nil

---Solid white. RGBA is (1, 1, 1, 1).
---@type UnityEngine.Color
Color.white = nil

---Solid black. RGBA is (0, 0, 0, 1).
---@type UnityEngine.Color
Color.black = nil

---Yellow. RGBA is (1, 0.92, 0.016, 1), but the color is nice to look at!
---@type UnityEngine.Color
Color.yellow = nil

---Cyan. RGBA is (0, 1, 1, 1).
---@type UnityEngine.Color
Color.cyan = nil

---Magenta. RGBA is (1, 0, 1, 1).
---@type UnityEngine.Color
Color.magenta = nil

---Gray. RGBA is (0.5, 0.5, 0.5, 1).
---@type UnityEngine.Color
Color.gray = nil

---English spelling for gray. RGBA is the same (0.5, 0.5, 0.5, 1).
---@type UnityEngine.Color
Color.grey = nil

---Completely transparent. RGBA is (0, 0, 0, 0).
---@type UnityEngine.Color
Color.clear = nil

---The grayscale value of the color. (Read Only)
---@type number
Color.grayscale = nil

---A linear value of an sRGB color.
---@type UnityEngine.Color
Color.linear = nil

---A version of the color that has had the gamma curve applied.
---@type UnityEngine.Color
Color.gamma = nil

---Returns the maximum color component value: Max(r,g,b).
---@type number
Color.maxColorComponent = nil

---Returns a formatted string of this color.
---@return string
function Color:ToString()
end

---Returns a formatted string of this color.
---@param format string A numeric format string.
---@return string
function Color:ToString(format)
end

---Returns a formatted string of this color.
---@param format string A numeric format string.
---@param formatProvider System.IFormatProvider An object that specifies culture-specific formatting.
---@return string
function Color:ToString(format, formatProvider)
end

---@return integer
function Color:GetHashCode()
end

---@param other any
---@return boolean
function Color:Equals(other)
end

---@param other UnityEngine.Color
---@return boolean
function Color:Equals(other)
end

---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function Color.op_Addition(a, b)
end

---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function Color.op_Subtraction(a, b)
end

---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function Color.op_Multiply(a, b)
end

---@param a UnityEngine.Color
---@param b number
---@return UnityEngine.Color
function Color.op_Multiply(a, b)
end

---@param b number
---@param a UnityEngine.Color
---@return UnityEngine.Color
function Color.op_Multiply(b, a)
end

---@param a UnityEngine.Color
---@param b number
---@return UnityEngine.Color
function Color.op_Division(a, b)
end

---@param lhs UnityEngine.Color
---@param rhs UnityEngine.Color
---@return boolean
function Color.op_Equality(lhs, rhs)
end

---@param lhs UnityEngine.Color
---@param rhs UnityEngine.Color
---@return boolean
function Color.op_Inequality(lhs, rhs)
end

---Linearly interpolates between colors a and b by t.
---@param a UnityEngine.Color Color a.
---@param b UnityEngine.Color Color b.
---@param t number Float for combining a and b.
---@return UnityEngine.Color
function Color.Lerp(a, b, t)
end

---Linearly interpolates between colors a and b by t.
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@param t number
---@return UnityEngine.Color
function Color.LerpUnclamped(a, b, t)
end

---@param c UnityEngine.Color
---@return UnityEngine.Vector4
function Color.op_Implicit(c)
end

---@param v UnityEngine.Vector4
---@return UnityEngine.Color
function Color.op_Implicit(v)
end

---@param rgbColor UnityEngine.Color
---@return void, number, number, number
function Color.RGBToHSV(rgbColor, H, S, V)
end

---An opaque colour with HSV matching the input.
---@param H number Hue [0..1].
---@param S number Saturation [0..1].
---@param V number Brightness value [0..1].
---@return UnityEngine.Color
function Color.HSVToRGB(H, S, V)
end

---An opaque colour with HSV matching the input.
---@param H number Hue [0..1].
---@param S number Saturation [0..1].
---@param V number Brightness value [0..1].
---@param hdr boolean Output HDR colours. If true, the returned colour will not be clamped to [0..1].
---@return UnityEngine.Color
function Color.HSVToRGB(H, S, V, hdr)
end


---Representation of rays.
---@class UnityEngine.Ray: System.ValueType, System.IFormattable
---@overload fun(): UnityEngine.Ray
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3): UnityEngine.Ray
local Ray = {}
---The origin point of the ray.
---@type UnityEngine.Vector3
Ray.origin = nil

---The direction of the ray.
---@type UnityEngine.Vector3
Ray.direction = nil

---Returns a point at distance units along the ray.
---@param distance number
---@return UnityEngine.Vector3
function Ray:GetPoint(distance)
end

---Returns a formatted string for this ray.
---@return string
function Ray:ToString()
end

---Returns a formatted string for this ray.
---@param format string A numeric format string.
---@return string
function Ray:ToString(format)
end

---Returns a formatted string for this ray.
---@param format string A numeric format string.
---@param formatProvider System.IFormatProvider An object that specifies culture-specific formatting.
---@return string
function Ray:ToString(format, formatProvider)
end


---Represents an axis aligned bounding box.
---@class UnityEngine.Bounds: System.ValueType, System.IEquatable<UnityEngine.Bounds>, System.IFormattable
---@overload fun(): UnityEngine.Bounds
---@overload fun(center: UnityEngine.Vector3, size: UnityEngine.Vector3): UnityEngine.Bounds
local Bounds = {}
---The center of the bounding box.
---@type UnityEngine.Vector3
Bounds.center = nil

---The total size of the box. This is always twice as large as the extents.
---@type UnityEngine.Vector3
Bounds.size = nil

---The extents of the Bounding Box. This is always half of the size of the Bounds.
---@type UnityEngine.Vector3
Bounds.extents = nil

---The minimal point of the box. This is always equal to center-extents.
---@type UnityEngine.Vector3
Bounds.min = nil

---The maximal point of the box. This is always equal to center+extents.
---@type UnityEngine.Vector3
Bounds.max = nil

---@return integer
function Bounds:GetHashCode()
end

---@param other any
---@return boolean
function Bounds:Equals(other)
end

---@param other UnityEngine.Bounds
---@return boolean
function Bounds:Equals(other)
end

---@param lhs UnityEngine.Bounds
---@param rhs UnityEngine.Bounds
---@return boolean
function Bounds.op_Equality(lhs, rhs)
end

---@param lhs UnityEngine.Bounds
---@param rhs UnityEngine.Bounds
---@return boolean
function Bounds.op_Inequality(lhs, rhs)
end

---Sets the bounds to the min and max value of the box.
---@param min UnityEngine.Vector3
---@param max UnityEngine.Vector3
---@return void
function Bounds:SetMinMax(min, max)
end

---Grows the Bounds to include the point.
---@param point UnityEngine.Vector3
---@return void
function Bounds:Encapsulate(point)
end

---Grow the bounds to encapsulate the bounds.
---@param bounds UnityEngine.Bounds
---@return void
function Bounds:Encapsulate(bounds)
end

---Expand the bounds by increasing its size by amount along each side.
---@param amount number
---@return void
function Bounds:Expand(amount)
end

---Expand the bounds by increasing its size by amount along each side.
---@param amount UnityEngine.Vector3
---@return void
function Bounds:Expand(amount)
end

---Does another bounding box intersect with this bounding box?
---@param bounds UnityEngine.Bounds
---@return boolean
function Bounds:Intersects(bounds)
end

---Does ray intersect this bounding box?
---@param ray UnityEngine.Ray
---@return boolean
function Bounds:IntersectRay(ray)
end

---@param ray UnityEngine.Ray
---@return boolean, number
function Bounds:IntersectRay(ray, distance)
end

---Returns a formatted string for the bounds.
---@return string
function Bounds:ToString()
end

---Returns a formatted string for the bounds.
---@param format string A numeric format string.
---@return string
function Bounds:ToString(format)
end

---Returns a formatted string for the bounds.
---@param format string A numeric format string.
---@param formatProvider System.IFormatProvider An object that specifies culture-specific formatting.
---@return string
function Bounds:ToString(format, formatProvider)
end

---Is point contained in the bounding box?
---@param point UnityEngine.Vector3
---@return boolean
function Bounds:Contains(point)
end

---The smallest squared distance between the point and this bounding box.
---@param point UnityEngine.Vector3
---@return number
function Bounds:SqrDistance(point)
end

---The point on the bounding box or inside the bounding box.
---@param point UnityEngine.Vector3 Arbitrary point.
---@return UnityEngine.Vector3
function Bounds:ClosestPoint(point)
end


---A ray in 2D space.
---@class UnityEngine.Ray2D: System.ValueType, System.IFormattable
---@overload fun(): UnityEngine.Ray2D
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2): UnityEngine.Ray2D
local Ray2D = {}
---The starting point of the ray in world space.
---@type UnityEngine.Vector2
Ray2D.origin = nil

---The direction of the ray in world space.
---@type UnityEngine.Vector2
Ray2D.direction = nil

---Get a point that lies a given distance along a ray.
---@param distance number Distance of the desired point along the path of the ray.
---@return UnityEngine.Vector2
function Ray2D:GetPoint(distance)
end

---Returns a formatted string for this 2D ray.
---@return string
function Ray2D:ToString()
end

---Returns a formatted string for this 2D ray.
---@param format string A numeric format string.
---@return string
function Ray2D:ToString(format)
end

---Returns a formatted string for this 2D ray.
---@param format string A numeric format string.
---@param formatProvider System.IFormatProvider An object that specifies culture-specific formatting.
---@return string
function Ray2D:ToString(format, formatProvider)
end


---Provides an interface to get time information from Unity.
---@class UnityEngine.Time: object
---@overload fun(): UnityEngine.Time
local Time = {}
---The time at the beginning of the current frame in seconds since the start of the application (Read Only).
---@type number
Time.time = nil

---The double precision time at the beginning of this frame (Read Only). This is the time in seconds since the start of the game.
---@type number
Time.timeAsDouble = nil

---The time in seconds since the last non-additive scene finished loading (Read Only).
---@type number
Time.timeSinceLevelLoad = nil

---The double precision time in seconds since the last non-additive scene finished loading (Read Only).
---@type number
Time.timeSinceLevelLoadAsDouble = nil

---The interval in seconds from the last frame to the current one (Read Only).
---@type number
Time.deltaTime = nil

---The time at which the current MonoBehaviour.FixedUpdate started in seconds since the start of the game (Read Only).
---@type number
Time.fixedTime = nil

---The double precision time since the last MonoBehaviour.FixedUpdate started (Read Only). This is the time in seconds since the start of the game.
---@type number
Time.fixedTimeAsDouble = nil

---The timeScale-independent time for this frame (Read Only). This is the time in seconds since the start of the game.
---@type number
Time.unscaledTime = nil

---The double precision timeScale-independent time for this frame (Read Only). This is the time in seconds since the start of the game.
---@type number
Time.unscaledTimeAsDouble = nil

---The timeScale-independent time at the beginning of the last MonoBehaviour.FixedUpdate phase (Read Only). This is the time in seconds since the start of the game.
---@type number
Time.fixedUnscaledTime = nil

---The double precision timeScale-independent time at the beginning of the last MonoBehaviour.FixedUpdate (Read Only). This is the time in seconds since the start of the game.
---@type number
Time.fixedUnscaledTimeAsDouble = nil

---The timeScale-independent interval in seconds from the last frame to the current one (Read Only).
---@type number
Time.unscaledDeltaTime = nil

---The interval in seconds of timeScale-independent ("real") time at which physics and other fixed frame rate updates (like MonoBehaviour's MonoBehaviour.FixedUpdate) are performed.(Read Only).
---@type number
Time.fixedUnscaledDeltaTime = nil

---The interval in seconds of in-game time at which physics and other fixed frame rate updates (like MonoBehaviour's MonoBehaviour.FixedUpdate) are performed.
---@type number
Time.fixedDeltaTime = nil

---The maximum value of Time.deltaTime in any given frame. This is a time in seconds that limits the increase of Time.time between two frames.
---@type number
Time.maximumDeltaTime = nil

---A smoothed out Time.deltaTime (Read Only).
---@type number
Time.smoothDeltaTime = nil

---The maximum time a frame can spend on particle updates. If the frame takes longer than this, then updates are split into multiple smaller updates.
---@type number
Time.maximumParticleDeltaTime = nil

---The scale at which time passes.
---@type number
Time.timeScale = nil

---The total number of frames since the start of the game (Read Only).
---@type integer
Time.frameCount = nil

---@type integer
Time.renderedFrameCount = nil

---The real time in seconds since the game started (Read Only).
---@type number
Time.realtimeSinceStartup = nil

---The real time in seconds since the game started (Read Only). Double precision version of Time.realtimeSinceStartup.
---@type number
Time.realtimeSinceStartupAsDouble = nil

---Slows your application’s playback time to allow Unity to save screenshots in between frames.
---@type number
Time.captureDeltaTime = nil

---The reciprocal of Time.captureDeltaTime.
---@type integer
Time.captureFramerate = nil

---Returns true if called inside a fixed time step callback (like MonoBehaviour's MonoBehaviour.FixedUpdate), otherwise returns false (Read Only).
---@type boolean
Time.inFixedTimeStep = nil


---Base class for all entities in Unity Scenes.
---@class UnityEngine.GameObject: UnityEngine.Object
---@overload fun(name: string): UnityEngine.GameObject
---@overload fun(): UnityEngine.GameObject
---@overload fun(name: string, components: System.Type[]): UnityEngine.GameObject
local GameObject = {}
---The Transform attached to this GameObject.
---@type UnityEngine.Transform
GameObject.transform = nil

---The layer the GameObject is in.
---@type integer
GameObject.layer = nil

---@type boolean
GameObject.active = nil

---The local active state of this GameObject. (Read Only)
---@type boolean
GameObject.activeSelf = nil

---Defines whether the GameObject is active in the Scene.
---@type boolean
GameObject.activeInHierarchy = nil

---Gets and sets the GameObject's StaticEditorFlags.
---@type boolean
GameObject.isStatic = nil

---The tag of this GameObject.
---@type string
GameObject.tag = nil

---Scene that the GameObject is part of.
---@type UnityEngine.SceneManagement.Scene
GameObject.scene = nil

---Scene culling mask Unity uses to determine which scene to render the GameObject in.
---@type integer
GameObject.sceneCullingMask = nil

---@type UnityEngine.GameObject
GameObject.gameObject = nil

---The Rigidbody attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.rigidbody = nil

---The Rigidbody2D component attached to this GameObject. (Read Only)
---@type UnityEngine.Component
GameObject.rigidbody2D = nil

---The Camera attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.camera = nil

---The Light attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.light = nil

---The Animation attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.animation = nil

---The ConstantForce attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.constantForce = nil

---The Renderer attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.renderer = nil

---The AudioSource attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.audio = nil

---The NetworkView attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.networkView = nil

---The Collider attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.collider = nil

---The Collider2D component attached to this object.
---@type UnityEngine.Component
GameObject.collider2D = nil

---The HingeJoint attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.hingeJoint = nil

---The ParticleSystem attached to this GameObject (Read Only). (Null if there is none attached).
---@type UnityEngine.Component
GameObject.particleSystem = nil

---Creates a GameObject with a primitive mesh renderer and appropriate collider.
---@param type UnityEngine.PrimitiveType The type of primitive object to create.
---@return UnityEngine.GameObject
function GameObject.CreatePrimitive(type)
end

---@return T
function GameObject:GetComponent()
end

---A Component of the matching type, otherwise null if no Component is found.
---@param type System.Type The type of Component to search for.
---@return UnityEngine.Component
function GameObject:GetComponent(type)
end

---A Component of the matching type, otherwise null if no Component is found.
---@param type string The name of the type of Component to search for.
---@return UnityEngine.Component
function GameObject:GetComponent(type)
end

---A component of the matching type, if found.
---@param type System.Type The type of Component to retrieve.
---@param includeInactive boolean Whether to include inactive child GameObjects in the search.
---@return UnityEngine.Component
function GameObject:GetComponentInChildren(type, includeInactive)
end

---A component of the matching type, if found.
---@param type System.Type The type of Component to retrieve.
---@return UnityEngine.Component
function GameObject:GetComponentInChildren(type)
end

---@return T
function GameObject:GetComponentInChildren()
end

---@param includeInactive boolean
---@return T
function GameObject:GetComponentInChildren(includeInactive)
end

---A Component of the matching type, otherwise null if no Component is found.
---@param type System.Type The type of component to search for.
---@param includeInactive boolean Whether to include inactive parent GameObjects in the search.
---@return UnityEngine.Component
function GameObject:GetComponentInParent(type, includeInactive)
end

---A Component of the matching type, otherwise null if no Component is found.
---@param type System.Type The type of component to search for.
---@return UnityEngine.Component
function GameObject:GetComponentInParent(type)
end

---@return T
function GameObject:GetComponentInParent()
end

---@param includeInactive boolean
---@return T
function GameObject:GetComponentInParent(includeInactive)
end

---An array containing all matching components of type type.
---@param type System.Type The type of component to search for.
---@return UnityEngine.Component[]
function GameObject:GetComponents(type)
end

---@return T[]
function GameObject:GetComponents()
end

---@param type System.Type
---@param results UnityEngine.Component[]
---@return void
function GameObject:GetComponents(type, results)
end

---@param results T[]
---@return void
function GameObject:GetComponents(results)
end

---An array of all found components matching the specified type.
---@param type System.Type The type of component to search for.
---@return UnityEngine.Component[]
function GameObject:GetComponentsInChildren(type)
end

---An array of all found components matching the specified type.
---@param type System.Type The type of component to search for.
---@param includeInactive boolean Whether to include inactive child GameObjects in the search.
---@return UnityEngine.Component[]
function GameObject:GetComponentsInChildren(type, includeInactive)
end

---@param includeInactive boolean
---@return T[]
function GameObject:GetComponentsInChildren(includeInactive)
end

---@param includeInactive boolean
---@param results T[]
---@return void
function GameObject:GetComponentsInChildren(includeInactive, results)
end

---@return T[]
function GameObject:GetComponentsInChildren()
end

---@param results T[]
---@return void
function GameObject:GetComponentsInChildren(results)
end

---@param type System.Type
---@return UnityEngine.Component[]
function GameObject:GetComponentsInParent(type)
end

---An array of all found components matching the specified type.
---@param type System.Type The type of component to search for.
---@param includeInactive boolean Whether to include inactive parent GameObjects in the search.
---@return UnityEngine.Component[]
function GameObject:GetComponentsInParent(type, includeInactive)
end

---@param includeInactive boolean
---@param results T[]
---@return void
function GameObject:GetComponentsInParent(includeInactive, results)
end

---@param includeInactive boolean
---@return T[]
function GameObject:GetComponentsInParent(includeInactive)
end

---@return T[]
function GameObject:GetComponentsInParent()
end

---@return boolean, T
function GameObject:TryGetComponent(component)
end

---@param type System.Type
---@return boolean, UnityEngine.Component
function GameObject:TryGetComponent(type, component)
end

---Returns one active GameObject tagged tag. Returns null if no GameObject was found.
---@param tag string The tag to search for.
---@return UnityEngine.GameObject
function GameObject.FindWithTag(tag)
end

---@param methodName string
---@param options UnityEngine.SendMessageOptions
---@return void
function GameObject:SendMessageUpwards(methodName, options)
end

---@param methodName string
---@param options UnityEngine.SendMessageOptions
---@return void
function GameObject:SendMessage(methodName, options)
end

---@param methodName string
---@param options UnityEngine.SendMessageOptions
---@return void
function GameObject:BroadcastMessage(methodName, options)
end

---Adds a component class of type componentType to the GameObject. C# Users can use a generic version.
---@param componentType System.Type
---@return UnityEngine.Component
function GameObject:AddComponent(componentType)
end

---@return T
function GameObject:AddComponent()
end

---The number of components.
---@return integer
function GameObject:GetComponentCount()
end

---A reference to a component of the type T at an index. Otherwise, returns null.
---@param index integer The component index.
---@return UnityEngine.Component
function GameObject:GetComponentAtIndex(index)
end

---@param index integer
---@return T
function GameObject:GetComponentAtIndex(index)
end

---The component index. Otherwise, returns -1.
---@param component UnityEngine.Component The component to search for.
---@return integer
function GameObject:GetComponentIndex(component)
end

---ActivatesDeactivates the GameObject, depending on the given true or false/ value.
---@param value boolean Activate or deactivate the object, where true activates the GameObject and false deactivates the GameObject.
---@return void
function GameObject:SetActive(value)
end

---@param state boolean
---@return void
function GameObject:SetActiveRecursively(state)
end

---Is this GameObject tagged with tag ?
---@param tag string The tag to compare.
---@return boolean
function GameObject:CompareTag(tag)
end

---@param tag string
---@return UnityEngine.GameObject
function GameObject.FindGameObjectWithTag(tag)
end

---Returns an array of active GameObjects tagged tag. Returns empty array if no GameObject was found.
---@param tag string The name of the tag to search GameObjects for.
---@return UnityEngine.GameObject[]
function GameObject.FindGameObjectsWithTag(tag)
end

---Calls the method named methodName on every MonoBehaviour in this GameObject and on every ancestor of the behaviour.
---@param methodName string The name of the method to call.
---@param value any An optional parameter value to pass to the called method.
---@param options UnityEngine.SendMessageOptions Should an error be raised if the method doesn't exist on the target object?
---@return void
function GameObject:SendMessageUpwards(methodName, value, options)
end

---Calls the method named methodName on every MonoBehaviour in this GameObject and on every ancestor of the behaviour.
---@param methodName string The name of the method to call.
---@param value any An optional parameter value to pass to the called method.
---@return void
function GameObject:SendMessageUpwards(methodName, value)
end

---Calls the method named methodName on every MonoBehaviour in this GameObject and on every ancestor of the behaviour.
---@param methodName string The name of the method to call.
---@return void
function GameObject:SendMessageUpwards(methodName)
end

---Calls the method named methodName on every MonoBehaviour in this GameObject.
---@param methodName string The name of the method to call.
---@param value any An optional parameter value to pass to the called method.
---@param options UnityEngine.SendMessageOptions Should an error be raised if the method doesn't exist on the target object?
---@return void
function GameObject:SendMessage(methodName, value, options)
end

---Calls the method named methodName on every MonoBehaviour in this GameObject.
---@param methodName string The name of the method to call.
---@param value any An optional parameter value to pass to the called method.
---@return void
function GameObject:SendMessage(methodName, value)
end

---Calls the method named methodName on every MonoBehaviour in this GameObject.
---@param methodName string The name of the method to call.
---@return void
function GameObject:SendMessage(methodName)
end

---Calls the method named methodName on every MonoBehaviour in this GameObject or any of its children.
---@param methodName string
---@param parameter any
---@param options UnityEngine.SendMessageOptions
---@return void
function GameObject:BroadcastMessage(methodName, parameter, options)
end

---Calls the method named methodName on every MonoBehaviour in this GameObject or any of its children.
---@param methodName string
---@param parameter any
---@return void
function GameObject:BroadcastMessage(methodName, parameter)
end

---Calls the method named methodName on every MonoBehaviour in this GameObject or any of its children.
---@param methodName string
---@return void
function GameObject:BroadcastMessage(methodName)
end

---Finds a GameObject by name and returns it.
---@param name string
---@return UnityEngine.GameObject
function GameObject.Find(name)
end

---@param instanceIDs Unity.Collections.NativeArray<int>
---@param active boolean
---@return void
function GameObject.SetGameObjectsActive(instanceIDs, active)
end

---@param instanceIDs System.ReadOnlySpan<int>
---@param active boolean
---@return void
function GameObject.SetGameObjectsActive(instanceIDs, active)
end

---@param sourceInstanceID integer
---@param count integer
---@param newInstanceIDs Unity.Collections.NativeArray<int>
---@param newTransformInstanceIDs Unity.Collections.NativeArray<int>
---@param destinationScene UnityEngine.SceneManagement.Scene
---@return void
function GameObject.InstantiateGameObjects(sourceInstanceID, count, newInstanceIDs, newTransformInstanceIDs, destinationScene)
end

---Scene of GameObject of instance ID.
---@param instanceID integer The instance ID of a GameObject.
---@return UnityEngine.SceneManagement.Scene
function GameObject.GetScene(instanceID)
end

---@param clip UnityEngine.Object
---@param time number
---@return void
function GameObject:SampleAnimation(clip, time)
end

---Adds a component class named className to the GameObject.
---@param className string
---@return UnityEngine.Component
function GameObject:AddComponent(className)
end

---@param animation UnityEngine.Object
---@return void
function GameObject:PlayAnimation(animation)
end

---@return void
function GameObject:StopAnimation()
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/09_GenericMethod/Foo.cs#101:24"
---@return T
function GameObject:UnsupportedExtension()
end


---Base class for everything attached to a GameObject.
---@class UnityEngine.Component: UnityEngine.Object
---@overload fun(): UnityEngine.Component
local Component = {}
---The Transform attached to this GameObject.
---@type UnityEngine.Transform
Component.transform = nil

---The game object this component is attached to. A component is always attached to a game object.
---@type UnityEngine.GameObject
Component.gameObject = nil

---The tag of this game object.
---@type string
Component.tag = nil

---The Rigidbody attached to this GameObject. (Null if there is none attached).
---@type UnityEngine.Component
Component.rigidbody = nil

---The Rigidbody2D that is attached to the Component's GameObject.
---@type UnityEngine.Component
Component.rigidbody2D = nil

---The Camera attached to this GameObject. (Null if there is none attached).
---@type UnityEngine.Component
Component.camera = nil

---The Light attached to this GameObject. (Null if there is none attached).
---@type UnityEngine.Component
Component.light = nil

---The Animation attached to this GameObject. (Null if there is none attached).
---@type UnityEngine.Component
Component.animation = nil

---The ConstantForce attached to this GameObject. (Null if there is none attached).
---@type UnityEngine.Component
Component.constantForce = nil

---The Renderer attached to this GameObject. (Null if there is none attached).
---@type UnityEngine.Component
Component.renderer = nil

---The AudioSource attached to this GameObject. (Null if there is none attached).
---@type UnityEngine.Component
Component.audio = nil

---The NetworkView attached to this GameObject (Read Only). (null if there is none attached).
---@type UnityEngine.Component
Component.networkView = nil

---The Collider attached to this GameObject. (Null if there is none attached).
---@type UnityEngine.Component
Component.collider = nil

---The Collider2D component attached to the object.
---@type UnityEngine.Component
Component.collider2D = nil

---The HingeJoint attached to this GameObject. (Null if there is none attached).
---@type UnityEngine.Component
Component.hingeJoint = nil

---The ParticleSystem attached to this GameObject. (Null if there is none attached).
---@type UnityEngine.Component
Component.particleSystem = nil

---A Component of the matching type, otherwise null if no Component is found.
---@param type System.Type The type of Component to retrieve.
---@return UnityEngine.Component
function Component:GetComponent(type)
end

---@return T
function Component:GetComponent()
end

---@param type System.Type
---@return boolean, UnityEngine.Component
function Component:TryGetComponent(type, component)
end

---@return boolean, T
function Component:TryGetComponent(component)
end

---A Component of the matching type, otherwise null if no Component is found.
---@param type string The name of the type of Component to get.
---@return UnityEngine.Component
function Component:GetComponent(type)
end

---A Component of the matching type, otherwise null if no Component is found.
---@param t System.Type The type of component to search for.
---@param includeInactive boolean Whether to include inactive child GameObjects in the search.
---@return UnityEngine.Component
function Component:GetComponentInChildren(t, includeInactive)
end

---A Component of the matching type, otherwise null if no Component is found.
---@param t System.Type The type of component to search for.
---@return UnityEngine.Component
function Component:GetComponentInChildren(t)
end

---@param includeInactive boolean
---@return T
function Component:GetComponentInChildren(includeInactive)
end

---@return T
function Component:GetComponentInChildren()
end

---An array of all found components matching the specified type.
---@param t System.Type The type of component to search for.
---@param includeInactive boolean Whether to include inactive child GameObjects in the search.
---@return UnityEngine.Component[]
function Component:GetComponentsInChildren(t, includeInactive)
end

---@param t System.Type
---@return UnityEngine.Component[]
function Component:GetComponentsInChildren(t)
end

---@param includeInactive boolean
---@return T[]
function Component:GetComponentsInChildren(includeInactive)
end

---@param includeInactive boolean
---@param result T[]
---@return void
function Component:GetComponentsInChildren(includeInactive, result)
end

---@return T[]
function Component:GetComponentsInChildren()
end

---@param results T[]
---@return void
function Component:GetComponentsInChildren(results)
end

---A Component of the matching type, otherwise null if no Component is found.
---@param t System.Type The type of component to search for.
---@param includeInactive boolean Whether to include inactive parent GameObjects in the search.
---@return UnityEngine.Component
function Component:GetComponentInParent(t, includeInactive)
end

---A Component of the matching type, otherwise null if no Component is found.
---@param t System.Type The type of component to search for.
---@return UnityEngine.Component
function Component:GetComponentInParent(t)
end

---@param includeInactive boolean
---@return T
function Component:GetComponentInParent(includeInactive)
end

---@return T
function Component:GetComponentInParent()
end

---An array of all found components matching the specified type.
---@param t System.Type The type of component to search for.
---@param includeInactive boolean Whether to include inactive parent GameObjects in the search.
---@return UnityEngine.Component[]
function Component:GetComponentsInParent(t, includeInactive)
end

---@param t System.Type
---@return UnityEngine.Component[]
function Component:GetComponentsInParent(t)
end

---@param includeInactive boolean
---@return T[]
function Component:GetComponentsInParent(includeInactive)
end

---@param includeInactive boolean
---@param results T[]
---@return void
function Component:GetComponentsInParent(includeInactive, results)
end

---@return T[]
function Component:GetComponentsInParent()
end

---An array containing all matching components of type type.
---@param type System.Type The type of component to search for.
---@return UnityEngine.Component[]
function Component:GetComponents(type)
end

---@param type System.Type
---@param results UnityEngine.Component[]
---@return void
function Component:GetComponents(type, results)
end

---@param results T[]
---@return void
function Component:GetComponents(results)
end

---@return T[]
function Component:GetComponents()
end

---The component index.
---@return integer
function Component:GetComponentIndex()
end

---Returns true if GameObject has same tag. Returns false otherwise.
---@param tag string The tag to compare.
---@return boolean
function Component:CompareTag(tag)
end

---Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
---@param methodName string Name of method to call.
---@param value any Optional parameter value for the method.
---@param options UnityEngine.SendMessageOptions Should an error be raised if the method does not exist on the target object?
---@return void
function Component:SendMessageUpwards(methodName, value, options)
end

---Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
---@param methodName string Name of method to call.
---@param value any Optional parameter value for the method.
---@return void
function Component:SendMessageUpwards(methodName, value)
end

---Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
---@param methodName string Name of method to call.
---@return void
function Component:SendMessageUpwards(methodName)
end

---Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour.
---@param methodName string Name of method to call.
---@param options UnityEngine.SendMessageOptions Should an error be raised if the method does not exist on the target object?
---@return void
function Component:SendMessageUpwards(methodName, options)
end

---Calls the method named methodName on every MonoBehaviour in this game object.
---@param methodName string Name of the method to call.
---@param value any Optional parameter for the method.
---@return void
function Component:SendMessage(methodName, value)
end

---Calls the method named methodName on every MonoBehaviour in this game object.
---@param methodName string Name of the method to call.
---@return void
function Component:SendMessage(methodName)
end

---Calls the method named methodName on every MonoBehaviour in this game object.
---@param methodName string Name of the method to call.
---@param value any Optional parameter for the method.
---@param options UnityEngine.SendMessageOptions Should an error be raised if the target object doesn't implement the method for the message?
---@return void
function Component:SendMessage(methodName, value, options)
end

---Calls the method named methodName on every MonoBehaviour in this game object.
---@param methodName string Name of the method to call.
---@param options UnityEngine.SendMessageOptions Should an error be raised if the target object doesn't implement the method for the message?
---@return void
function Component:SendMessage(methodName, options)
end

---Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
---@param methodName string Name of the method to call.
---@param parameter any Optional parameter to pass to the method (can be any value).
---@param options UnityEngine.SendMessageOptions Should an error be raised if the method does not exist for a given target object?
---@return void
function Component:BroadcastMessage(methodName, parameter, options)
end

---Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
---@param methodName string Name of the method to call.
---@param parameter any Optional parameter to pass to the method (can be any value).
---@return void
function Component:BroadcastMessage(methodName, parameter)
end

---Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
---@param methodName string Name of the method to call.
---@return void
function Component:BroadcastMessage(methodName)
end

---Calls the method named methodName on every MonoBehaviour in this game object or any of its children.
---@param methodName string Name of the method to call.
---@param options UnityEngine.SendMessageOptions Should an error be raised if the method does not exist for a given target object?
---@return void
function Component:BroadcastMessage(methodName, options)
end


---Behaviours are Components that can be enabled or disabled.
---@class UnityEngine.Behaviour: UnityEngine.Component
---@overload fun(): UnityEngine.Behaviour
local Behaviour = {}
---Enabled Behaviours are Updated, disabled Behaviours are not.
---@type boolean
Behaviour.enabled = nil

---Reports whether a GameObject and its associated Behaviour is active and enabled.
---@type boolean
Behaviour.isActiveAndEnabled = nil


---Position, rotation and scale of an object.
---@class UnityEngine.Transform: UnityEngine.Component, System.Collections.IEnumerable
---@overload fun(): UnityEngine.Transform
local Transform = {}
---The world space position of the Transform.
---@type UnityEngine.Vector3
Transform.position = nil

---Position of the transform relative to the parent transform.
---@type UnityEngine.Vector3
Transform.localPosition = nil

---The rotation as Euler angles in degrees.
---@type UnityEngine.Vector3
Transform.eulerAngles = nil

---The rotation as Euler angles in degrees relative to the parent transform's rotation.
---@type UnityEngine.Vector3
Transform.localEulerAngles = nil

---The red axis of the transform in world space.
---@type UnityEngine.Vector3
Transform.right = nil

---The green axis of the transform in world space.
---@type UnityEngine.Vector3
Transform.up = nil

---Returns a normalized vector representing the blue axis of the transform in world space.
---@type UnityEngine.Vector3
Transform.forward = nil

---A Quaternion that stores the rotation of the Transform in world space.
---@type UnityEngine.Quaternion
Transform.rotation = nil

---The rotation of the transform relative to the transform rotation of the parent.
---@type UnityEngine.Quaternion
Transform.localRotation = nil

---The scale of the transform relative to the GameObjects parent.
---@type UnityEngine.Vector3
Transform.localScale = nil

---The parent of the transform.
---@type UnityEngine.Transform
Transform.parent = nil

---Matrix that transforms a point from world space into local space (Read Only).
---@type UnityEngine.Matrix4x4
Transform.worldToLocalMatrix = nil

---Matrix that transforms a point from local space into world space (Read Only).
---@type UnityEngine.Matrix4x4
Transform.localToWorldMatrix = nil

---Returns the topmost transform in the hierarchy.
---@type UnityEngine.Transform
Transform.root = nil

---The number of children the parent Transform has.
---@type integer
Transform.childCount = nil

---The global scale of the object (Read Only).
---@type UnityEngine.Vector3
Transform.lossyScale = nil

---Has the transform changed since the last time the flag was set to 'false'?
---@type boolean
Transform.hasChanged = nil

---The transform capacity of the transform's hierarchy data structure.
---@type integer
Transform.hierarchyCapacity = nil

---The number of transforms in the transform's hierarchy data structure.
---@type integer
Transform.hierarchyCount = nil

---Set the parent of the transform.
---@param p UnityEngine.Transform
---@return void
function Transform:SetParent(p)
end

---Set the parent of the transform.
---@param parent UnityEngine.Transform The parent Transform to use.
---@param worldPositionStays boolean If true, the parent-relative position, scale and rotation are modified such that the object keeps the same world space position, rotation and scale as before.
---@return void
function Transform:SetParent(parent, worldPositionStays)
end

---Sets the world space position and rotation of the Transform component.
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return void
function Transform:SetPositionAndRotation(position, rotation)
end

---Sets the position and rotation of the Transform component in local space (i.e. relative to its parent transform).
---@param localPosition UnityEngine.Vector3
---@param localRotation UnityEngine.Quaternion
---@return void
function Transform:SetLocalPositionAndRotation(localPosition, localRotation)
end

---@return void, UnityEngine.Vector3, UnityEngine.Quaternion
function Transform:GetPositionAndRotation(position, rotation)
end

---@return void, UnityEngine.Vector3, UnityEngine.Quaternion
function Transform:GetLocalPositionAndRotation(localPosition, localRotation)
end

---Moves the transform in the direction and distance of translation.
---@param translation UnityEngine.Vector3
---@param relativeTo UnityEngine.Space
---@return void
function Transform:Translate(translation, relativeTo)
end

---Moves the transform in the direction and distance of translation.
---@param translation UnityEngine.Vector3
---@return void
function Transform:Translate(translation)
end

---Moves the transform by x along the x axis, y along the y axis, and z along the z axis.
---@param x number
---@param y number
---@param z number
---@param relativeTo UnityEngine.Space
---@return void
function Transform:Translate(x, y, z, relativeTo)
end

---Moves the transform by x along the x axis, y along the y axis, and z along the z axis.
---@param x number
---@param y number
---@param z number
---@return void
function Transform:Translate(x, y, z)
end

---Moves the transform in the direction and distance of translation.
---@param translation UnityEngine.Vector3
---@param relativeTo UnityEngine.Transform
---@return void
function Transform:Translate(translation, relativeTo)
end

---Moves the transform by x along the x axis, y along the y axis, and z along the z axis.
---@param x number
---@param y number
---@param z number
---@param relativeTo UnityEngine.Transform
---@return void
function Transform:Translate(x, y, z, relativeTo)
end

---Applies a rotation of eulerAngles.z degrees around the z-axis, eulerAngles.x degrees around the x-axis, and eulerAngles.y degrees around the y-axis (in that order).
---@param eulers UnityEngine.Vector3 The rotation to apply in euler angles.
---@param relativeTo UnityEngine.Space Determines whether to rotate the GameObject either locally to  the GameObject or relative to the Scene in world space.
---@return void
function Transform:Rotate(eulers, relativeTo)
end

---Applies a rotation of eulerAngles.z degrees around the z-axis, eulerAngles.x degrees around the x-axis, and eulerAngles.y degrees around the y-axis (in that order).
---@param eulers UnityEngine.Vector3 The rotation to apply in euler angles.
---@return void
function Transform:Rotate(eulers)
end

---The implementation of this method applies a rotation of zAngle degrees around the z axis, xAngle degrees around the x axis, and yAngle degrees around the y axis (in that order).
---@param xAngle number Degrees to rotate the GameObject around the X axis.
---@param yAngle number Degrees to rotate the GameObject around the Y axis.
---@param zAngle number Degrees to rotate the GameObject around the Z axis.
---@param relativeTo UnityEngine.Space Determines whether to rotate the GameObject either locally to the GameObject or relative to the Scene in world space.
---@return void
function Transform:Rotate(xAngle, yAngle, zAngle, relativeTo)
end

---The implementation of this method applies a rotation of zAngle degrees around the z axis, xAngle degrees around the x axis, and yAngle degrees around the y axis (in that order).
---@param xAngle number Degrees to rotate the GameObject around the X axis.
---@param yAngle number Degrees to rotate the GameObject around the Y axis.
---@param zAngle number Degrees to rotate the GameObject around the Z axis.
---@return void
function Transform:Rotate(xAngle, yAngle, zAngle)
end

---Rotates the object around the given axis by the number of degrees defined by the given angle.
---@param axis UnityEngine.Vector3 The axis to apply rotation to.
---@param angle number The degrees of rotation to apply.
---@param relativeTo UnityEngine.Space Determines whether to rotate the GameObject either locally to the GameObject or relative to the Scene in world space.
---@return void
function Transform:Rotate(axis, angle, relativeTo)
end

---Rotates the object around the given axis by the number of degrees defined by the given angle.
---@param axis UnityEngine.Vector3 The axis to apply rotation to.
---@param angle number The degrees of rotation to apply.
---@return void
function Transform:Rotate(axis, angle)
end

---Rotates the transform about axis passing through point in world coordinates by angle degrees.
---@param point UnityEngine.Vector3
---@param axis UnityEngine.Vector3
---@param angle number
---@return void
function Transform:RotateAround(point, axis, angle)
end

---Rotates the transform so the forward vector points at target's current position.
---@param target UnityEngine.Transform Object to point towards.
---@param worldUp UnityEngine.Vector3 Vector specifying the upward direction.
---@return void
function Transform:LookAt(target, worldUp)
end

---Rotates the transform so the forward vector points at target's current position.
---@param target UnityEngine.Transform Object to point towards.
---@return void
function Transform:LookAt(target)
end

---Rotates the transform so the forward vector points at worldPosition.
---@param worldPosition UnityEngine.Vector3 Point to look at.
---@param worldUp UnityEngine.Vector3 Vector specifying the upward direction.
---@return void
function Transform:LookAt(worldPosition, worldUp)
end

---Rotates the transform so the forward vector points at worldPosition.
---@param worldPosition UnityEngine.Vector3 Point to look at.
---@return void
function Transform:LookAt(worldPosition)
end

---Transforms direction from local space to world space.
---@param direction UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:TransformDirection(direction)
end

---Transforms direction x, y, z from local space to world space.
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function Transform:TransformDirection(x, y, z)
end

---@param directions System.ReadOnlySpan<UnityEngine.Vector3>
---@param transformedDirections System.Span<UnityEngine.Vector3>
---@return void
function Transform:TransformDirections(directions, transformedDirections)
end

---@param directions System.Span<UnityEngine.Vector3>
---@return void
function Transform:TransformDirections(directions)
end

---Transforms a direction from world space to local space. The opposite of Transform.TransformDirection.
---@param direction UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:InverseTransformDirection(direction)
end

---Transforms the direction x, y, z from world space to local space. The opposite of Transform.TransformDirection.
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function Transform:InverseTransformDirection(x, y, z)
end

---@param directions System.ReadOnlySpan<UnityEngine.Vector3>
---@param transformedDirections System.Span<UnityEngine.Vector3>
---@return void
function Transform:InverseTransformDirections(directions, transformedDirections)
end

---@param directions System.Span<UnityEngine.Vector3>
---@return void
function Transform:InverseTransformDirections(directions)
end

---Transforms vector from local space to world space.
---@param vector UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:TransformVector(vector)
end

---Transforms vector x, y, z from local space to world space.
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function Transform:TransformVector(x, y, z)
end

---@param vectors System.ReadOnlySpan<UnityEngine.Vector3>
---@param transformedVectors System.Span<UnityEngine.Vector3>
---@return void
function Transform:TransformVectors(vectors, transformedVectors)
end

---@param vectors System.Span<UnityEngine.Vector3>
---@return void
function Transform:TransformVectors(vectors)
end

---Transforms a vector from world space to local space. The opposite of Transform.TransformVector.
---@param vector UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:InverseTransformVector(vector)
end

---Transforms the vector x, y, z from world space to local space. The opposite of Transform.TransformVector.
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function Transform:InverseTransformVector(x, y, z)
end

---@param vectors System.ReadOnlySpan<UnityEngine.Vector3>
---@param transformedVectors System.Span<UnityEngine.Vector3>
---@return void
function Transform:InverseTransformVectors(vectors, transformedVectors)
end

---@param vectors System.Span<UnityEngine.Vector3>
---@return void
function Transform:InverseTransformVectors(vectors)
end

---Transforms position from local space to world space.
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:TransformPoint(position)
end

---Transforms the position x, y, z from local space to world space.
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function Transform:TransformPoint(x, y, z)
end

---@param positions System.ReadOnlySpan<UnityEngine.Vector3>
---@param transformedPositions System.Span<UnityEngine.Vector3>
---@return void
function Transform:TransformPoints(positions, transformedPositions)
end

---@param positions System.Span<UnityEngine.Vector3>
---@return void
function Transform:TransformPoints(positions)
end

---Transforms position from world space to local space.
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:InverseTransformPoint(position)
end

---Transforms the position x, y, z from world space to local space.
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function Transform:InverseTransformPoint(x, y, z)
end

---@param positions System.ReadOnlySpan<UnityEngine.Vector3>
---@param transformedPositions System.Span<UnityEngine.Vector3>
---@return void
function Transform:InverseTransformPoints(positions, transformedPositions)
end

---@param positions System.Span<UnityEngine.Vector3>
---@return void
function Transform:InverseTransformPoints(positions)
end

---Unparents all children.
---@return void
function Transform:DetachChildren()
end

---Move the transform to the start of the local transform list.
---@return void
function Transform:SetAsFirstSibling()
end

---Move the transform to the end of the local transform list.
---@return void
function Transform:SetAsLastSibling()
end

---Sets the sibling index.
---@param index integer Index to set.
---@return void
function Transform:SetSiblingIndex(index)
end

---Gets the sibling index.
---@return integer
function Transform:GetSiblingIndex()
end

---The found child transform. Null if child with matching name isn't found.
---@param n string Name of child to be found.
---@return UnityEngine.Transform
function Transform:Find(n)
end

---Is this transform a child of parent?
---@param parent UnityEngine.Transform
---@return boolean
function Transform:IsChildOf(parent)
end

---@param n string
---@return UnityEngine.Transform
function Transform:FindChild(n)
end

---@return System.Collections.IEnumerator
function Transform:GetEnumerator()
end

---@param axis UnityEngine.Vector3
---@param angle number
---@return void
function Transform:RotateAround(axis, angle)
end

---@param axis UnityEngine.Vector3
---@param angle number
---@return void
function Transform:RotateAroundLocal(axis, angle)
end

---Transform child by index.
---@param index integer Index of the child transform to return. Must be smaller than Transform.childCount.
---@return UnityEngine.Transform
function Transform:GetChild(index)
end

---@return integer
function Transform:GetChildCount()
end


---The Resources class allows you to find and access Objects including assets.
---@class UnityEngine.Resources: object
---@overload fun(): UnityEngine.Resources
local Resources = {}
---Returns a list of all objects of Type type.
---@param type System.Type
---@return UnityEngine.Object[]
function Resources.FindObjectsOfTypeAll(type)
end

---@return T[]
function Resources.FindObjectsOfTypeAll()
end

---The requested asset returned as an Object.
---@param path string Path to the target resource to load.
---@return UnityEngine.Object
function Resources.Load(path)
end

---@param path string
---@return T
function Resources.Load(path)
end

---The requested asset returned as an Object.
---@param path string Path to the target resource to load.
---@param systemTypeInstance System.Type Type filter for objects returned.
---@return UnityEngine.Object
function Resources.Load(path, systemTypeInstance)
end

---Asynchronously loads an asset stored at path in a Resources folder.
---@param path string Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder.
---@return UnityEngine.ResourceRequest
function Resources.LoadAsync(path)
end

---@param path string
---@return UnityEngine.ResourceRequest
function Resources.LoadAsync(path)
end

---Asynchronously loads an asset stored at path in a Resources folder.
---@param path string Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder.
---@param type System.Type
---@return UnityEngine.ResourceRequest
function Resources.LoadAsync(path, type)
end

---Loads all assets in a folder or file at path in a Resources folder.
---@param path string Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder.
---@param systemTypeInstance System.Type Type filter for objects returned.
---@return UnityEngine.Object[]
function Resources.LoadAll(path, systemTypeInstance)
end

---Loads all assets in a folder or file at path in a Resources folder.
---@param path string Pathname of the target folder. When using the empty string (i.e., ""), the function will load the entire contents of the Resources folder.
---@return UnityEngine.Object[]
function Resources.LoadAll(path)
end

---@param path string
---@return T[]
function Resources.LoadAll(path)
end

---@param type System.Type
---@param path string
---@return UnityEngine.Object
function Resources.GetBuiltinResource(type, path)
end

---@param path string
---@return T
function Resources.GetBuiltinResource(path)
end

---Unloads assetToUnload from memory.
---@param assetToUnload UnityEngine.Object
---@return void
function Resources.UnloadAsset(assetToUnload)
end

---Object on which you can yield to wait until the operation completes.
---@return UnityEngine.AsyncOperation
function Resources.UnloadUnusedAssets()
end

---Resolved reference or null if the instance ID didn't match anything.
---@param instanceID integer Instance ID of an Object.
---@return UnityEngine.Object
function Resources.InstanceIDToObject(instanceID)
end

---@param instanceIDs Unity.Collections.NativeArray<int>
---@param objects UnityEngine.Object[]
---@return void
function Resources.InstanceIDToObjectList(instanceIDs, objects)
end

---Returns true if the given instance ID corresponds to a valid Object in memory. The Object could have been deleted or not loaded into memory yet.
---@param instanceId integer
---@return boolean
function Resources.InstanceIDIsValid(instanceId)
end

---@param instanceIDs Unity.Collections.NativeArray<int>
---@param validArray Unity.Collections.NativeArray<bool>
---@return void
function Resources.InstanceIDsToValidArray(instanceIDs, validArray)
end

---@param instanceIDs System.ReadOnlySpan<int>
---@param validArray System.Span<bool>
---@return void
function Resources.InstanceIDsToValidArray(instanceIDs, validArray)
end

---Returns a resource at an asset path (Editor Only).
---@param assetPath string Pathname of the target asset.
---@param type System.Type Type filter for objects returned.
---@return UnityEngine.Object
function Resources.LoadAssetAtPath(assetPath, type)
end

---@param assetPath string
---@return T
function Resources.LoadAssetAtPath(assetPath)
end


---Represents a raw text or binary file asset.
---@class UnityEngine.TextAsset: UnityEngine.Object
---@overload fun(): UnityEngine.TextAsset
---@overload fun(text: string): UnityEngine.TextAsset
local TextAsset = {}
---The raw bytes of the text asset. (Read Only)
---@type byte[]
TextAsset.bytes = nil

---The text contents of the file as a string. (Read Only)
---@type string
TextAsset.text = nil

---The size of the text asset data in bytes. (Read Only)
---@type integer
TextAsset.dataSize = nil

---Returns the contents of the TextAsset.
---@return string
function TextAsset:ToString()
end

---@return Unity.Collections.NativeArray<T>
function TextAsset:GetData()
end


---A single keyframe that can be injected into an animation curve.
---@class UnityEngine.Keyframe: System.ValueType
---@overload fun(): UnityEngine.Keyframe
---@overload fun(time: number, value: number): UnityEngine.Keyframe
---@overload fun(time: number, value: number, inTangent: number, outTangent: number): UnityEngine.Keyframe
---@overload fun(time: number, value: number, inTangent: number, outTangent: number, inWeight: number, outWeight: number): UnityEngine.Keyframe
local Keyframe = {}
---The time of the keyframe.
---@type number
Keyframe.time = nil

---The value of the curve at keyframe.
---@type number
Keyframe.value = nil

---Sets the incoming tangent for this key. The incoming tangent affects the slope of the curve from the previous key to this key.
---@type number
Keyframe.inTangent = nil

---Sets the outgoing tangent for this key. The outgoing tangent affects the slope of the curve from this key to the next key.
---@type number
Keyframe.outTangent = nil

---Sets the incoming weight for this key. The incoming weight affects the slope of the curve from the previous key to this key.
---@type number
Keyframe.inWeight = nil

---Sets the outgoing weight for this key. The outgoing weight affects the slope of the curve from this key to the next key.
---@type number
Keyframe.outWeight = nil

---Weighted mode for the keyframe.
---@type UnityEngine.WeightedMode
Keyframe.weightedMode = nil

---TangentMode is deprecated.  Use AnimationUtility.SetKeyLeftTangentMode or AnimationUtility.SetKeyRightTangentMode instead.
---@type integer
Keyframe.tangentMode = nil


---Store a collection of Keyframes that can be evaluated over time.
---@class UnityEngine.AnimationCurve: object, System.IEquatable<UnityEngine.AnimationCurve>
---@overload fun(keys: UnityEngine.Keyframe[]): UnityEngine.AnimationCurve
---@overload fun(): UnityEngine.AnimationCurve
local AnimationCurve = {}
---All keys defined in the animation curve.
---@type UnityEngine.Keyframe[]
AnimationCurve.keys = nil

---The number of keys in the curve. (Read Only)
---@type integer
AnimationCurve.length = nil

---The behaviour of the animation before the first keyframe.
---@type UnityEngine.WrapMode
AnimationCurve.preWrapMode = nil

---The behaviour of the animation after the last keyframe.
---@type UnityEngine.WrapMode
AnimationCurve.postWrapMode = nil

---The value of the curve, at the point in time specified.
---@param time number The time within the curve you want to evaluate (the horizontal axis in the curve graph).
---@return number
function AnimationCurve:Evaluate(time)
end

---The index of the added key, or -1 if the key could not be added.
---@param time number The time at which to add the key (horizontal axis in the curve graph).
---@param value number The value for the key (vertical axis in the curve graph).
---@return integer
function AnimationCurve:AddKey(time, value)
end

---The index of the added key, or -1 if the key could not be added.
---@param key UnityEngine.Keyframe The key to add to the curve.
---@return integer
function AnimationCurve:AddKey(key)
end

---The index of the keyframe after moving it.
---@param index integer The index of the key to move.
---@param key UnityEngine.Keyframe The keyframe containing the new time and value.
---@return integer
function AnimationCurve:MoveKey(index, key)
end

---Erases all KeyFrame from this instance of the AnimationCurve.
---@return void
function AnimationCurve:ClearKeys()
end

---Removes a key.
---@param index integer The index of the key to remove.
---@return void
function AnimationCurve:RemoveKey(index)
end

---A HashCode.
---@return integer
function AnimationCurve:GetHashCode()
end

---Smooth the in and out tangents of the keyframe at index.
---@param index integer The index of the keyframe to be smoothed.
---@param weight number The smoothing weight to apply to the keyframe's tangents.
---@return void
function AnimationCurve:SmoothTangents(index, weight)
end

---The constant curve created from the specified values.
---@param timeStart number The start time for the constant curve.
---@param timeEnd number The end time for the constant curve.
---@param value number The value for the constant curve.
---@return UnityEngine.AnimationCurve
function AnimationCurve.Constant(timeStart, timeEnd, value)
end

---The linear curve created from the specified values.
---@param timeStart number The start time for the linear curve.
---@param valueStart number The start value for the linear curve.
---@param timeEnd number The end time for the linear curve.
---@param valueEnd number The end value for the linear curve.
---@return UnityEngine.AnimationCurve
function AnimationCurve.Linear(timeStart, valueStart, timeEnd, valueEnd)
end

---The ease-in and out curve generated from the specified values.
---@param timeStart number The start time for the ease curve.
---@param valueStart number The start value for the ease curve.
---@param timeEnd number The end time for the ease curve.
---@param valueEnd number The end value for the ease curve.
---@return UnityEngine.AnimationCurve
function AnimationCurve.EaseInOut(timeStart, valueStart, timeEnd, valueEnd)
end

---@param o any
---@return boolean
function AnimationCurve:Equals(o)
end

---@param other UnityEngine.AnimationCurve
---@return boolean
function AnimationCurve:Equals(other)
end

---Copies the keys and properties of the specified AnimationCurve object into this instance of the  AnimationCurve class.
---@param other UnityEngine.AnimationCurve The AnimationCurve object to obtain the values to copy.
---@return void
function AnimationCurve:CopyFrom(other)
end


---Stores keyframe based animations.
---@class UnityEngine.AnimationClip: UnityEngine.Motion
---@overload fun(): UnityEngine.AnimationClip
local AnimationClip = {}
---Animation length in seconds. (Read Only)
---@type number
AnimationClip.length = nil

---Frame rate at which keyframes are sampled. (Read Only)
---@type number
AnimationClip.frameRate = nil

---Sets the default wrap mode used in the animation state.
---@type UnityEngine.WrapMode
AnimationClip.wrapMode = nil

---AABB of this Animation Clip in local space of Animation component that it is attached too.
---@type UnityEngine.Bounds
AnimationClip.localBounds = nil

---Set to true if the AnimationClip will be used with the Legacy Animation component ( instead of the Animator ).
---@type boolean
AnimationClip.legacy = nil

---Returns true if the animation contains curve that drives a humanoid rig.
---@type boolean
AnimationClip.humanMotion = nil

---Returns true if the animation clip has no curves and no events.
---@type boolean
AnimationClip.empty = nil

---Returns true if the Animation has animation on the root transform.
---@type boolean
AnimationClip.hasGenericRootTransform = nil

---Returns true if the AnimationClip has editor curves for its root motion.
---@type boolean
AnimationClip.hasMotionFloatCurves = nil

---Returns true if the AnimationClip has root motion curves.
---@type boolean
AnimationClip.hasMotionCurves = nil

---Returns true if the AnimationClip has root Curves.
---@type boolean
AnimationClip.hasRootCurves = nil

---Animation Events for this animation clip.
---@type UnityEngine.AnimationEvent[]
AnimationClip.events = nil

---Samples an animation at a given time for any animated properties.
---@param go UnityEngine.GameObject The animated game object.
---@param time number The time to sample an animation.
---@return void
function AnimationClip:SampleAnimation(go, time)
end

---Assigns the curve to animate a specific property.
---@param relativePath string Path to the game object this curve applies to. The relativePath
---        is formatted similar to a pathname, e.g. "rootspineleftArm".  If relativePath
---        is empty it refers to the game object the animation clip is attached to.
---@param type System.Type The class type of the component that is animated.
---@param propertyName string The name or path to the property being animated.
---@param curve UnityEngine.AnimationCurve The animation curve.
---@return void
function AnimationClip:SetCurve(relativePath, type, propertyName, curve)
end

---Realigns quaternion keys to ensure shortest interpolation paths.
---@return void
function AnimationClip:EnsureQuaternionContinuity()
end

---Clears all curves from the clip.
---@return void
function AnimationClip:ClearCurves()
end

---Adds an animation event to the clip.
---@param evt UnityEngine.AnimationEvent AnimationEvent to add.
---@return void
function AnimationClip:AddEvent(evt)
end


---MonoBehaviour is a base class that many Unity scripts derive from.
---@class UnityEngine.MonoBehaviour: UnityEngine.Behaviour
---@overload fun(): UnityEngine.MonoBehaviour
local MonoBehaviour = {}
---Cancellation token raised when the MonoBehaviour is destroyed (Read Only).
---@type System.Threading.CancellationToken
MonoBehaviour.destroyCancellationToken = nil

---Disabling this lets you skip the GUI layout phase.
---@type boolean
MonoBehaviour.useGUILayout = nil

---Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor).
---@type boolean
MonoBehaviour.runInEditMode = nil

---Is any invoke pending on this MonoBehaviour?
---@return boolean
function MonoBehaviour:IsInvoking()
end

---Cancels all Invoke calls on this MonoBehaviour.
---@return void
function MonoBehaviour:CancelInvoke()
end

---Invokes the method methodName in time seconds.
---@param methodName string
---@param time number
---@return void
function MonoBehaviour:Invoke(methodName, time)
end

---Invokes the method methodName in time seconds, then repeatedly every repeatRate seconds.
---@param methodName string The name of a method to invoke.
---@param time number Start invoking after n seconds.
---@param repeatRate number Repeat every n seconds.
---@return void
function MonoBehaviour:InvokeRepeating(methodName, time, repeatRate)
end

---Cancels all Invoke calls with name methodName on this behaviour.
---@param methodName string
---@return void
function MonoBehaviour:CancelInvoke(methodName)
end

---Is any invoke on methodName pending?
---@param methodName string
---@return boolean
function MonoBehaviour:IsInvoking(methodName)
end

---Starts a coroutine named methodName.
---@param methodName string
---@return UnityEngine.Coroutine
function MonoBehaviour:StartCoroutine(methodName)
end

---Starts a coroutine named methodName.
---@param methodName string
---@param value any
---@return UnityEngine.Coroutine
function MonoBehaviour:StartCoroutine(methodName, value)
end

---Starts a Coroutine.
---@param routine System.Collections.IEnumerator
---@return UnityEngine.Coroutine
function MonoBehaviour:StartCoroutine(routine)
end

---@param routine System.Collections.IEnumerator
---@return UnityEngine.Coroutine
function MonoBehaviour:StartCoroutine_Auto(routine)
end

---Stops the first coroutine named methodName, or the coroutine stored in routine running on this behaviour.
---@param routine System.Collections.IEnumerator Name of the function in code, including coroutines.
---@return void
function MonoBehaviour:StopCoroutine(routine)
end

---Stops the first coroutine named methodName, or the coroutine stored in routine running on this behaviour.
---@param routine UnityEngine.Coroutine Name of the function in code, including coroutines.
---@return void
function MonoBehaviour:StopCoroutine(routine)
end

---Stops the first coroutine named methodName, or the coroutine stored in routine running on this behaviour.
---@param methodName string Name of coroutine.
---@return void
function MonoBehaviour:StopCoroutine(methodName)
end

---Stops all coroutines running on this behaviour.
---@return void
function MonoBehaviour:StopAllCoroutines()
end

---Logs message to the Unity Console (identical to Debug.Log).
---@param message any
---@return void
function MonoBehaviour.print(message)
end


---Script interface for the Built-in Particle System. Unity's powerful and versatile particle system implementation.
---@class UnityEngine.ParticleSystem: UnityEngine.Component
---@overload fun(): UnityEngine.ParticleSystem
local ParticleSystem = {}
---@type integer
ParticleSystem.safeCollisionEventSize = nil

---Start delay in seconds.
---@type number
ParticleSystem.startDelay = nil

---Determines whether the Particle System is looping.
---@type boolean
ParticleSystem.loop = nil

---If set to true, the Particle System will automatically start playing on startup.
---@type boolean
ParticleSystem.playOnAwake = nil

---The duration of the Particle System in seconds (Read Only).
---@type number
ParticleSystem.duration = nil

---The playback speed of the Particle System. 1 is normal playback speed.
---@type number
ParticleSystem.playbackSpeed = nil

---When set to false, the Particle System will not emit particles.
---@type boolean
ParticleSystem.enableEmission = nil

---The rate of particle emission.
---@type number
ParticleSystem.emissionRate = nil

---The initial speed of particles when emitted. When using curves, this value acts as a scale on the curve.
---@type number
ParticleSystem.startSpeed = nil

---The initial size of particles when emitted. When using curves, this value acts as a scale on the curve.
---@type number
ParticleSystem.startSize = nil

---The initial color of particles when emitted.
---@type UnityEngine.Color
ParticleSystem.startColor = nil

---The initial rotation of particles when emitted. When using curves, this value acts as a scale on the curve.
---@type number
ParticleSystem.startRotation = nil

---The initial 3D rotation of particles when emitted. When using curves, this value acts as a scale on the curves.
---@type UnityEngine.Vector3
ParticleSystem.startRotation3D = nil

---The total lifetime in seconds that particles will have when emitted. When using curves, this value acts as a scale on the curve. This value is set in the particle when it is created by the Particle System.
---@type number
ParticleSystem.startLifetime = nil

---Scale being applied to the gravity defined by Physics.gravity.
---@type number
ParticleSystem.gravityModifier = nil

---The maximum number of particles to emit.
---@type integer
ParticleSystem.maxParticles = nil

---This selects the space in which to simulate particles. It can be either world or local space.
---@type UnityEngine.ParticleSystemSimulationSpace
ParticleSystem.simulationSpace = nil

---The scaling mode applied to particle sizes and positions.
---@type UnityEngine.ParticleSystemScalingMode
ParticleSystem.scalingMode = nil

---Does this system support Automatic Culling?
---@type boolean
ParticleSystem.automaticCullingEnabled = nil

---Determines whether the Particle System is playing.
---@type boolean
ParticleSystem.isPlaying = nil

---Determines whether the Particle System is emitting particles. A Particle System may stop emitting when its emission module has finished, it has been paused or if the system has been stopped using ParticleSystem.Stop|Stop with the ParticleSystemStopBehavior.StopEmitting|StopEmitting flag. Resume emitting by calling ParticleSystem.Play|Play.
---@type boolean
ParticleSystem.isEmitting = nil

---Determines whether the Particle System is in the stopped state.
---@type boolean
ParticleSystem.isStopped = nil

---Determines whether the Particle System is paused.
---@type boolean
ParticleSystem.isPaused = nil

---The current number of particles (Read Only). The number doesn't include particles of child Particle Systems
---@type integer
ParticleSystem.particleCount = nil

---Playback position in seconds.
---@type number
ParticleSystem.time = nil

---Total playback time in seconds, including the Start Delay setting.
---@type number
ParticleSystem.totalTime = nil

---Override the random seed used for the Particle System emission.
---@type integer
ParticleSystem.randomSeed = nil

---Controls whether the Particle System uses an automatically-generated random number to seed the random number generator.
---@type boolean
ParticleSystem.useAutoRandomSeed = nil

---Does this system support Procedural Simulation?
---@type boolean
ParticleSystem.proceduralSimulationSupported = nil

---Determines whether the Particle System rotates its particles around only the Z axis, or whether the system specifies separate values for the X, Y and Z axes.
---@type boolean
ParticleSystem.has3DParticleRotations = nil

---Determines whether the Particle System uses a single value for the width and height (and depth, when using meshes), or if the system specifies different values for each axis.
---@type boolean
ParticleSystem.hasNonUniformParticleSizes = nil

---Access the main Particle System settings.
---@type UnityEngine.ParticleSystem.MainModule
ParticleSystem.main = nil

---Script interface for the EmissionModule of a Particle System.
---@type UnityEngine.ParticleSystem.EmissionModule
ParticleSystem.emission = nil

---Script interface for the ShapeModule of a Particle System.
---@type UnityEngine.ParticleSystem.ShapeModule
ParticleSystem.shape = nil

---Script interface for the VelocityOverLifetimeModule of a Particle System.
---@type UnityEngine.ParticleSystem.VelocityOverLifetimeModule
ParticleSystem.velocityOverLifetime = nil

---Script interface for the LimitVelocityOverLifetimeModule of a Particle System. .
---@type UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule
ParticleSystem.limitVelocityOverLifetime = nil

---Script interface for the InheritVelocityModule of a Particle System.
---@type UnityEngine.ParticleSystem.InheritVelocityModule
ParticleSystem.inheritVelocity = nil

---Script interface for the Particle System Lifetime By Emitter Speed module.
---@type UnityEngine.ParticleSystem.LifetimeByEmitterSpeedModule
ParticleSystem.lifetimeByEmitterSpeed = nil

---Script interface for the ForceOverLifetimeModule of a Particle System.
---@type UnityEngine.ParticleSystem.ForceOverLifetimeModule
ParticleSystem.forceOverLifetime = nil

---Script interface for the ColorOverLifetimeModule of a Particle System.
---@type UnityEngine.ParticleSystem.ColorOverLifetimeModule
ParticleSystem.colorOverLifetime = nil

---Script interface for the ColorByLifetimeModule of a Particle System.
---@type UnityEngine.ParticleSystem.ColorBySpeedModule
ParticleSystem.colorBySpeed = nil

---Script interface for the SizeOverLifetimeModule of a Particle System.
---@type UnityEngine.ParticleSystem.SizeOverLifetimeModule
ParticleSystem.sizeOverLifetime = nil

---Script interface for the SizeBySpeedModule of a Particle System.
---@type UnityEngine.ParticleSystem.SizeBySpeedModule
ParticleSystem.sizeBySpeed = nil

---Script interface for the RotationOverLifetimeModule of a Particle System.
---@type UnityEngine.ParticleSystem.RotationOverLifetimeModule
ParticleSystem.rotationOverLifetime = nil

---Script interface for the RotationBySpeedModule of a Particle System.
---@type UnityEngine.ParticleSystem.RotationBySpeedModule
ParticleSystem.rotationBySpeed = nil

---Script interface for the ExternalForcesModule of a Particle System.
---@type UnityEngine.ParticleSystem.ExternalForcesModule
ParticleSystem.externalForces = nil

---Script interface for the NoiseModule of a Particle System.
---@type UnityEngine.ParticleSystem.NoiseModule
ParticleSystem.noise = nil

---Script interface for the CollisionModule of a Particle System.
---@type UnityEngine.ParticleSystem.CollisionModule
ParticleSystem.collision = nil

---Script interface for the TriggerModule of a Particle System.
---@type UnityEngine.ParticleSystem.TriggerModule
ParticleSystem.trigger = nil

---Script interface for the SubEmittersModule of a Particle System.
---@type UnityEngine.ParticleSystem.SubEmittersModule
ParticleSystem.subEmitters = nil

---Script interface for the TextureSheetAnimationModule of a Particle System.
---@type UnityEngine.ParticleSystem.TextureSheetAnimationModule
ParticleSystem.textureSheetAnimation = nil

---Script interface for the LightsModule of a Particle System.
---@type UnityEngine.ParticleSystem.LightsModule
ParticleSystem.lights = nil

---Script interface for the TrailsModule of a Particle System.
---@type UnityEngine.ParticleSystem.TrailModule
ParticleSystem.trails = nil

---Script interface for the CustomDataModule of a Particle System.
---@type UnityEngine.ParticleSystem.CustomDataModule
ParticleSystem.customData = nil

---@param position UnityEngine.Vector3
---@param velocity UnityEngine.Vector3
---@param size number
---@param lifetime number
---@param color UnityEngine.Color32
---@return void
function ParticleSystem:Emit(position, velocity, size, lifetime, color)
end

---@param particle UnityEngine.ParticleSystem.Particle
---@return void
function ParticleSystem:Emit(particle)
end

---@param particles UnityEngine.ParticleSystem.Particle[]
---@param size integer
---@param offset integer
---@return void
function ParticleSystem:SetParticles(particles, size, offset)
end

---@param particles UnityEngine.ParticleSystem.Particle[]
---@param size integer
---@return void
function ParticleSystem:SetParticles(particles, size)
end

---@param particles UnityEngine.ParticleSystem.Particle[]
---@return void
function ParticleSystem:SetParticles(particles)
end

---@param particles Unity.Collections.NativeArray<UnityEngine.ParticleSystem.Particle>
---@param size integer
---@param offset integer
---@return void
function ParticleSystem:SetParticles(particles, size, offset)
end

---@param particles Unity.Collections.NativeArray<UnityEngine.ParticleSystem.Particle>
---@param size integer
---@return void
function ParticleSystem:SetParticles(particles, size)
end

---@param particles Unity.Collections.NativeArray<UnityEngine.ParticleSystem.Particle>
---@return void
function ParticleSystem:SetParticles(particles)
end

---@param particles UnityEngine.ParticleSystem.Particle[]
---@param size integer
---@param offset integer
---@return integer
function ParticleSystem:GetParticles(particles, size, offset)
end

---@param particles UnityEngine.ParticleSystem.Particle[]
---@param size integer
---@return integer
function ParticleSystem:GetParticles(particles, size)
end

---@param particles UnityEngine.ParticleSystem.Particle[]
---@return integer
function ParticleSystem:GetParticles(particles)
end

---@param particles Unity.Collections.NativeArray<UnityEngine.ParticleSystem.Particle>
---@param size integer
---@param offset integer
---@return integer
function ParticleSystem:GetParticles(particles, size, offset)
end

---@param particles Unity.Collections.NativeArray<UnityEngine.ParticleSystem.Particle>
---@param size integer
---@return integer
function ParticleSystem:GetParticles(particles, size)
end

---@param particles Unity.Collections.NativeArray<UnityEngine.ParticleSystem.Particle>
---@return integer
function ParticleSystem:GetParticles(particles)
end

---@param customData UnityEngine.Vector4[]
---@param streamIndex UnityEngine.ParticleSystemCustomData
---@return void
function ParticleSystem:SetCustomParticleData(customData, streamIndex)
end

---@param customData UnityEngine.Vector4[]
---@param streamIndex UnityEngine.ParticleSystemCustomData
---@return integer
function ParticleSystem:GetCustomParticleData(customData, streamIndex)
end

---The current internal state of the Particle System.
---@return UnityEngine.ParticleSystem.PlaybackState
function ParticleSystem:GetPlaybackState()
end

---@param playbackState UnityEngine.ParticleSystem.PlaybackState
---@return void
function ParticleSystem:SetPlaybackState(playbackState)
end

---The variable to populate with the Trails that currently belong to the Particle System..
---@return UnityEngine.ParticleSystem.Trails
function ParticleSystem:GetTrails()
end

---@param trailData UnityEngine.ParticleSystem.Trails
---@return integer, UnityEngine.ParticleSystem.Trails
function ParticleSystem:GetTrails(trailData)
end

---@param trailData UnityEngine.ParticleSystem.Trails
---@return void
function ParticleSystem:SetTrails(trailData)
end

---Fast-forwards the Particle System by simulating particles over the given period of time, then pauses it.
---@param t number Time period in seconds to advance the ParticleSystem simulation by. If restart is true, the ParticleSystem will be reset to 0 time, and then advanced by this value. If restart is false, the ParticleSystem simulation will be advanced in time from its current state by this value.
---@param withChildren boolean Fast-forward all child Particle Systems as well.
---@param restart boolean Restart and start from the beginning.
---@param fixedTimeStep boolean Only update the system at fixed intervals, based on the value in "Fixed Time" in the Time options.
---@return void
function ParticleSystem:Simulate(t, withChildren, restart, fixedTimeStep)
end

---Fast-forwards the Particle System by simulating particles over the given period of time, then pauses it.
---@param t number Time period in seconds to advance the ParticleSystem simulation by. If restart is true, the ParticleSystem will be reset to 0 time, and then advanced by this value. If restart is false, the ParticleSystem simulation will be advanced in time from its current state by this value.
---@param withChildren boolean Fast-forward all child Particle Systems as well.
---@param restart boolean Restart and start from the beginning.
---@return void
function ParticleSystem:Simulate(t, withChildren, restart)
end

---Fast-forwards the Particle System by simulating particles over the given period of time, then pauses it.
---@param t number Time period in seconds to advance the ParticleSystem simulation by. If restart is true, the ParticleSystem will be reset to 0 time, and then advanced by this value. If restart is false, the ParticleSystem simulation will be advanced in time from its current state by this value.
---@param withChildren boolean Fast-forward all child Particle Systems as well.
---@return void
function ParticleSystem:Simulate(t, withChildren)
end

---Fast-forwards the Particle System by simulating particles over the given period of time, then pauses it.
---@param t number Time period in seconds to advance the ParticleSystem simulation by. If restart is true, the ParticleSystem will be reset to 0 time, and then advanced by this value. If restart is false, the ParticleSystem simulation will be advanced in time from its current state by this value.
---@return void
function ParticleSystem:Simulate(t)
end

---Starts the Particle System.
---@param withChildren boolean Play all child Particle Systems as well.
---@return void
function ParticleSystem:Play(withChildren)
end

---Starts the Particle System.
---@return void
function ParticleSystem:Play()
end

---Pauses the system so no new particles are emitted and the existing particles are not updated.
---@param withChildren boolean Pause all child Particle Systems as well.
---@return void
function ParticleSystem:Pause(withChildren)
end

---Pauses the system so no new particles are emitted and the existing particles are not updated.
---@return void
function ParticleSystem:Pause()
end

---Stops playing the Particle System using the supplied stop behaviour.
---@param withChildren boolean Stop all child Particle Systems as well.
---@param stopBehavior UnityEngine.ParticleSystemStopBehavior Stop emitting or stop emitting and clear the system.
---@return void
function ParticleSystem:Stop(withChildren, stopBehavior)
end

---Stops playing the Particle System using the supplied stop behaviour.
---@param withChildren boolean Stop all child Particle Systems as well.
---@return void
function ParticleSystem:Stop(withChildren)
end

---Stops playing the Particle System using the supplied stop behaviour.
---@return void
function ParticleSystem:Stop()
end

---Remove all particles in the Particle System.
---@param withChildren boolean Clear all child Particle Systems as well.
---@return void
function ParticleSystem:Clear(withChildren)
end

---Remove all particles in the Particle System.
---@return void
function ParticleSystem:Clear()
end

---True if the Particle System contains live particles or is still creating new particles. False if the Particle System has stopped emitting particles and all particles are dead.
---@param withChildren boolean Check all child Particle Systems as well.
---@return boolean
function ParticleSystem:IsAlive(withChildren)
end

---True if the Particle System contains live particles or is still creating new particles. False if the Particle System has stopped emitting particles and all particles are dead.
---@return boolean
function ParticleSystem:IsAlive()
end

---Emit count particles immediately.
---@param count integer Number of particles to emit.
---@return void
function ParticleSystem:Emit(count)
end

---@param emitParams UnityEngine.ParticleSystem.EmitParams
---@param count integer
---@return void
function ParticleSystem:Emit(emitParams, count)
end

---Triggers the specified sub emitter on all particles of the Particle System.
---@param subEmitterIndex integer Index of the sub emitter to trigger.
---@return void
function ParticleSystem:TriggerSubEmitter(subEmitterIndex)
end

---@param subEmitterIndex integer
---@param particle UnityEngine.ParticleSystem.Particle
---@return void, UnityEngine.ParticleSystem.Particle
function ParticleSystem:TriggerSubEmitter(subEmitterIndex, particle)
end

---@param subEmitterIndex integer
---@param particles UnityEngine.ParticleSystem.Particle[]
---@return void
function ParticleSystem:TriggerSubEmitter(subEmitterIndex, particles)
end

---Reset the cache of reserved graphics memory used for efficient rendering of Particle Systems.
---@return void
function ParticleSystem.ResetPreMappedBufferMemory()
end

---Limits the amount of graphics memory Unity reserves for efficient rendering of Particle Systems.
---@param vertexBuffersCount integer The maximum number of cached vertex buffers.
---@param indexBuffersCount integer The maximum number of cached index buffers.
---@return void
function ParticleSystem.SetMaximumPreMappedBufferCounts(vertexBuffersCount, indexBuffersCount)
end

---Ensures that the ParticleSystemJobs.ParticleSystemJobData._axisOfRotations|axisOfRotations particle attribute array is allocated.
---@return void
function ParticleSystem:AllocateAxisOfRotationAttribute()
end

---Ensures that the ParticleSystemJobs.ParticleSystemJobData._meshIndices|meshIndices particle attribute array is allocated.
---@return void
function ParticleSystem:AllocateMeshIndexAttribute()
end

---Ensures that the ParticleSystemJobs.ParticleSystemJobData.customData1|customData1 and ParticleSystemJobs.ParticleSystemJobData.customData1|customData2 particle attribute arrays are allocated.
---@param stream UnityEngine.ParticleSystemCustomData The custom data stream to allocate.
---@return void
function ParticleSystem:AllocateCustomDataAttribute(stream)
end


---The Skinned Mesh filter.
---@class UnityEngine.SkinnedMeshRenderer: UnityEngine.Renderer
---@overload fun(): UnityEngine.SkinnedMeshRenderer
local SkinnedMeshRenderer = {}
---The maximum number of bones per vertex that are taken into account during skinning.
---@type UnityEngine.SkinQuality
SkinnedMeshRenderer.quality = nil

---If enabled, the Skinned Mesh will be updated when offscreen. If disabled, this also disables updating animations.
---@type boolean
SkinnedMeshRenderer.updateWhenOffscreen = nil

---Forces the Skinned Mesh to recalculate its matricies when rendered
---@type boolean
SkinnedMeshRenderer.forceMatrixRecalculationPerRender = nil

---@type UnityEngine.Transform
SkinnedMeshRenderer.rootBone = nil

---The bones used to skin the mesh.
---@type UnityEngine.Transform[]
SkinnedMeshRenderer.bones = nil

---The mesh used for skinning.
---@type UnityEngine.Mesh
SkinnedMeshRenderer.sharedMesh = nil

---Specifies whether skinned motion vectors should be used for this renderer.
---@type boolean
SkinnedMeshRenderer.skinnedMotionVectors = nil

---The intended target usage of the skinned mesh GPU vertex buffer.
---@type UnityEngine.GraphicsBuffer.Target
SkinnedMeshRenderer.vertexBufferTarget = nil

---The weight of the BlendShape.
---@param index integer The index of the BlendShape whose weight you want to retrieve. Index must be smaller than the Mesh.blendShapeCount of the Mesh attached to this Renderer.
---@return number
function SkinnedMeshRenderer:GetBlendShapeWeight(index)
end

---Sets the weight of a BlendShape for this Renderer.
---@param index integer The index of the BlendShape to modify. Index must be smaller than the Mesh.blendShapeCount of the Mesh attached to this Renderer.
---@param value number The weight for this BlendShape.
---@return void
function SkinnedMeshRenderer:SetBlendShapeWeight(index, value)
end

---Creates a snapshot of SkinnedMeshRenderer and stores it in mesh.
---@param mesh UnityEngine.Mesh A static mesh that will receive the snapshot of the skinned mesh.
---@return void
function SkinnedMeshRenderer:BakeMesh(mesh)
end

---Creates a snapshot of SkinnedMeshRenderer and stores it in mesh.
---@param mesh UnityEngine.Mesh A static mesh that will receive the snapshot of the skinned mesh.
---@param useScale boolean Whether to use the SkinnedMeshRenderer's Transform scale when baking the Mesh. If this is true, Unity bakes the Mesh using the position, rotation, and scale values from the SkinnedMeshRenderer's Transform. If this is false, Unity bakes the Mesh using the position and rotation values from the SkinnedMeshRenderer's Transform, but without using the scale value from the SkinnedMeshRenderer's Transform. The default value is false.
---@return void
function SkinnedMeshRenderer:BakeMesh(mesh, useScale)
end

---The skinned mesh vertex buffer as a GraphicsBuffer.
---@return UnityEngine.GraphicsBuffer
function SkinnedMeshRenderer:GetVertexBuffer()
end

---The skinned mesh vertex buffer as a GraphicsBuffer.
---@return UnityEngine.GraphicsBuffer
function SkinnedMeshRenderer:GetPreviousVertexBuffer()
end


---General functionality for all renderers.
---@class UnityEngine.Renderer: UnityEngine.Component
---@overload fun(): UnityEngine.Renderer
local Renderer = {}
---@type UnityEngine.Vector4
Renderer.lightmapTilingOffset = nil

---@type UnityEngine.Transform
Renderer.lightProbeAnchor = nil

---@type boolean
Renderer.castShadows = nil

---Specifies whether this renderer has a per-object motion vector pass.
---@type boolean
Renderer.motionVectors = nil

---Should light probes be used for this Renderer?
---@type boolean
Renderer.useLightProbes = nil

---The bounding box of the renderer in world space.
---@type UnityEngine.Bounds
Renderer.bounds = nil

---The bounding box of the renderer in local space.
---@type UnityEngine.Bounds
Renderer.localBounds = nil

---Makes the rendered 3D object visible if enabled.
---@type boolean
Renderer.enabled = nil

---Is this renderer visible in any camera? (Read Only)
---@type boolean
Renderer.isVisible = nil

---Does this object cast shadows?
---@type UnityEngine.Rendering.ShadowCastingMode
Renderer.shadowCastingMode = nil

---Does this object receive shadows?
---@type boolean
Renderer.receiveShadows = nil

---Allows turning off rendering for a specific component.
---@type boolean
Renderer.forceRenderingOff = nil

---Is this renderer a static shadow caster?
---@type boolean
Renderer.staticShadowCaster = nil

---Specifies the mode for motion vector rendering.
---@type UnityEngine.MotionVectorGenerationMode
Renderer.motionVectorGenerationMode = nil

---The light probe interpolation type.
---@type UnityEngine.Rendering.LightProbeUsage
Renderer.lightProbeUsage = nil

---Should reflection probes be used for this Renderer?
---@type UnityEngine.Rendering.ReflectionProbeUsage
Renderer.reflectionProbeUsage = nil

---Determines which rendering layer this renderer lives on, if you use a.
---@type integer
Renderer.renderingLayerMask = nil

---This value sorts renderers by priority. Lower values are rendered first and higher values are rendered last.
---@type integer
Renderer.rendererPriority = nil

---Describes how this renderer is updated for ray tracing.
---@type UnityEngine.Experimental.Rendering.RayTracingMode
Renderer.rayTracingMode = nil

---Name of the Renderer's sorting layer.
---@type string
Renderer.sortingLayerName = nil

---Unique ID of the Renderer's sorting layer.
---@type integer
Renderer.sortingLayerID = nil

---Renderer's order within a sorting layer.
---@type integer
Renderer.sortingOrder = nil

---Controls if dynamic occlusion culling should be performed for this renderer.
---@type boolean
Renderer.allowOcclusionWhenDynamic = nil

---Indicates whether the renderer is part of a with other renderers.
---@type boolean
Renderer.isPartOfStaticBatch = nil

---Matrix that transforms a point from world space into local space (Read Only).
---@type UnityEngine.Matrix4x4
Renderer.worldToLocalMatrix = nil

---Matrix that transforms a point from local space into world space (Read Only).
---@type UnityEngine.Matrix4x4
Renderer.localToWorldMatrix = nil

---If set, the Renderer will use the Light Probe Proxy Volume component attached to the source GameObject.
---@type UnityEngine.GameObject
Renderer.lightProbeProxyVolumeOverride = nil

---If set, Renderer will use this Transform's position to find the light or reflection probe.
---@type UnityEngine.Transform
Renderer.probeAnchor = nil

---The index of the baked lightmap applied to this renderer.
---@type integer
Renderer.lightmapIndex = nil

---The index of the real-time lightmap applied to this renderer.
---@type integer
Renderer.realtimeLightmapIndex = nil

---The UV scale & offset used for a lightmap.
---@type UnityEngine.Vector4
Renderer.lightmapScaleOffset = nil

---The UV scale & offset used for a real-time lightmap.
---@type UnityEngine.Vector4
Renderer.realtimeLightmapScaleOffset = nil

---Returns all the instantiated materials of this object.
---@type UnityEngine.Material[]
Renderer.materials = nil

---Returns the first instantiated Material assigned to the renderer.
---@type UnityEngine.Material
Renderer.material = nil

---The shared material of this object.
---@type UnityEngine.Material
Renderer.sharedMaterial = nil

---All the shared materials of this object.
---@type UnityEngine.Material[]
Renderer.sharedMaterials = nil

---Reset custom world space bounds.
---@return void
function Renderer:ResetBounds()
end

---Reset custom local space bounds.
---@return void
function Renderer:ResetLocalBounds()
end

---Returns true if the Renderer has a material property block attached via SetPropertyBlock.
---@return boolean
function Renderer:HasPropertyBlock()
end

---Lets you set or clear per-renderer or per-material parameter overrides.
---@param properties UnityEngine.MaterialPropertyBlock Property block with values you want to override.
---@return void
function Renderer:SetPropertyBlock(properties)
end

---Lets you set or clear per-renderer or per-material parameter overrides.
---@param properties UnityEngine.MaterialPropertyBlock Property block with values you want to override.
---@param materialIndex integer The index of the Material you want to override the parameters of. The index ranges from 0 to Renderer.sharedMaterials.Length-1.
---@return void
function Renderer:SetPropertyBlock(properties, materialIndex)
end

---Get per-Renderer or per-Material property block.
---@param properties UnityEngine.MaterialPropertyBlock Material parameters to retrieve.
---@return void
function Renderer:GetPropertyBlock(properties)
end

---Get per-Renderer or per-Material property block.
---@param properties UnityEngine.MaterialPropertyBlock Material parameters to retrieve.
---@param materialIndex integer The index of the Material you want to get overridden parameters from. The index ranges from 0 to Renderer.sharedMaterials.Length-1.
---@return void
function Renderer:GetPropertyBlock(properties, materialIndex)
end

---@param m UnityEngine.Material[]
---@return void
function Renderer:GetMaterials(m)
end

---@param materials UnityEngine.Material[]
---@return void
function Renderer:SetSharedMaterials(materials)
end

---@param materials UnityEngine.Material[]
---@return void
function Renderer:SetMaterials(materials)
end

---@param m UnityEngine.Material[]
---@return void
function Renderer:GetSharedMaterials(m)
end

---@param result UnityEngine.Rendering.ReflectionProbeBlendInfo[]
---@return void
function Renderer:GetClosestReflectionProbes(result)
end


---Simple access to web pages.
---@class UnityEngine.WWW: UnityEngine.CustomYieldInstruction, System.Collections.IEnumerator, System.IDisposable
---@overload fun(url: string): UnityEngine.WWW
---@overload fun(url: string, form: UnityEngine.WWWForm): UnityEngine.WWW
---@overload fun(url: string, postData: byte[]): UnityEngine.WWW
---@overload fun(url: string, postData: byte[], headers: System.Collections.Hashtable): UnityEngine.WWW
---@overload fun(url: string, postData: byte[], headers: table): UnityEngine.WWW
local WWW = {}
---Streams an AssetBundle that can contain any kind of asset from the project folder.
---@type UnityEngine.AssetBundle
WWW.assetBundle = nil

---Returns a AudioClip generated from the downloaded data (Read Only).
---@type UnityEngine.Object
WWW.audioClip = nil

---Returns the contents of the fetched web page as a byte array (Read Only).
---@type byte[]
WWW.bytes = nil

---MovieTexture has been removed. Use VideoPlayer instead.
---@type UnityEngine.Object
WWW.movie = nil

---@type integer
WWW.size = nil

---The number of bytes downloaded by this WWW query (read only).
---@type integer
WWW.bytesDownloaded = nil

---Returns an error message if there was an error during the download (Read Only).
---@type string
WWW.error = nil

---Is the download already finished? (Read Only)
---@type boolean
WWW.isDone = nil

---Load an Ogg Vorbis file into the audio clip.
---@type UnityEngine.Object
WWW.oggVorbis = nil

---How far has the download progressed (Read Only).
---@type number
WWW.progress = nil

---Dictionary of headers returned by the request.
---@type table
WWW.responseHeaders = nil

---@type string
WWW.data = nil

---Returns the contents of the fetched web page as a string (Read Only).
---@type string
WWW.text = nil

---Returns a Texture2D generated from the downloaded data (Read Only).
---@type UnityEngine.Texture2D
WWW.texture = nil

---Returns a non-readable Texture2D generated from the downloaded data (Read Only).
---@type UnityEngine.Texture2D
WWW.textureNonReadable = nil

---Obsolete, has no effect.
---@type UnityEngine.ThreadPriority
WWW.threadPriority = nil

---How far has the upload progressed (Read Only).
---@type number
WWW.uploadProgress = nil

---The URL of this WWW request (Read Only).
---@type string
WWW.url = nil

---@type boolean
WWW.keepWaiting = nil

---Escapes characters in a string to ensure they are URL-friendly.
---@param s string A string with characters to be escaped.
---@return string
function WWW.EscapeURL(s)
end

---Escapes characters in a string to ensure they are URL-friendly.
---@param s string A string with characters to be escaped.
---@param e System.Text.Encoding The text encoding to use.
---@return string
function WWW.EscapeURL(s, e)
end

---Converts URL-friendly escape sequences back to normal text.
---@param s string A string containing escaped characters.
---@return string
function WWW.UnEscapeURL(s)
end

---Converts URL-friendly escape sequences back to normal text.
---@param s string A string containing escaped characters.
---@param e System.Text.Encoding The text encoding to use.
---@return string
function WWW.UnEscapeURL(s, e)
end

---A WWW instance, which can be used to access the data once the load/download operation is completed.
---@param url string The URL to download the AssetBundle from, if it is not present in the cache. Must be '%' escaped.
---@param version integer Version of the AssetBundle. The file will only be loaded from the disk cache if it has previously been downloaded with the same version parameter. By incrementing the version number requested by your application, you can force Caching to download a new copy of the AssetBundle from url.
---@return UnityEngine.WWW
function WWW.LoadFromCacheOrDownload(url, version)
end

---A WWW instance, which can be used to access the data once the load/download operation is completed.
---@param url string The URL to download the AssetBundle from, if it is not present in the cache. Must be '%' escaped.
---@param version integer Version of the AssetBundle. The file will only be loaded from the disk cache if it has previously been downloaded with the same version parameter. By incrementing the version number requested by your application, you can force Caching to download a new copy of the AssetBundle from url.
---@param crc integer An optional CRC-32 Checksum of the uncompressed contents. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match. You can use this to avoid data corruption from bad downloads or users tampering with the cached files on disk. If the CRC does not match, Unity will try to redownload the data, and if the CRC on the server does not match it will fail with an error. Look at the error string returned to see the correct CRC value to use for an AssetBundle.
---@return UnityEngine.WWW
function WWW.LoadFromCacheOrDownload(url, version, crc)
end

---@param url string
---@param hash UnityEngine.Hash128
---@return UnityEngine.WWW
function WWW.LoadFromCacheOrDownload(url, hash)
end

---A WWW instance, which can be used to access the data once the load/download operation is completed.
---@param url string The URL to download the AssetBundle from, if it is not present in the cache. Must be '%' escaped.
---@param hash UnityEngine.Hash128 Hash128 which is used as the version of the AssetBundle.
---@param crc integer An optional CRC-32 Checksum of the uncompressed contents. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match. You can use this to avoid data corruption from bad downloads or users tampering with the cached files on disk. If the CRC does not match, Unity will try to redownload the data, and if the CRC on the server does not match it will fail with an error. Look at the error string returned to see the correct CRC value to use for an AssetBundle.
---@return UnityEngine.WWW
function WWW.LoadFromCacheOrDownload(url, hash, crc)
end

---A WWW instance, which can be used to access the data once the load/download operation is completed.
---@param url string The URL to download the AssetBundle from, if it is not present in the cache. Must be '%' escaped.
---@param cachedBundle UnityEngine.CachedAssetBundle A structure used to download a given version of AssetBundle to a customized cache path.
---
---Analogous to the cachedAssetBundle parameter for UnityWebRequestAssetBundle.GetAssetBundle.</param>
---@param crc integer An optional CRC-32 Checksum of the uncompressed contents. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match. You can use this to avoid data corruption from bad downloads or users tampering with the cached files on disk. If the CRC does not match, Unity will try to redownload the data, and if the CRC on the server does not match it will fail with an error. Look at the error string returned to see the correct CRC value to use for an AssetBundle.
---@return UnityEngine.WWW
function WWW.LoadFromCacheOrDownload(url, cachedBundle, crc)
end

---Replaces the contents of an existing Texture2D with an image from the downloaded data.
---@param texture UnityEngine.Texture2D
---@return void
function WWW:LoadImageIntoTexture(texture)
end

---Disposes of an existing WWW object.
---@return void
function WWW:Dispose()
end

---OBSOLETE. Use UnityWebRequestMultimedia.GetAudioClip().
---@return UnityEngine.AudioClip
function WWW:GetAudioClip()
end

---OBSOLETE. Use UnityWebRequestMultimedia.GetAudioClip().
---@param threeD boolean
---@return UnityEngine.AudioClip
function WWW:GetAudioClip(threeD)
end

---OBSOLETE. Use UnityWebRequestMultimedia.GetAudioClip().
---@param threeD boolean
---@param stream boolean
---@return UnityEngine.AudioClip
function WWW:GetAudioClip(threeD, stream)
end

---OBSOLETE. Use UnityWebRequestMultimedia.GetAudioClip().
---@param threeD boolean
---@param stream boolean
---@param audioType UnityEngine.AudioType
---@return UnityEngine.AudioClip
function WWW:GetAudioClip(threeD, stream, audioType)
end

---OBSOLETE. Use UnityWebRequestMultimedia.GetAudioClip().
---@return UnityEngine.AudioClip
function WWW:GetAudioClipCompressed()
end

---OBSOLETE. Use UnityWebRequestMultimedia.GetAudioClip().
---@param threeD boolean
---@return UnityEngine.AudioClip
function WWW:GetAudioClipCompressed(threeD)
end

---OBSOLETE. Use UnityWebRequestMultimedia.GetAudioClip().
---@param threeD boolean
---@param audioType UnityEngine.AudioType
---@return UnityEngine.AudioClip
function WWW:GetAudioClipCompressed(threeD, audioType)
end

---MovieTexture has been removed. Use VideoPlayer instead.
---@return UnityEngine.MovieTexture
function WWW:GetMovieTexture()
end


---Script interface for.
---@class UnityEngine.Light: UnityEngine.Behaviour
---@overload fun(): UnityEngine.Light
local Light = {}
---The type of the light.
---@type UnityEngine.LightType
Light.type = nil

---This property describes the shape of the spot light. Only Scriptable Render Pipelines use this property; the built-in renderer does not support it.
---@type UnityEngine.LightShape
Light.shape = nil

---The angle of the spot light's cone in degrees.
---@type number
Light.spotAngle = nil

---The angle of the spot light's inner cone in degrees.
---@type number
Light.innerSpotAngle = nil

---The color of the light.
---@type UnityEngine.Color
Light.color = nil

---The color temperature of the light.
---          Correlated Color Temperature (abbreviated as CCT) is multiplied with the color filter when calculating the final color of a light source. The color temperature of the electromagnetic radiation emitted from an ideal black body is defined as its surface temperature in Kelvin. White is 6500K according to the D65 standard. A candle light is 1800K and a soft warm light bulb is 2700K.
---          If you want to use colorTemperature, GraphicsSettings.lightsUseLinearIntensity and Light.useColorTemperature has to be enabled.
---          Additional resources: GraphicsSettings.lightsUseLinearIntensity, GraphicsSettings.useColorTemperature.
---@type number
Light.colorTemperature = nil

---Set to true to use the color temperature.
---@type boolean
Light.useColorTemperature = nil

---The Intensity of a light is multiplied with the Light color.
---@type number
Light.intensity = nil

---The multiplier that defines the strength of the bounce lighting.
---@type number
Light.bounceIntensity = nil

---Set to true to override light bounding sphere for culling.
---@type boolean
Light.useBoundingSphereOverride = nil

---Bounding sphere used to override the regular light bounding sphere during culling.
---@type UnityEngine.Vector4
Light.boundingSphereOverride = nil

---Whether to cull shadows for this Light when the Light is outside of the view frustum.
---@type boolean
Light.useViewFrustumForShadowCasterCull = nil

---The custom resolution of the shadow map.
---@type integer
Light.shadowCustomResolution = nil

---Shadow mapping constant bias.
---@type number
Light.shadowBias = nil

---Shadow mapping normal-based bias.
---@type number
Light.shadowNormalBias = nil

---Near plane value to use for shadow frustums.
---@type number
Light.shadowNearPlane = nil

---Set to true to enable custom matrix for culling during shadows.
---@type boolean
Light.useShadowMatrixOverride = nil

---Matrix that overrides the regular light projection matrix during shadow culling. Unity uses this matrix if you set Light.useShadowMatrixOverride to true.
---@type UnityEngine.Matrix4x4
Light.shadowMatrixOverride = nil

---The range of the light.
---@type number
Light.range = nil

---The to use for this light.
---@type UnityEngine.Flare
Light.flare = nil

---This property describes the output of the last Global Illumination bake.
---@type UnityEngine.LightBakingOutput
Light.bakingOutput = nil

---This is used to light certain objects in the Scene selectively.
---@type integer
Light.cullingMask = nil

---Determines which rendering LayerMask this Light affects.
---@type integer
Light.renderingLayerMask = nil

---Allows you to override the global Shadowmask Mode per light. Only use this with render pipelines that can handle per light Shadowmask modes. Incompatible with the legacy renderers.
---@type UnityEngine.LightShadowCasterMode
Light.lightShadowCasterMode = nil

---Controls the amount of artificial softening applied to the edges of shadows cast by the Point or Spot light (Editor only).
---@type number
Light.shadowRadius = nil

---Controls the amount of artificial softening applied to the edges of shadows cast by directional lights (Editor only).
---@type number
Light.shadowAngle = nil

---How this light casts shadows
---@type UnityEngine.LightShadows
Light.shadows = nil

---Strength of light's shadows.
---@type number
Light.shadowStrength = nil

---The resolution of the shadow map.
---@type UnityEngine.Rendering.LightShadowResolution
Light.shadowResolution = nil

---@type number
Light.shadowSoftness = nil

---@type number
Light.shadowSoftnessFade = nil

---Per-light, per-layer shadow culling distances. Directional lights only.
---@type float[]
Light.layerShadowCullDistances = nil

---The size of a directional light's cookie.
---@type number
Light.cookieSize = nil

---The cookie texture projected by the light.
---@type UnityEngine.Texture
Light.cookie = nil

---How to render the light.
---@type UnityEngine.LightRenderMode
Light.renderMode = nil

---@type integer
Light.bakedIndex = nil

---The size of the area light (Editor only).
---@type UnityEngine.Vector2
Light.areaSize = nil

---This property describes what part of a light's contribution can be baked (Editor only).
---@type UnityEngine.LightmapBakeType
Light.lightmapBakeType = nil

---Number of command buffers set up on this light (Read Only).
---@type integer
Light.commandBufferCount = nil

---@type integer
Light.pixelLightCount = nil

---@type number
Light.shadowConstantBias = nil

---@type number
Light.shadowObjectSizeBias = nil

---@type boolean
Light.attenuate = nil

---@type UnityEngine.LightmappingMode
Light.lightmappingMode = nil

---Is the light contribution already stored in lightmaps and/or lightprobes (Read Only). Obsolete; replaced by Light-lightmapBakeType.
---@type boolean
Light.isBaked = nil

---@type boolean
Light.alreadyLightmapped = nil

---Revert all light parameters to default.
---@return void
function Light:Reset()
end

---Sets a light dirty to notify the light baking backends to update their internal light representation (Editor only).
---@return void
function Light:SetLightDirty()
end

---Add a command buffer to be executed at a specified place.
---@param evt UnityEngine.Rendering.LightEvent When to execute the command buffer during rendering.
---@param buffer UnityEngine.Rendering.CommandBuffer The buffer to execute.
---@return void
function Light:AddCommandBuffer(evt, buffer)
end

---Add a command buffer to be executed at a specified place.
---@param evt UnityEngine.Rendering.LightEvent When to execute the command buffer during rendering.
---@param buffer UnityEngine.Rendering.CommandBuffer The buffer to execute.
---@param shadowPassMask UnityEngine.Rendering.ShadowMapPass A mask specifying which shadow passes to execute the buffer for.
---@return void
function Light:AddCommandBuffer(evt, buffer, shadowPassMask)
end

---Adds a command buffer to the GPU's async compute queues and executes that command buffer when graphics processing reaches a given point.
---@param evt UnityEngine.Rendering.LightEvent The point during the graphics processing at which this command buffer should commence on the GPU.
---@param buffer UnityEngine.Rendering.CommandBuffer The buffer to execute.
---@param queueType UnityEngine.Rendering.ComputeQueueType The desired async compute queue type to execute the buffer on.
---@return void
function Light:AddCommandBufferAsync(evt, buffer, queueType)
end

---Adds a command buffer to the GPU's async compute queues and executes that command buffer when graphics processing reaches a given point.
---@param evt UnityEngine.Rendering.LightEvent The point during the graphics processing at which this command buffer should commence on the GPU.
---@param buffer UnityEngine.Rendering.CommandBuffer The buffer to execute.
---@param shadowPassMask UnityEngine.Rendering.ShadowMapPass A mask specifying which shadow passes to execute the buffer for.
---@param queueType UnityEngine.Rendering.ComputeQueueType The desired async compute queue type to execute the buffer on.
---@return void
function Light:AddCommandBufferAsync(evt, buffer, shadowPassMask, queueType)
end

---Remove command buffer from execution at a specified place.
---@param evt UnityEngine.Rendering.LightEvent When to execute the command buffer during rendering.
---@param buffer UnityEngine.Rendering.CommandBuffer The buffer to execute.
---@return void
function Light:RemoveCommandBuffer(evt, buffer)
end

---Remove command buffers from execution at a specified place.
---@param evt UnityEngine.Rendering.LightEvent When to execute the command buffer during rendering.
---@return void
function Light:RemoveCommandBuffers(evt)
end

---Remove all command buffers set on this light.
---@return void
function Light:RemoveAllCommandBuffers()
end

---Array of command buffers.
---@param evt UnityEngine.Rendering.LightEvent When to execute the command buffer during rendering.
---@return UnityEngine.Rendering.CommandBuffer[]
function Light:GetCommandBuffers(evt)
end

---@param type UnityEngine.LightType
---@param layer integer
---@return UnityEngine.Light[]
function Light.GetLights(type, layer)
end


---A collection of common math functions.
---@class UnityEngine.Mathf: System.ValueType
---@overload fun(): UnityEngine.Mathf
local Mathf = {}
---The well-known 3.14159265358979... value (Read Only).
---@type number
Mathf.PI = nil

---A representation of positive infinity (Read Only).
---@type number
Mathf.Infinity = nil

---A representation of negative infinity (Read Only).
---@type number
Mathf.NegativeInfinity = nil

---Degrees-to-radians conversion constant (Read Only).
---@type number
Mathf.Deg2Rad = nil

---Radians-to-degrees conversion constant (Read Only).
---@type number
Mathf.Rad2Deg = nil

---A tiny floating point value (Read Only).
---@type number
Mathf.Epsilon = nil

---Returns the closest power of two value.
---@param value integer
---@return integer
function Mathf.ClosestPowerOfTwo(value)
end

---Returns true if the value is power of two.
---@param value integer
---@return boolean
function Mathf.IsPowerOfTwo(value)
end

---Returns the next power of two that is equal to, or greater than, the argument.
---@param value integer
---@return integer
function Mathf.NextPowerOfTwo(value)
end

---Converts the given value from gamma (sRGB) to linear color space.
---@param value number
---@return number
function Mathf.GammaToLinearSpace(value)
end

---Converts the given value from linear to gamma (sRGB) color space.
---@param value number
---@return number
function Mathf.LinearToGammaSpace(value)
end

---Correlated Color Temperature as floating point RGB color.
---@param kelvin number Temperature in Kelvin. Range 1000 to 40000 Kelvin.
---@return UnityEngine.Color
function Mathf.CorrelatedColorTemperatureToRGB(kelvin)
end

---The converted half-precision float, stored in a 16-bit unsigned integer.
---@param val number The floating point value to convert.
---@return integer
function Mathf.FloatToHalf(val)
end

---The decoded 32-bit float.
---@param val integer The half precision value to convert.
---@return number
function Mathf.HalfToFloat(val)
end

---Value between 0.0 and 1.0. (Return value might be slightly below 0.0 or beyond 1.0.)
---@param x number X-coordinate of sample point.
---@param y number Y-coordinate of sample point.
---@return number
function Mathf.PerlinNoise(x, y)
end

---A value in the range of 0.0 and 1.0. The value might be slightly higher or lower than this range.
---@param x number The X-coordinate of the given sample point.
---@return number
function Mathf.PerlinNoise1D(x)
end

---The return value between -1 and +1.
---@param f number The input angle, in radians.
---@return number
function Mathf.Sin(f)
end

---The return value between -1 and 1.
---@param f number The input angle, in radians.
---@return number
function Mathf.Cos(f)
end

---Returns the tangent of angle f in radians.
---@param f number
---@return number
function Mathf.Tan(f)
end

---Returns the arc-sine of f - the angle in radians whose sine is f.
---@param f number
---@return number
function Mathf.Asin(f)
end

---Returns the arc-cosine of f - the angle in radians whose cosine is f.
---@param f number
---@return number
function Mathf.Acos(f)
end

---Returns the arc-tangent of f - the angle in radians whose tangent is f.
---@param f number
---@return number
function Mathf.Atan(f)
end

---Returns the angle in radians whose Tan is y/x.
---@param y number
---@param x number
---@return number
function Mathf.Atan2(y, x)
end

---Returns square root of f.
---@param f number
---@return number
function Mathf.Sqrt(f)
end

---Returns the absolute value of f.
---@param f number
---@return number
function Mathf.Abs(f)
end

---Returns the absolute value of value.
---@param value integer
---@return integer
function Mathf.Abs(value)
end

---Returns the smallest of two or more values.
---@param a number
---@param b number
---@return number
function Mathf.Min(a, b)
end

---Returns the smallest of two or more values.
---@param values float[]
---@return number
function Mathf.Min(values)
end

---Returns the smallest of two or more values.
---@param a integer
---@param b integer
---@return integer
function Mathf.Min(a, b)
end

---Returns the smallest of two or more values.
---@param values int[]
---@return integer
function Mathf.Min(values)
end

---Returns the largest of two or more values. When comparing negative values, values closer to zero are considered larger.
---@param a number
---@param b number
---@return number
function Mathf.Max(a, b)
end

---Returns the largest of two or more values. When comparing negative values, values closer to zero are considered larger.
---@param values float[]
---@return number
function Mathf.Max(values)
end

---Returns the largest value. When comparing negative values, values closer to zero are considered larger.
---@param a integer
---@param b integer
---@return integer
function Mathf.Max(a, b)
end

---Returns the largest value. When comparing negative values, values closer to zero are considered larger.
---@param values int[]
---@return integer
function Mathf.Max(values)
end

---Returns f raised to power p.
---@param f number
---@param p number
---@return number
function Mathf.Pow(f, p)
end

---Returns e raised to the specified power.
---@param power number
---@return number
function Mathf.Exp(power)
end

---Returns the logarithm of a specified number in a specified base.
---@param f number
---@param p number
---@return number
function Mathf.Log(f, p)
end

---Returns the natural (base e) logarithm of a specified number.
---@param f number
---@return number
function Mathf.Log(f)
end

---Returns the base 10 logarithm of a specified number.
---@param f number
---@return number
function Mathf.Log10(f)
end

---Returns the smallest integer greater than or equal to f.
---@param f number
---@return number
function Mathf.Ceil(f)
end

---Returns the largest integer smaller than or equal to f.
---@param f number
---@return number
function Mathf.Floor(f)
end

---Returns f rounded to the nearest integer.
---@param f number
---@return number
function Mathf.Round(f)
end

---Returns the smallest integer greater to or equal to f.
---@param f number
---@return integer
function Mathf.CeilToInt(f)
end

---Returns the largest integer smaller to or equal to f.
---@param f number
---@return integer
function Mathf.FloorToInt(f)
end

---Returns f rounded to the nearest integer.
---@param f number
---@return integer
function Mathf.RoundToInt(f)
end

---Returns the sign of f.
---@param f number
---@return number
function Mathf.Sign(f)
end

---The float result between the minimum and maximum values.
---@param value number The floating point value to restrict inside the range defined by the minimum and maximum values.
---@param min number The minimum floating point value to compare against.
---@param max number The maximum floating point value to compare against.
---@return number
function Mathf.Clamp(value, min, max)
end

---The int result between min and max values.
---@param value integer The integer point value to restrict inside the min-to-max range.
---@param min integer The minimum integer point value to compare against.
---@param max integer The maximum  integer point value to compare against.
---@return integer
function Mathf.Clamp(value, min, max)
end

---Clamps value between 0 and 1 and returns value.
---@param value number
---@return number
function Mathf.Clamp01(value)
end

---The interpolated float result between the two float values.
---@param a number The start value.
---@param b number The end value.
---@param t number The interpolation value between the two floats.
---@return number
function Mathf.Lerp(a, b, t)
end

---The float value as a result from the linear interpolation.
---@param a number The start value.
---@param b number The end value.
---@param t number The interpolation between the two floats.
---@return number
function Mathf.LerpUnclamped(a, b, t)
end

---Returns the interpolated float result between angle a and angle b, based on the interpolation value t.
---@param a number The start angle. A float expressed in degrees.
---@param b number The end angle. A float expressed in degrees.
---@param t number The interpolation value between the start and end angles. This value is clamped to the range [0, 1].
---@return number
function Mathf.LerpAngle(a, b, t)
end

---Moves a value current towards target.
---@param current number The current value.
---@param target number The value to move towards.
---@param maxDelta number The maximum change applied to the current value.
---@return number
function Mathf.MoveTowards(current, target, maxDelta)
end

---Same as MoveTowards but makes sure the values interpolate correctly when they wrap around 360 degrees.
---@param current number
---@param target number
---@param maxDelta number
---@return number
function Mathf.MoveTowardsAngle(current, target, maxDelta)
end

---Interpolates between min and max with smoothing at the limits.
---@param from number
---@param to number
---@param t number
---@return number
function Mathf.SmoothStep(from, to, t)
end

---@param value number
---@param absmax number
---@param gamma number
---@return number
function Mathf.Gamma(value, absmax, gamma)
end

---Compares two floating point values and returns true if they are similar.
---@param a number
---@param b number
---@return boolean
function Mathf.Approximately(a, b)
end

---@param current number
---@param target number
---@param currentVelocity number
---@param smoothTime number
---@param maxSpeed number
---@return number, number
function Mathf.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed)
end

---@param current number
---@param target number
---@param currentVelocity number
---@param smoothTime number
---@return number, number
function Mathf.SmoothDamp(current, target, currentVelocity, smoothTime)
end

---@param current number
---@param target number
---@param currentVelocity number
---@param smoothTime number
---@param maxSpeed number
---@param deltaTime number
---@return number, number
function Mathf.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

---@param current number
---@param target number
---@param currentVelocity number
---@param smoothTime number
---@param maxSpeed number
---@return number, number
function Mathf.SmoothDampAngle(current, target, currentVelocity, smoothTime, maxSpeed)
end

---@param current number
---@param target number
---@param currentVelocity number
---@param smoothTime number
---@return number, number
function Mathf.SmoothDampAngle(current, target, currentVelocity, smoothTime)
end

---@param current number
---@param target number
---@param currentVelocity number
---@param smoothTime number
---@param maxSpeed number
---@param deltaTime number
---@return number, number
function Mathf.SmoothDampAngle(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime)
end

---Loops the value t, so that it is never larger than length and never smaller than 0.
---@param t number
---@param length number
---@return number
function Mathf.Repeat(t, length)
end

---PingPong returns a value that increments and decrements between zero and the length. It follows the triangle wave formula where the bottom is set to zero and the peak is set to length.
---@param t number
---@param length number
---@return number
function Mathf.PingPong(t, length)
end

---A value between zero and one, representing where the "value" parameter falls within the range defined by a and b.
---@param a number The start of the range.
---@param b number The end of the range.
---@param value number The point within the range you want to calculate.
---@return number
function Mathf.InverseLerp(a, b, value)
end

---A value between -179 and 180, in degrees.
---@param current number The current angle in degrees.
---@param target number The target angle in degrees.
---@return number
function Mathf.DeltaAngle(current, target)
end


---@class System.Collections.Generic.List<T>: object, System.Collections.Generic.IList<int>, System.Collections.Generic.ICollection<int>, System.Collections.Generic.IReadOnlyList<int>, System.Collections.Generic.IReadOnlyCollection<int>, System.Collections.Generic.IEnumerable<int>, System.Collections.IList, System.Collections.ICollection, System.Collections.IEnumerable
---@overload fun(): System.Collections.Generic.List
---@overload fun(collection: System.Collections.Generic.IEnumerable<int>): System.Collections.Generic.List
---@overload fun(capacity: integer): System.Collections.Generic.List
local List = {}
---@type integer
List.Capacity = nil

---@type integer
List.Count = nil

---@param item integer
---@return void
function List:Add(item)
end

---@param collection System.Collections.Generic.IEnumerable<int>
---@return void
function List:AddRange(collection)
end

---@return System.Collections.ObjectModel.ReadOnlyCollection<int>
function List:AsReadOnly()
end

---@param index integer
---@param count integer
---@param item integer
---@param comparer System.Collections.Generic.IComparer<int>
---@return integer
function List:BinarySearch(index, count, item, comparer)
end

---@param item integer
---@return integer
function List:BinarySearch(item)
end

---@param item integer
---@param comparer System.Collections.Generic.IComparer<int>
---@return integer
function List:BinarySearch(item, comparer)
end

---@return void
function List:Clear()
end

---@param item integer
---@return boolean
function List:Contains(item)
end

---@param converter System.Converter<int, TOutput>
---@return TOutput[]
function List:ConvertAll(converter)
end

---@param index integer
---@param array int[]
---@param arrayIndex integer
---@param count integer
---@return void
function List:CopyTo(index, array, arrayIndex, count)
end

---@param array int[]
---@return void
function List:CopyTo(array)
end

---@param array int[]
---@param arrayIndex integer
---@return void
function List:CopyTo(array, arrayIndex)
end

---@param match System.Predicate<int>
---@return boolean
function List:Exists(match)
end

---@param match System.Predicate<int>
---@return integer
function List:Find(match)
end

---@param match System.Predicate<int>
---@return integer[]
function List:FindAll(match)
end

---@param startIndex integer
---@param count integer
---@param match System.Predicate<int>
---@return integer
function List:FindIndex(startIndex, count, match)
end

---@param startIndex integer
---@param match System.Predicate<int>
---@return integer
function List:FindIndex(startIndex, match)
end

---@param match System.Predicate<int>
---@return integer
function List:FindIndex(match)
end

---@param match System.Predicate<int>
---@return integer
function List:FindLast(match)
end

---@param startIndex integer
---@param count integer
---@param match System.Predicate<int>
---@return integer
function List:FindLastIndex(startIndex, count, match)
end

---@param startIndex integer
---@param match System.Predicate<int>
---@return integer
function List:FindLastIndex(startIndex, match)
end

---@param match System.Predicate<int>
---@return integer
function List:FindLastIndex(match)
end

---@param action System.Action<int>
---@return void
function List:ForEach(action)
end

---@return integer[]
function List:GetEnumerator()
end

---@param index integer
---@param count integer
---@return integer[]
function List:GetRange(index, count)
end

---@param item integer
---@return integer
function List:IndexOf(item)
end

---@param item integer
---@param index integer
---@return integer
function List:IndexOf(item, index)
end

---@param item integer
---@param index integer
---@param count integer
---@return integer
function List:IndexOf(item, index, count)
end

---@param index integer
---@param item integer
---@return void
function List:Insert(index, item)
end

---@param index integer
---@param collection System.Collections.Generic.IEnumerable<int>
---@return void
function List:InsertRange(index, collection)
end

---@param item integer
---@return integer
function List:LastIndexOf(item)
end

---@param item integer
---@param index integer
---@return integer
function List:LastIndexOf(item, index)
end

---@param item integer
---@param index integer
---@param count integer
---@return integer
function List:LastIndexOf(item, index, count)
end

---@param item integer
---@return boolean
function List:Remove(item)
end

---@param match System.Predicate<int>
---@return integer
function List:RemoveAll(match)
end

---@param index integer
---@return void
function List:RemoveAt(index)
end

---@param index integer
---@param count integer
---@return void
function List:RemoveRange(index, count)
end

---@return void
function List:Reverse()
end

---@param index integer
---@param count integer
---@return void
function List:Reverse(index, count)
end

---@return void
function List:Sort()
end

---@param comparer System.Collections.Generic.IComparer<int>
---@return void
function List:Sort(comparer)
end

---@param comparison System.Comparison<int>
---@return void
function List:Sort(comparison)
end

---@param index integer
---@param count integer
---@param comparer System.Collections.Generic.IComparer<int>
---@return void
function List:Sort(index, count, comparer)
end

---@return int[]
function List:ToArray()
end

---@return void
function List:TrimExcess()
end

---@param match System.Predicate<int>
---@return boolean
function List:TrueForAll(match)
end


---@alias Action fun(obj: string): void

---Class containing methods to ease debugging while developing a game.
---@class UnityEngine.Debug: object
---@overload fun(): UnityEngine.Debug
local Debug = {}
---Get default debug logger.
---@type UnityEngine.ILogger
Debug.unityLogger = nil

---Allows you to enable or disable the developer console.
---@type boolean
Debug.developerConsoleEnabled = nil

---Controls whether the development console is visible.
---@type boolean
Debug.developerConsoleVisible = nil

---In the Build Settings dialog there is a check box called "Development Build".
---@type boolean
Debug.isDebugBuild = nil

---@type UnityEngine.ILogger
Debug.logger = nil

---Draws a line between specified start and end points.
---@param start UnityEngine.Vector3 Point in world space where the line should start.
---@param end UnityEngine.Vector3 Point in world space where the line should end.
---@param color UnityEngine.Color Color of the line.
---@param duration number How long the line should be visible for.
---@return void
function Debug.DrawLine(start, _end, color, duration)
end

---Draws a line between specified start and end points.
---@param start UnityEngine.Vector3 Point in world space where the line should start.
---@param end UnityEngine.Vector3 Point in world space where the line should end.
---@param color UnityEngine.Color Color of the line.
---@return void
function Debug.DrawLine(start, _end, color)
end

---Draws a line between specified start and end points.
---@param start UnityEngine.Vector3 Point in world space where the line should start.
---@param end UnityEngine.Vector3 Point in world space where the line should end.
---@return void
function Debug.DrawLine(start, _end)
end

---Draws a line between specified start and end points.
---@param start UnityEngine.Vector3 Point in world space where the line should start.
---@param end UnityEngine.Vector3 Point in world space where the line should end.
---@param color UnityEngine.Color Color of the line.
---@param duration number How long the line should be visible for.
---@param depthTest boolean Determines whether objects closer to the camera obscure the line.
---@return void
function Debug.DrawLine(start, _end, color, duration, depthTest)
end

---Draws a line from start to start + dir in world coordinates.
---@param start UnityEngine.Vector3 Point in world space where the ray should start.
---@param dir UnityEngine.Vector3 Direction and length of the ray.
---@param color UnityEngine.Color Color of the drawn line.
---@param duration number How long the line will be visible for (in seconds).
---@return void
function Debug.DrawRay(start, dir, color, duration)
end

---Draws a line from start to start + dir in world coordinates.
---@param start UnityEngine.Vector3 Point in world space where the ray should start.
---@param dir UnityEngine.Vector3 Direction and length of the ray.
---@param color UnityEngine.Color Color of the drawn line.
---@return void
function Debug.DrawRay(start, dir, color)
end

---Draws a line from start to start + dir in world coordinates.
---@param start UnityEngine.Vector3 Point in world space where the ray should start.
---@param dir UnityEngine.Vector3 Direction and length of the ray.
---@return void
function Debug.DrawRay(start, dir)
end

---Draws a line from start to start + dir in world coordinates.
---@param start UnityEngine.Vector3 Point in world space where the ray should start.
---@param dir UnityEngine.Vector3 Direction and length of the ray.
---@param color UnityEngine.Color Color of the drawn line.
---@param duration number How long the line will be visible for (in seconds).
---@param depthTest boolean Determines whether objects closer to the camera obscure the line.
---@return void
function Debug.DrawRay(start, dir, color, duration, depthTest)
end

---Pauses the editor.
---@return void
function Debug.Break()
end

---@return void
function Debug.DebugBreak()
end

---Populate an unmanaged buffer with the current managed call stack as a sequence of UTF-8 bytes, without allocating GC memory. Returns the number of bytes written into the buffer.
---@param buffer byte* Target buffer to receive the callstack text
---@param bufferMax integer Max number of bytes to write
---@param projectFolder string Project folder path, to clean up path names
---@return integer
function Debug.ExtractStackTraceNoAlloc(buffer, bufferMax, projectFolder)
end

---Logs a message to the Unity Console.
---@param message any String or object to be converted to string representation for display.
---@return void
function Debug.Log(message)
end

---Logs a message to the Unity Console.
---@param message any String or object to be converted to string representation for display.
---@param context UnityEngine.Object Object to which the message applies.
---@return void
function Debug.Log(message, context)
end

---Logs a formatted message to the Unity Console.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.LogFormat(format, args)
end

---Logs a formatted message to the Unity Console.
---@param context UnityEngine.Object Object to which the message applies.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.LogFormat(context, format, args)
end

---Logs a formatted message to the Unity Console.
---@param logType UnityEngine.LogType Type of message e.g. warn or error etc.
---@param logOptions UnityEngine.LogOption Option flags to treat the log message special.
---@param context UnityEngine.Object Object to which the message applies.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.LogFormat(logType, logOptions, context, format, args)
end

---A variant of Debug.Log that logs an error message to the console.
---@param message any String or object to be converted to string representation for display.
---@return void
function Debug.LogError(message)
end

---A variant of Debug.Log that logs an error message to the console.
---@param message any String or object to be converted to string representation for display.
---@param context UnityEngine.Object Object to which the message applies.
---@return void
function Debug.LogError(message, context)
end

---Logs a formatted error message to the Unity console.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.LogErrorFormat(format, args)
end

---Logs a formatted error message to the Unity console.
---@param context UnityEngine.Object Object to which the message applies.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.LogErrorFormat(context, format, args)
end

---Clears errors from the developer console.
---@return void
function Debug.ClearDeveloperConsole()
end

---A variant of Debug.Log that logs an error message to the console.
---@param exception System.Exception Runtime Exception.
---@return void
function Debug.LogException(exception)
end

---A variant of Debug.Log that logs an error message to the console.
---@param exception System.Exception Runtime Exception.
---@param context UnityEngine.Object Object to which the message applies.
---@return void
function Debug.LogException(exception, context)
end

---A variant of Debug.Log that logs a warning message to the console.
---@param message any String or object to be converted to string representation for display.
---@return void
function Debug.LogWarning(message)
end

---A variant of Debug.Log that logs a warning message to the console.
---@param message any String or object to be converted to string representation for display.
---@param context UnityEngine.Object Object to which the message applies.
---@return void
function Debug.LogWarning(message, context)
end

---Logs a formatted warning message to the Unity Console.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.LogWarningFormat(format, args)
end

---Logs a formatted warning message to the Unity Console.
---@param context UnityEngine.Object Object to which the message applies.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.LogWarningFormat(context, format, args)
end

---Assert a condition and logs an error message to the Unity console on failure.
---@param condition boolean Condition you expect to be true.
---@return void
function Debug.Assert(condition)
end

---Assert a condition and logs an error message to the Unity console on failure.
---@param condition boolean Condition you expect to be true.
---@param context UnityEngine.Object Object to which the message applies.
---@return void
function Debug.Assert(condition, context)
end

---Assert a condition and logs an error message to the Unity console on failure.
---@param condition boolean Condition you expect to be true.
---@param message any String or object to be converted to string representation for display.
---@return void
function Debug.Assert(condition, message)
end

---@param condition boolean
---@param message string
---@return void
function Debug.Assert(condition, message)
end

---Assert a condition and logs an error message to the Unity console on failure.
---@param condition boolean Condition you expect to be true.
---@param message any String or object to be converted to string representation for display.
---@param context UnityEngine.Object Object to which the message applies.
---@return void
function Debug.Assert(condition, message, context)
end

---@param condition boolean
---@param message string
---@param context UnityEngine.Object
---@return void
function Debug.Assert(condition, message, context)
end

---Assert a condition and logs a formatted error message to the Unity console on failure.
---@param condition boolean Condition you expect to be true.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.AssertFormat(condition, format, args)
end

---Assert a condition and logs a formatted error message to the Unity console on failure.
---@param condition boolean Condition you expect to be true.
---@param context UnityEngine.Object Object to which the message applies.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.AssertFormat(condition, context, format, args)
end

---A variant of Debug.Log that logs an assertion message to the console.
---@param message any String or object to be converted to string representation for display.
---@return void
function Debug.LogAssertion(message)
end

---A variant of Debug.Log that logs an assertion message to the console.
---@param message any String or object to be converted to string representation for display.
---@param context UnityEngine.Object Object to which the message applies.
---@return void
function Debug.LogAssertion(message, context)
end

---Logs a formatted assertion message to the Unity console.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.LogAssertionFormat(format, args)
end

---Logs a formatted assertion message to the Unity console.
---@param context UnityEngine.Object Object to which the message applies.
---@param format string A composite format string.
---@param args object[] Format arguments.
---@return void
function Debug.LogAssertionFormat(context, format, args)
end

---@param condition boolean
---@param format string
---@param args object[]
---@return void
function Debug.Assert(condition, format, args)
end


---Suspends the coroutine execution for the given amount of seconds using scaled time.
---@class UnityEngine.WaitForSeconds: UnityEngine.YieldInstruction
---@overload fun(seconds: number): UnityEngine.WaitForSeconds
local WaitForSeconds = {}

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/08_Hotfix/HotfixTest2.cs#121:17"
---@class XLuaTest.BaseTest: XLuaTest.BaseTestBase<XLuaTest.InnerTypeTest>
---@overload fun(): XLuaTest.BaseTest
local BaseTest = {}
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/08_Hotfix/HotfixTest2.cs#123:29"
---@param p integer
---@return void
function BaseTest:Foo(p)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/08_Hotfix/HotfixTest2.cs#128:20"
---@param p integer
---@return void
function BaseTest:Proxy(p)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/08_Hotfix/HotfixTest2.cs#133:31"
---@return string
function BaseTest:ToString()
end


---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/02_U3DScripting/LuaBehaviour.cs#24:17"
---@class XLuaTest.LuaBehaviour: UnityEngine.MonoBehaviour
---@overload fun(): XLuaTest.LuaBehaviour
local LuaBehaviour = {}
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/02_U3DScripting/LuaBehaviour.cs#26:25"
---@type UnityEngine.TextAsset
LuaBehaviour.luaScript = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/02_U3DScripting/LuaBehaviour.cs#27:27"
---@type XLuaTest.Injection[]
LuaBehaviour.injections = nil


---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#16:18"
---@class XLuaTest.Pedding: System.ValueType
---@overload fun(): XLuaTest.Pedding
local Pedding = {}
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#18:20"
---@type integer
Pedding.c = nil


---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#23:18"
---@class XLuaTest.MyStruct: System.ValueType
---@overload fun(p1: integer, p2: integer): XLuaTest.MyStruct
---@overload fun(): XLuaTest.MyStruct
local MyStruct = {}
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#32:19"
---@type integer
MyStruct.a = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#33:19"
---@type integer
MyStruct.b = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#34:23"
---@type number
MyStruct.c = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#35:23"
---@type XLuaTest.Pedding
MyStruct.e = nil


---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#39:16"
---@enum XLuaTest.MyEnum
local MyEnum = {
    ---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#41:8"
    E1 = 0,

    ---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#42:8"
    E2 = 1,

}

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#70:17"
---@class XLuaTest.NoGc: UnityEngine.MonoBehaviour
---@overload fun(): XLuaTest.NoGc
local NoGc = {}
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#86:24"
---@type double[]
NoGc.a1 = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#88:25"
---@type UnityEngine.Vector3[]
NoGc.a2 = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#90:26"
---@type XLuaTest.MyStruct[]
NoGc.a3 = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#92:24"
---@type XLuaTest.MyEnum[]
NoGc.a4 = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#94:25"
---@type decimal[]
NoGc.a5 = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#96:21"
---@param p number
---@return number
function NoGc:FloatParamMethod(p)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#101:23"
---@param p UnityEngine.Vector3
---@return UnityEngine.Vector3
function NoGc:Vector3ParamMethod(p)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#106:24"
---@param p XLuaTest.MyStruct
---@return XLuaTest.MyStruct
function NoGc:StructParamMethod(p)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#111:22"
---@param p XLuaTest.MyEnum
---@return XLuaTest.MyEnum
function NoGc:EnumParamMethod(p)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Examples/05_NoGc/NoGc.cs#116:23"
---@param p number
---@return number
function NoGc:DecimalParamMethod(p)
end


---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#17:14"
---@class Tutorial.BaseClass: object
---@overload fun(): Tutorial.BaseClass
local BaseClass = {}
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#24:20"
---@type integer
BaseClass.BSF = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#31:13"
---@type integer
BaseClass.BMF = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#19:21"
---@return void
function BaseClass.BSFunc()
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#26:14"
---@return void
function BaseClass:BMFunc()
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#168:20"
---@return integer
function BaseClass:GetSomeBaseData()
end


---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#41:13"
---@enum Tutorial.TestEnum
local TestEnum = {
    ---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#43:2"
    E1 = 0,

    ---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#44:2"
    E2 = 1,

}

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#49:14"
---@class Tutorial.DerivedClass: Tutorial.BaseClass
---@overload fun(): Tutorial.DerivedClass
local DerivedClass = {}
---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#63:13"
---@type integer
DerivedClass.DMF = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#115:24"
---@type System.Action<string>
DerivedClass.TestDelegate = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#120:22"
---@type System.Action
DerivedClass.TestEvent = nil

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#58:14"
---@return void
function DerivedClass:DMFunc()
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#65:16"
---@param p1 Tutorial.Param1
---@param p2 integer
---@param luafunc System.Action
---@return number, integer, string, System.Action
function DerivedClass:ComplexFunc(p1, p2, p3, luafunc, csfunc)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#78:14"
---@param i integer
---@return void
function DerivedClass:TestFunc(i)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#83:14"
---@param i string
---@return void
function DerivedClass:TestFunc(i)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#88:38"
---@param a Tutorial.DerivedClass
---@param b Tutorial.DerivedClass
---@return Tutorial.DerivedClass
function DerivedClass.op_Addition(a, b)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#95:14"
---@param a integer
---@param b string
---@param c string
---@return void
function DerivedClass:DefaultValueFunc(a, b, c)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#100:14"
---@param a integer
---@param strs string[]
---@return void
function DerivedClass:VariableParamsFunc(a, strs)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#109:18"
---@param e Tutorial.TestEnum
---@return Tutorial.TestEnum
function DerivedClass:EnumTestFunc(e)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#120:22"
---@param value System.Action
---@return void
function DerivedClass:add_TestEvent(value)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#120:22"
---@param value System.Action
---@return void
function DerivedClass:remove_TestEvent(value)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#122:14"
---@return void
function DerivedClass:CallEvent()
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#127:15"
---@param n integer
---@return integer
function DerivedClass:TestLong(n)
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#142:15"
---@return Tutorial.ICalc
function DerivedClass:GetCalc()
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#147:14"
---@return void
function DerivedClass:GenericMethod()
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#162:20"
---@return integer
function DerivedClass:GetSomeData()
end

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#174:21"
---@return void
function DerivedClass:GenericMethodOfString()
end


---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#52:14"
---@enum Tutorial.DerivedClass.TestEnumInner
local TestEnumInner = {
    ---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#54:3"
    E3 = 0,

    ---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#55:3"
    E4 = 1,

}

---@interface ICalc

---@source "file:///G:/UGit/Xlua背包/Assets/XLua/Tutorial/LuaCallCSharp/LuaCallCs.cs#160:21"
---@class Tutorial.DerivedClassExtensions: object
local DerivedClassExtensions = {}

---Position, size, anchor and pivot information for a rectangle.
---@class UnityEngine.RectTransform: UnityEngine.Transform, System.Collections.IEnumerable
---@overload fun(): UnityEngine.RectTransform
local RectTransform = {}
---The calculated rectangle in the local space of the Transform.
---@type UnityEngine.Rect
RectTransform.rect = nil

---The normalized position in the parent RectTransform that the lower left corner is anchored to.
---@type UnityEngine.Vector2
RectTransform.anchorMin = nil

---The normalized position in the parent RectTransform that the upper right corner is anchored to.
---@type UnityEngine.Vector2
RectTransform.anchorMax = nil

---The position of the pivot of this RectTransform relative to the anchor reference point.
---@type UnityEngine.Vector2
RectTransform.anchoredPosition = nil

---The size of this RectTransform relative to the distances between the anchors.
---@type UnityEngine.Vector2
RectTransform.sizeDelta = nil

---The normalized position in this RectTransform that it rotates around.
---@type UnityEngine.Vector2
RectTransform.pivot = nil

---The 3D position of the pivot of this RectTransform relative to the anchor reference point.
---@type UnityEngine.Vector3
RectTransform.anchoredPosition3D = nil

---The offset of the lower left corner of the rectangle relative to the lower left anchor.
---@type UnityEngine.Vector2
RectTransform.offsetMin = nil

---The offset of the upper right corner of the rectangle relative to the upper right anchor.
---@type UnityEngine.Vector2
RectTransform.offsetMax = nil

---The object that is driving the values of this RectTransform. Value is null if not driven.
---@type UnityEngine.Object
RectTransform.drivenByObject = nil

---@type UnityEngine.RectTransform.ReapplyDrivenProperties
RectTransform.reapplyDrivenProperties = nil

---@param value UnityEngine.RectTransform.ReapplyDrivenProperties
---@return void
function RectTransform.add_reapplyDrivenProperties(value)
end

---@param value UnityEngine.RectTransform.ReapplyDrivenProperties
---@return void
function RectTransform.remove_reapplyDrivenProperties(value)
end

---Force the recalculation of RectTransforms internal data.
---@return void
function RectTransform:ForceUpdateRectTransforms()
end

---Get the corners of the calculated rectangle in the local space of its Transform.
---@param fourCornersArray UnityEngine.Vector3[] The array that corners are filled into.
---@return void
function RectTransform:GetLocalCorners(fourCornersArray)
end

---Get the corners of the calculated rectangle in world space.
---@param fourCornersArray UnityEngine.Vector3[] The array that corners are filled into.
---@return void
function RectTransform:GetWorldCorners(fourCornersArray)
end

---@param edge UnityEngine.RectTransform.Edge
---@param inset number
---@param size number
---@return void
function RectTransform:SetInsetAndSizeFromParentEdge(edge, inset, size)
end

---@param axis UnityEngine.RectTransform.Axis
---@param size number
---@return void
function RectTransform:SetSizeWithCurrentAnchors(axis, size)
end


---Sprite Atlas is an asset created within Unity. It is part of the built-in sprite packing solution.
---@class UnityEngine.U2D.SpriteAtlas: UnityEngine.Object
---@overload fun(): UnityEngine.U2D.SpriteAtlas
local SpriteAtlas = {}
---Return true if this SpriteAtlas is a variant.
---@type boolean
SpriteAtlas.isVariant = nil

---Get the tag of this SpriteAtlas.
---@type string
SpriteAtlas.tag = nil

---Get the total number of Sprite packed into this atlas.
---@type integer
SpriteAtlas.spriteCount = nil

---Return true if Sprite is packed into this SpriteAtlas.
---@param sprite UnityEngine.Sprite
---@return boolean
function SpriteAtlas:CanBindTo(sprite)
end

---Clone the first Sprite in this atlas that matches the name packed in this atlas and return it.
---@param name string The name of the Sprite.
---@return UnityEngine.Sprite
function SpriteAtlas:GetSprite(name)
end

---The size of the returned array.
---@param sprites UnityEngine.Sprite[] Array of Sprite that will be filled.
---@return integer
function SpriteAtlas:GetSprites(sprites)
end

---Clone all the Sprite matching the name in this atlas and fill them into the supplied array.
---@param sprites UnityEngine.Sprite[] Array of Sprite that will be filled.
---@param name string The name of the Sprite.
---@return integer
function SpriteAtlas:GetSprites(sprites, name)
end


