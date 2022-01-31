cdef extern from "<stack>" namespace "std" nogil:
    cdef cppclass stack[T]:
        ctypedef T value_type
        stack() except +
        stack(stack&) except +
        #stack(Container&)
        bint empty()
        void pop()
        void push(T&) expect +
        size_t size()
        T& top()
