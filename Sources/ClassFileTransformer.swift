
import java_swift

/// generated by: genswift.java 'java/lang|java/util|java/sql|java/awt|javax/swing' ///

/// interface java.lang.instrument.ClassFileTransformer ///

public protocol ClassFileTransformer: JavaProtocol {

    /// public abstract byte[] java.lang.instrument.ClassFileTransformer.transform(java.lang.ClassLoader,java.lang.String,java.lang.Class,java.security.ProtectionDomain,byte[]) throws java.lang.instrument.IllegalClassFormatException

    func transform( loader: ClassLoader?, className: String?, classBeingRedefined: java_swift.JavaClass?, protectionDomain: /* class java.security.ProtectionDomain */ UnavailableObject?, classfileBuffer: [Int8]? ) throws /* java.lang.instrument.IllegalClassFormatException */ -> [Int8]!

}


open class ClassFileTransformerForward: JNIObjectForward, ClassFileTransformer {

    private static var ClassFileTransformerJNIClass: jclass?

    /// public abstract byte[] java.lang.instrument.ClassFileTransformer.transform(java.lang.ClassLoader,java.lang.String,java.lang.Class,java.security.ProtectionDomain,byte[]) throws java.lang.instrument.IllegalClassFormatException

    private static var transform_MethodID_2: jmethodID?

    open func transform( loader: ClassLoader?, className: String?, classBeingRedefined: java_swift.JavaClass?, protectionDomain: /* class java.security.ProtectionDomain */ UnavailableObject?, classfileBuffer: [Int8]? ) throws /* java.lang.instrument.IllegalClassFormatException */ -> [Int8]! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 5 )
        __args[0] = JNIType.toJava( value: loader, locals: &__locals )
        __args[1] = JNIType.toJava( value: className, locals: &__locals )
        __args[2] = JNIType.toJava( value: classBeingRedefined, locals: &__locals )
        __args[3] = JNIType.toJava( value: protectionDomain, locals: &__locals )
        __args[4] = JNIType.toJava( value: classfileBuffer, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "transform", methodSig: "(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B", methodCache: &ClassFileTransformerForward.transform_MethodID_2, args: &__args, locals: &__locals )
        if let throwable = JNI.ExceptionCheck() {
            defer { JNI.DeleteLocalRef( throwable ) }
            throw IllegalClassFormatException( javaObject: throwable )
        }
        return JNIType.toSwift( type: [Int8].self, from: __return )
    }

    open func transform( _ _loader: ClassLoader?, _ _className: String?, _ _classBeingRedefined: java_swift.JavaClass?, _ _protectionDomain: /* class java.security.ProtectionDomain */ UnavailableObject?, _ _classfileBuffer: [Int8]? ) throws /* java.lang.instrument.IllegalClassFormatException */ -> [Int8]! {
        return try transform( loader: _loader, className: _className, classBeingRedefined: _classBeingRedefined, protectionDomain: _protectionDomain, classfileBuffer: _classfileBuffer )
    }

}

