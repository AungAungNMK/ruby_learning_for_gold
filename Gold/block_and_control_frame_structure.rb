typedef struct rb_block_struct {
    VALUE self;
    VALUE klass;
    VALUE *ep;
    rb_iseq_t *iseq;
    VALUE proc;
    }rb_block_t;
    #klass :current object.
    #proc object from the block.

