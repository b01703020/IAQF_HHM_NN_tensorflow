ш 
ЬЂ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
Ћ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.7.02v2.7.0-0-gc256c071bb28ІА
|
normalization_1/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_namenormalization_1/mean
u
(normalization_1/mean/Read/ReadVariableOpReadVariableOpnormalization_1/mean*
_output_shapes
: *
dtype0

normalization_1/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namenormalization_1/variance
}
,normalization_1/variance/Read/ReadVariableOpReadVariableOpnormalization_1/variance*
_output_shapes
: *
dtype0
~
normalization_1/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_namenormalization_1/count
w
)normalization_1/count/Read/ReadVariableOpReadVariableOpnormalization_1/count*
_output_shapes
: *
dtype0	
r
head/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namehead/kernel
k
head/kernel/Read/ReadVariableOpReadVariableOphead/kernel*
_output_shapes

:*
dtype0
j
	head/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	head/bias
c
head/bias/Read/ReadVariableOpReadVariableOp	head/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
І
%simple_rnn_1/simple_rnn_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:1 *6
shared_name'%simple_rnn_1/simple_rnn_cell_1/kernel

9simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_1/simple_rnn_cell_1/kernel*
_output_shapes

:1 *
dtype0
К
/simple_rnn_1/simple_rnn_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *@
shared_name1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
Г
Csimple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel*
_output_shapes

:  *
dtype0

#simple_rnn_1/simple_rnn_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#simple_rnn_1/simple_rnn_cell_1/bias

7simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_1/simple_rnn_cell_1/bias*
_output_shapes
: *
dtype0
І
%simple_rnn_2/simple_rnn_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%simple_rnn_2/simple_rnn_cell_2/kernel

9simple_rnn_2/simple_rnn_cell_2/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_2/simple_rnn_cell_2/kernel*
_output_shapes

: *
dtype0
К
/simple_rnn_2/simple_rnn_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel
Г
Csimple_rnn_2/simple_rnn_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel*
_output_shapes

:*
dtype0

#simple_rnn_2/simple_rnn_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#simple_rnn_2/simple_rnn_cell_2/bias

7simple_rnn_2/simple_rnn_cell_2/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_2/simple_rnn_cell_2/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:Ш*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:Ш*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:Ш*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:Ш*
dtype0

Adam/head/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*#
shared_nameAdam/head/kernel/m
y
&Adam/head/kernel/m/Read/ReadVariableOpReadVariableOpAdam/head/kernel/m*
_output_shapes

:*
dtype0
x
Adam/head/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/head/bias/m
q
$Adam/head/bias/m/Read/ReadVariableOpReadVariableOpAdam/head/bias/m*
_output_shapes
:*
dtype0
Д
,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:1 *=
shared_name.,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/m
­
@Adam/simple_rnn_1/simple_rnn_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/m*
_output_shapes

:1 *
dtype0
Ш
6Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *G
shared_name86Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m
С
JAdam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m*
_output_shapes

:  *
dtype0
Ќ
*Adam/simple_rnn_1/simple_rnn_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/simple_rnn_1/simple_rnn_cell_1/bias/m
Ѕ
>Adam/simple_rnn_1/simple_rnn_cell_1/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_1/simple_rnn_cell_1/bias/m*
_output_shapes
: *
dtype0
Д
,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/m
­
@Adam/simple_rnn_2/simple_rnn_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/m*
_output_shapes

: *
dtype0
Ш
6Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*G
shared_name86Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m
С
JAdam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m*
_output_shapes

:*
dtype0
Ќ
*Adam/simple_rnn_2/simple_rnn_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/simple_rnn_2/simple_rnn_cell_2/bias/m
Ѕ
>Adam/simple_rnn_2/simple_rnn_cell_2/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_2/simple_rnn_cell_2/bias/m*
_output_shapes
:*
dtype0

Adam/head/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*#
shared_nameAdam/head/kernel/v
y
&Adam/head/kernel/v/Read/ReadVariableOpReadVariableOpAdam/head/kernel/v*
_output_shapes

:*
dtype0
x
Adam/head/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/head/bias/v
q
$Adam/head/bias/v/Read/ReadVariableOpReadVariableOpAdam/head/bias/v*
_output_shapes
:*
dtype0
Д
,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:1 *=
shared_name.,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/v
­
@Adam/simple_rnn_1/simple_rnn_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/v*
_output_shapes

:1 *
dtype0
Ш
6Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *G
shared_name86Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v
С
JAdam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v*
_output_shapes

:  *
dtype0
Ќ
*Adam/simple_rnn_1/simple_rnn_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/simple_rnn_1/simple_rnn_cell_1/bias/v
Ѕ
>Adam/simple_rnn_1/simple_rnn_cell_1/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_1/simple_rnn_cell_1/bias/v*
_output_shapes
: *
dtype0
Д
,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/v
­
@Adam/simple_rnn_2/simple_rnn_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/v*
_output_shapes

: *
dtype0
Ш
6Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*G
shared_name86Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v
С
JAdam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v*
_output_shapes

:*
dtype0
Ќ
*Adam/simple_rnn_2/simple_rnn_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/simple_rnn_2/simple_rnn_cell_2/bias/v
Ѕ
>Adam/simple_rnn_2/simple_rnn_cell_2/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_2/simple_rnn_cell_2/bias/v*
_output_shapes
:*
dtype0
b
ConstConst*"
_output_shapes
:*
dtype0*!
valueB*    
d
Const_1Const*"
_output_shapes
:*
dtype0*!
valueB*  ?

NoOpNoOp
Н@
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*і?
valueь?Bщ? Bт?
Ї
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer-4
layer_with_weights-3
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
Ѕ

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
R
%	variables
&trainable_variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
о
/iter

0beta_1

1beta_2
	2decay
3learning_rate)m~*m4m5m6m7m8m9m)v*v4v5v6v7v8v9v
N
0
1
2
43
54
65
76
87
98
)9
*10
8
40
51
62
73
84
95
)6
*7
 
­
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
	trainable_variables

regularization_losses
 
 
 
 
 
^\
VARIABLE_VALUEnormalization_1/mean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEnormalization_1/variance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEnormalization_1/count5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE
 
~

4kernel
5recurrent_kernel
6bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
 

40
51
62

40
51
62
 
Й

Cstates
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
~

7kernel
8recurrent_kernel
9bias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
 

70
81
92

70
81
92
 
Й

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
­
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
!	variables
"trainable_variables
#regularization_losses
 
 
 
­
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
%	variables
&trainable_variables
'regularization_losses
WU
VARIABLE_VALUEhead/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	head/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
­
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
+	variables
,trainable_variables
-regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_1/simple_rnn_cell_1/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#simple_rnn_1/simple_rnn_cell_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_2/simple_rnn_cell_2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#simple_rnn_2/simple_rnn_cell_2/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
*
0
1
2
3
4
5

b0
c1
d2
 
 

40
51
62

40
51
62
 
­
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
?	variables
@trainable_variables
Aregularization_losses
 
 

0
 
 
 

70
81
92

70
81
92
 
­
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ototal
	pcount
q	variables
r	keras_api
D
	stotal
	tcount
u
_fn_kwargs
v	variables
w	keras_api
p
xtrue_positives
ytrue_negatives
zfalse_positives
{false_negatives
|	variables
}	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

o0
p1

q	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

s0
t1

v	variables
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE

x0
y1
z2
{3

|	variables
zx
VARIABLE_VALUEAdam/head/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/head/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE6Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/simple_rnn_1/simple_rnn_cell_1/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE6Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/simple_rnn_2/simple_rnn_cell_2/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/head/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/head/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE6Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/simple_rnn_1/simple_rnn_cell_1/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE6Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/simple_rnn_2/simple_rnn_cell_2/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_2Placeholder*,
_output_shapes
:џџџџџџџџџД1*
dtype0*!
shape:џџџџџџџџџД1
щ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2ConstConst_1%simple_rnn_1/simple_rnn_cell_1/kernel#simple_rnn_1/simple_rnn_cell_1/bias/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel%simple_rnn_2/simple_rnn_cell_2/kernel#simple_rnn_2/simple_rnn_cell_2/bias/simple_rnn_2/simple_rnn_cell_2/recurrent_kernelhead/kernel	head/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_175962
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ќ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(normalization_1/mean/Read/ReadVariableOp,normalization_1/variance/Read/ReadVariableOp)normalization_1/count/Read/ReadVariableOphead/kernel/Read/ReadVariableOphead/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp9simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpCsimple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOp7simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOp9simple_rnn_2/simple_rnn_cell_2/kernel/Read/ReadVariableOpCsimple_rnn_2/simple_rnn_cell_2/recurrent_kernel/Read/ReadVariableOp7simple_rnn_2/simple_rnn_cell_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp&Adam/head/kernel/m/Read/ReadVariableOp$Adam/head/bias/m/Read/ReadVariableOp@Adam/simple_rnn_1/simple_rnn_cell_1/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_1/simple_rnn_cell_1/bias/m/Read/ReadVariableOp@Adam/simple_rnn_2/simple_rnn_cell_2/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_2/simple_rnn_cell_2/bias/m/Read/ReadVariableOp&Adam/head/kernel/v/Read/ReadVariableOp$Adam/head/bias/v/Read/ReadVariableOp@Adam/simple_rnn_1/simple_rnn_cell_1/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_1/simple_rnn_cell_1/bias/v/Read/ReadVariableOp@Adam/simple_rnn_2/simple_rnn_cell_2/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_2/simple_rnn_cell_2/bias/v/Read/ReadVariableOpConst_2*5
Tin.
,2*		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_177916
е
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenormalization_1/meannormalization_1/variancenormalization_1/counthead/kernel	head/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate%simple_rnn_1/simple_rnn_cell_1/kernel/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel#simple_rnn_1/simple_rnn_cell_1/bias%simple_rnn_2/simple_rnn_cell_2/kernel/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel#simple_rnn_2/simple_rnn_cell_2/biastotalcounttotal_1count_1true_positivestrue_negativesfalse_positivesfalse_negativesAdam/head/kernel/mAdam/head/bias/m,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/m6Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m*Adam/simple_rnn_1/simple_rnn_cell_1/bias/m,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/m6Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m*Adam/simple_rnn_2/simple_rnn_cell_2/bias/mAdam/head/kernel/vAdam/head/bias/v,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/v6Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v*Adam/simple_rnn_1/simple_rnn_cell_1/bias/v,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/v6Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v*Adam/simple_rnn_2/simple_rnn_cell_2/bias/v*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_178046ё
М

к
2__inference_simple_rnn_cell_2_layer_call_fn_177737

inputs
states_0
unknown: 
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_174983o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ :џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0
љ 
б
while_body_174876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_2_174898_0: .
 while_simple_rnn_cell_2_174900_0:2
 while_simple_rnn_cell_2_174902_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_2_174898: ,
while_simple_rnn_cell_2_174900:0
while_simple_rnn_cell_2_174902:Ђ/while/simple_rnn_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0Ѕ
/while/simple_rnn_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_2_174898_0 while_simple_rnn_cell_2_174900_0 while_simple_rnn_cell_2_174902_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_174863с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ~

while/NoOpNoOp0^while/simple_rnn_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_2_174898 while_simple_rnn_cell_2_174898_0"B
while_simple_rnn_cell_2_174900 while_simple_rnn_cell_2_174900_0"B
while_simple_rnn_cell_2_174902 while_simple_rnn_cell_2_174902_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2b
/while/simple_rnn_cell_2/StatefulPartitionedCall/while/simple_rnn_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ь6

H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_174627

inputs*
simple_rnn_cell_1_174552:1 &
simple_rnn_cell_1_174554: *
simple_rnn_cell_1_174556:  
identityЂ)simple_rnn_cell_1/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : _
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_maskъ
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_174552simple_rnn_cell_1_174554simple_rnn_cell_1_174556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_174551n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_174552simple_rnn_cell_1_174554simple_rnn_cell_1_174556*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_174564*
condR
while_cond_174563*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ z
NoOpNoOp*^simple_rnn_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ1: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ1
 
_user_specified_nameinputs
D
Л
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_175244

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:1 ?
1simple_rnn_cell_1_biasadd_readvariableop_resource: D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:  
identityЂ(simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_1/MatMul/ReadVariableOpЂ)simple_rnn_cell_1/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : _
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_maski
!simple_rnn_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
simple_rnn_cell_1/ones_likeFill*simple_rnn_cell_1/ones_like/Shape:output:0*simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/mulMulstrided_slice_2:output:0$simple_rnn_cell_1/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:1 *
dtype0 
simple_rnn_cell_1/MatMulMatMulsimple_rnn_cell_1/mul:z:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_175174*
condR
while_cond_175173*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџД c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџД Я
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД1: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs


ё
@__inference_head_layer_call_and_return_conditional_losses_175397

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
к
Њ
while_cond_175670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_175670___redundant_placeholder04
0while_while_cond_175670___redundant_placeholder14
0while_while_cond_175670___redundant_placeholder24
0while_while_cond_175670___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
ѓ	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_177611

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ш6

H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_175102

inputs*
simple_rnn_cell_2_175027: &
simple_rnn_cell_2_175029:*
simple_rnn_cell_2_175031:
identityЂ)simple_rnn_cell_2/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maskъ
)simple_rnn_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_2_175027simple_rnn_cell_2_175029simple_rnn_cell_2_175031*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_174983n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_2_175027simple_rnn_cell_2_175029simple_rnn_cell_2_175031*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_175039*
condR
while_cond_175038*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџz
NoOpNoOp*^simple_rnn_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ : : : 2V
)simple_rnn_cell_2/StatefulPartitionedCall)simple_rnn_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ш;
Ш
while_body_176747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:1 G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0: L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:1 E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource: J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:  Ђ.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_1/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0
'while/simple_rnn_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?П
!while/simple_rnn_cell_1/ones_likeFill0while/simple_rnn_cell_1/ones_like/Shape:output:00while/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1j
%while/simple_rnn_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?И
#while/simple_rnn_cell_1/dropout/MulMul*while/simple_rnn_cell_1/ones_like:output:0.while/simple_rnn_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
%while/simple_rnn_cell_1/dropout/ShapeShape*while/simple_rnn_cell_1/ones_like:output:0*
T0*
_output_shapes
:к
<while/simple_rnn_cell_1/dropout/random_uniform/RandomUniformRandomUniform.while/simple_rnn_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1*
dtype0*
seedБџх)*
seed2ћЏs
.while/simple_rnn_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=ю
,while/simple_rnn_cell_1/dropout/GreaterEqualGreaterEqualEwhile/simple_rnn_cell_1/dropout/random_uniform/RandomUniform:output:07while/simple_rnn_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
$while/simple_rnn_cell_1/dropout/CastCast0while/simple_rnn_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ1Б
%while/simple_rnn_cell_1/dropout/Mul_1Mul'while/simple_rnn_cell_1/dropout/Mul:z:0(while/simple_rnn_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ1Б
while/simple_rnn_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/simple_rnn_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ1І
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:1 *
dtype0В
while/simple_rnn_cell_1/MatMulMatMulwhile/simple_rnn_cell_1/mul:z:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Є
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0О
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Њ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0Њ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ќ
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ п

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 

З
-__inference_simple_rnn_2_layer_call_fn_177114

inputs
unknown: 
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_175363o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџД 
 
_user_specified_nameinputs
D
Л
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_176945

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:1 ?
1simple_rnn_cell_1_biasadd_readvariableop_resource: D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:  
identityЂ(simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_1/MatMul/ReadVariableOpЂ)simple_rnn_cell_1/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : _
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_maski
!simple_rnn_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
simple_rnn_cell_1/ones_likeFill*simple_rnn_cell_1/ones_like/Shape:output:0*simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/mulMulstrided_slice_2:output:0$simple_rnn_cell_1/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:1 *
dtype0 
simple_rnn_cell_1/MatMulMatMulsimple_rnn_cell_1/mul:z:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_176875*
condR
while_cond_176874*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџД c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџД Я
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД1: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs
1
Ш
while_body_176875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:1 G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0: L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:1 E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource: J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:  Ђ.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_1/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0
'while/simple_rnn_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?П
!while/simple_rnn_cell_1/ones_likeFill0while/simple_rnn_cell_1/ones_like/Shape:output:00while/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1В
while/simple_rnn_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/simple_rnn_cell_1/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1І
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:1 *
dtype0В
while/simple_rnn_cell_1/MatMulMatMulwhile/simple_rnn_cell_1/mul:z:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Є
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0О
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Њ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0Њ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ќ
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ п

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 

З
-__inference_simple_rnn_1_layer_call_fn_176558

inputs
unknown:1 
	unknown_0: 
	unknown_1:  
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџД *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_175244t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџД `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД1: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs
Њ,
Ш
while_body_177171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_2_matmul_readvariableop_resource_0: G
9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_2_matmul_readvariableop_resource: E
7while_simple_rnn_cell_2_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:Ђ.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_2/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0І
-while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_2_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0У
while/simple_rnn_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0О
while/simple_rnn_cell_2/BiasAddBiasAdd(while/simple_rnn_cell_2/MatMul:product:06while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЊ
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Њ
 while/simple_rnn_cell_2/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
while/simple_rnn_cell_2/addAddV2(while/simple_rnn_cell_2/BiasAdd:output:0*while/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџw
while/simple_rnn_cell_2/TanhTanhwhile/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЩ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_2/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_2/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџп

while/NoOpNoOp/^while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_2/MatMul/ReadVariableOp0^while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_2_biasadd_readvariableop_resource9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_2_matmul_readvariableop_resource8while_simple_rnn_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2`
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_2/MatMul/ReadVariableOp-while/simple_rnn_cell_2/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
к
Њ
while_cond_177506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177506___redundant_placeholder04
0while_while_cond_177506___redundant_placeholder14
0while_while_cond_177506___redundant_placeholder24
0while_while_cond_177506___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
к
Њ
while_cond_176746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_176746___redundant_placeholder04
0while_while_cond_176746___redundant_placeholder14
0while_while_cond_176746___redundant_placeholder24
0while_while_cond_176746___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
и
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_175384

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
к
Њ
while_cond_174563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_174563___redundant_placeholder04
0while_while_cond_174563___redundant_placeholder14
0while_while_cond_174563___redundant_placeholder24
0while_while_cond_174563___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
­Ь

!__inference__wrapped_model_174495
input_2&
"sequential_1_normalization_1_sub_y'
#sequential_1_normalization_1_sqrt_x\
Jsequential_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:1 Y
Ksequential_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource: ^
Lsequential_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:  \
Jsequential_1_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource: Y
Ksequential_1_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource:^
Lsequential_1_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource:B
0sequential_1_head_matmul_readvariableop_resource:?
1sequential_1_head_biasadd_readvariableop_resource:
identityЂ(sequential_1/head/BiasAdd/ReadVariableOpЂ'sequential_1/head/MatMul/ReadVariableOpЂBsequential_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂAsequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpЂCsequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpЂsequential_1/simple_rnn_1/whileЂBsequential_1/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂAsequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpЂCsequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpЂsequential_1/simple_rnn_2/while
 sequential_1/normalization_1/subSubinput_2"sequential_1_normalization_1_sub_y*
T0*,
_output_shapes
:џџџџџџџџџД1{
!sequential_1/normalization_1/SqrtSqrt#sequential_1_normalization_1_sqrt_x*
T0*"
_output_shapes
:k
&sequential_1/normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж3Д
$sequential_1/normalization_1/MaximumMaximum%sequential_1/normalization_1/Sqrt:y:0/sequential_1/normalization_1/Maximum/y:output:0*
T0*"
_output_shapes
:Ж
$sequential_1/normalization_1/truedivRealDiv$sequential_1/normalization_1/sub:z:0(sequential_1/normalization_1/Maximum:z:0*
T0*,
_output_shapes
:џџџџџџџџџД1w
sequential_1/simple_rnn_1/ShapeShape(sequential_1/normalization_1/truediv:z:0*
T0*
_output_shapes
:w
-sequential_1/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_1/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_1/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential_1/simple_rnn_1/strided_sliceStridedSlice(sequential_1/simple_rnn_1/Shape:output:06sequential_1/simple_rnn_1/strided_slice/stack:output:08sequential_1/simple_rnn_1/strided_slice/stack_1:output:08sequential_1/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_1/simple_rnn_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : ­
#sequential_1/simple_rnn_1/zeros/mulMul0sequential_1/simple_rnn_1/strided_slice:output:0.sequential_1/simple_rnn_1/zeros/mul/y:output:0*
T0*
_output_shapes
: i
&sequential_1/simple_rnn_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шЇ
$sequential_1/simple_rnn_1/zeros/LessLess'sequential_1/simple_rnn_1/zeros/mul:z:0/sequential_1/simple_rnn_1/zeros/Less/y:output:0*
T0*
_output_shapes
: j
(sequential_1/simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : С
&sequential_1/simple_rnn_1/zeros/packedPack0sequential_1/simple_rnn_1/strided_slice:output:01sequential_1/simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_1/simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential_1/simple_rnn_1/zerosFill/sequential_1/simple_rnn_1/zeros/packed:output:0.sequential_1/simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ }
(sequential_1/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ф
#sequential_1/simple_rnn_1/transpose	Transpose(sequential_1/normalization_1/truediv:z:01sequential_1/simple_rnn_1/transpose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ1x
!sequential_1/simple_rnn_1/Shape_1Shape'sequential_1/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:y
/sequential_1/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_1/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_1/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:н
)sequential_1/simple_rnn_1/strided_slice_1StridedSlice*sequential_1/simple_rnn_1/Shape_1:output:08sequential_1/simple_rnn_1/strided_slice_1/stack:output:0:sequential_1/simple_rnn_1/strided_slice_1/stack_1:output:0:sequential_1/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5sequential_1/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
'sequential_1/simple_rnn_1/TensorArrayV2TensorListReserve>sequential_1/simple_rnn_1/TensorArrayV2/element_shape:output:02sequential_1/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв 
Osequential_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   Ў
Asequential_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_1/simple_rnn_1/transpose:y:0Xsequential_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвy
/sequential_1/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_1/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_1/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
)sequential_1/simple_rnn_1/strided_slice_2StridedSlice'sequential_1/simple_rnn_1/transpose:y:08sequential_1/simple_rnn_1/strided_slice_2/stack:output:0:sequential_1/simple_rnn_1/strided_slice_2/stack_1:output:0:sequential_1/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_mask
;sequential_1/simple_rnn_1/simple_rnn_cell_1/ones_like/ShapeShape2sequential_1/simple_rnn_1/strided_slice_2:output:0*
T0*
_output_shapes
:
;sequential_1/simple_rnn_1/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ћ
5sequential_1/simple_rnn_1/simple_rnn_cell_1/ones_likeFillDsequential_1/simple_rnn_1/simple_rnn_cell_1/ones_like/Shape:output:0Dsequential_1/simple_rnn_1/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1м
/sequential_1/simple_rnn_1/simple_rnn_cell_1/mulMul2sequential_1/simple_rnn_1/strided_slice_2:output:0>sequential_1/simple_rnn_1/simple_rnn_cell_1/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1Ь
Asequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpJsequential_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:1 *
dtype0ю
2sequential_1/simple_rnn_1/simple_rnn_cell_1/MatMulMatMul3sequential_1/simple_rnn_1/simple_rnn_cell_1/mul:z:0Isequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ъ
Bsequential_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpKsequential_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0њ
3sequential_1/simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd<sequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0Jsequential_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ а
Csequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpLsequential_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0ч
4sequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMul(sequential_1/simple_rnn_1/zeros:output:0Ksequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ ш
/sequential_1/simple_rnn_1/simple_rnn_cell_1/addAddV2<sequential_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:0>sequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
0sequential_1/simple_rnn_1/simple_rnn_cell_1/TanhTanh3sequential_1/simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ 
7sequential_1/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    
)sequential_1/simple_rnn_1/TensorArrayV2_1TensorListReserve@sequential_1/simple_rnn_1/TensorArrayV2_1/element_shape:output:02sequential_1/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв`
sequential_1/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_1/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџn
,sequential_1/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
sequential_1/simple_rnn_1/whileWhile5sequential_1/simple_rnn_1/while/loop_counter:output:0;sequential_1/simple_rnn_1/while/maximum_iterations:output:0'sequential_1/simple_rnn_1/time:output:02sequential_1/simple_rnn_1/TensorArrayV2_1:handle:0(sequential_1/simple_rnn_1/zeros:output:02sequential_1/simple_rnn_1/strided_slice_1:output:0Qsequential_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_1_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceKsequential_1_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceLsequential_1_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *7
body/R-
+sequential_1_simple_rnn_1_while_body_174307*7
cond/R-
+sequential_1_simple_rnn_1_while_cond_174306*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
Jsequential_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    
<sequential_1/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_1/simple_rnn_1/while:output:3Ssequential_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ *
element_dtype0
/sequential_1/simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ{
1sequential_1/simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_1/simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
)sequential_1/simple_rnn_1/strided_slice_3StridedSliceEsequential_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:08sequential_1/simple_rnn_1/strided_slice_3/stack:output:0:sequential_1/simple_rnn_1/strided_slice_3/stack_1:output:0:sequential_1/simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_mask
*sequential_1/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          х
%sequential_1/simple_rnn_1/transpose_1	TransposeEsequential_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03sequential_1/simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџД x
sequential_1/simple_rnn_2/ShapeShape)sequential_1/simple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
:w
-sequential_1/simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_1/simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_1/simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential_1/simple_rnn_2/strided_sliceStridedSlice(sequential_1/simple_rnn_2/Shape:output:06sequential_1/simple_rnn_2/strided_slice/stack:output:08sequential_1/simple_rnn_2/strided_slice/stack_1:output:08sequential_1/simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_1/simple_rnn_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :­
#sequential_1/simple_rnn_2/zeros/mulMul0sequential_1/simple_rnn_2/strided_slice:output:0.sequential_1/simple_rnn_2/zeros/mul/y:output:0*
T0*
_output_shapes
: i
&sequential_1/simple_rnn_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шЇ
$sequential_1/simple_rnn_2/zeros/LessLess'sequential_1/simple_rnn_2/zeros/mul:z:0/sequential_1/simple_rnn_2/zeros/Less/y:output:0*
T0*
_output_shapes
: j
(sequential_1/simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :С
&sequential_1/simple_rnn_2/zeros/packedPack0sequential_1/simple_rnn_2/strided_slice:output:01sequential_1/simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_1/simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
sequential_1/simple_rnn_2/zerosFill/sequential_1/simple_rnn_2/zeros/packed:output:0.sequential_1/simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ}
(sequential_1/simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Х
#sequential_1/simple_rnn_2/transpose	Transpose)sequential_1/simple_rnn_1/transpose_1:y:01sequential_1/simple_rnn_2/transpose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ x
!sequential_1/simple_rnn_2/Shape_1Shape'sequential_1/simple_rnn_2/transpose:y:0*
T0*
_output_shapes
:y
/sequential_1/simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_1/simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_1/simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:н
)sequential_1/simple_rnn_2/strided_slice_1StridedSlice*sequential_1/simple_rnn_2/Shape_1:output:08sequential_1/simple_rnn_2/strided_slice_1/stack:output:0:sequential_1/simple_rnn_2/strided_slice_1/stack_1:output:0:sequential_1/simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5sequential_1/simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
'sequential_1/simple_rnn_2/TensorArrayV2TensorListReserve>sequential_1/simple_rnn_2/TensorArrayV2/element_shape:output:02sequential_1/simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв 
Osequential_1/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    Ў
Asequential_1/simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_1/simple_rnn_2/transpose:y:0Xsequential_1/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвy
/sequential_1/simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_1/simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_1/simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
)sequential_1/simple_rnn_2/strided_slice_2StridedSlice'sequential_1/simple_rnn_2/transpose:y:08sequential_1/simple_rnn_2/strided_slice_2/stack:output:0:sequential_1/simple_rnn_2/strided_slice_2/stack_1:output:0:sequential_1/simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maskЬ
Asequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpJsequential_1_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0э
2sequential_1/simple_rnn_2/simple_rnn_cell_2/MatMulMatMul2sequential_1/simple_rnn_2/strided_slice_2:output:0Isequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЪ
Bsequential_1/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpKsequential_1_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0њ
3sequential_1/simple_rnn_2/simple_rnn_cell_2/BiasAddBiasAdd<sequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul:product:0Jsequential_1/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџа
Csequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpLsequential_1_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ч
4sequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul_1MatMul(sequential_1/simple_rnn_2/zeros:output:0Ksequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџш
/sequential_1/simple_rnn_2/simple_rnn_cell_2/addAddV2<sequential_1/simple_rnn_2/simple_rnn_cell_2/BiasAdd:output:0>sequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
0sequential_1/simple_rnn_2/simple_rnn_cell_2/TanhTanh3sequential_1/simple_rnn_2/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
7sequential_1/simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
)sequential_1/simple_rnn_2/TensorArrayV2_1TensorListReserve@sequential_1/simple_rnn_2/TensorArrayV2_1/element_shape:output:02sequential_1/simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв`
sequential_1/simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_1/simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџn
,sequential_1/simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
sequential_1/simple_rnn_2/whileWhile5sequential_1/simple_rnn_2/while/loop_counter:output:0;sequential_1/simple_rnn_2/while/maximum_iterations:output:0'sequential_1/simple_rnn_2/time:output:02sequential_1/simple_rnn_2/TensorArrayV2_1:handle:0(sequential_1/simple_rnn_2/zeros:output:02sequential_1/simple_rnn_2/strided_slice_1:output:0Qsequential_1/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_1_simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resourceKsequential_1_simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resourceLsequential_1_simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *7
body/R-
+sequential_1_simple_rnn_2_while_body_174419*7
cond/R-
+sequential_1_simple_rnn_2_while_cond_174418*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
Jsequential_1/simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
<sequential_1/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_1/simple_rnn_2/while:output:3Ssequential_1/simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ*
element_dtype0
/sequential_1/simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ{
1sequential_1/simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_1/simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
)sequential_1/simple_rnn_2/strided_slice_3StridedSliceEsequential_1/simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:08sequential_1/simple_rnn_2/strided_slice_3/stack:output:0:sequential_1/simple_rnn_2/strided_slice_3/stack_1:output:0:sequential_1/simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
*sequential_1/simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          х
%sequential_1/simple_rnn_2/transpose_1	TransposeEsequential_1/simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:03sequential_1/simple_rnn_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДm
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ж
sequential_1/flatten_1/ReshapeReshape2sequential_1/simple_rnn_2/strided_slice_3:output:0%sequential_1/flatten_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
sequential_1/dropout_1/IdentityIdentity'sequential_1/flatten_1/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential_1/head/MatMul/ReadVariableOpReadVariableOp0sequential_1_head_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Џ
sequential_1/head/MatMulMatMul(sequential_1/dropout_1/Identity:output:0/sequential_1/head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
(sequential_1/head/BiasAdd/ReadVariableOpReadVariableOp1sequential_1_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
sequential_1/head/BiasAddBiasAdd"sequential_1/head/MatMul:product:00sequential_1/head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџz
sequential_1/head/SoftmaxSoftmax"sequential_1/head/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџr
IdentityIdentity#sequential_1/head/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ§
NoOpNoOp)^sequential_1/head/BiasAdd/ReadVariableOp(^sequential_1/head/MatMul/ReadVariableOpC^sequential_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpB^sequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpD^sequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp ^sequential_1/simple_rnn_1/whileC^sequential_1/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpB^sequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpD^sequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp ^sequential_1/simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 2T
(sequential_1/head/BiasAdd/ReadVariableOp(sequential_1/head/BiasAdd/ReadVariableOp2R
'sequential_1/head/MatMul/ReadVariableOp'sequential_1/head/MatMul/ReadVariableOp2
Bsequential_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpBsequential_1/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2
Asequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpAsequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2
Csequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpCsequential_1/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2B
sequential_1/simple_rnn_1/whilesequential_1/simple_rnn_1/while2
Bsequential_1/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpBsequential_1/simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp2
Asequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpAsequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp2
Csequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpCsequential_1/simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp2B
sequential_1/simple_rnn_2/whilesequential_1/simple_rnn_2/while:U Q
,
_output_shapes
:џџџџџџџџџД1
!
_user_specified_name	input_2:($
"
_output_shapes
::($
"
_output_shapes
:
к
Њ
while_cond_175296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_175296___redundant_placeholder04
0while_while_cond_175296___redundant_placeholder14
0while_while_cond_175296___redundant_placeholder24
0while_while_cond_175296___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Њ,
Ш
while_body_175297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_2_matmul_readvariableop_resource_0: G
9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_2_matmul_readvariableop_resource: E
7while_simple_rnn_cell_2_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:Ђ.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_2/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0І
-while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_2_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0У
while/simple_rnn_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0О
while/simple_rnn_cell_2/BiasAddBiasAdd(while/simple_rnn_cell_2/MatMul:product:06while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЊ
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Њ
 while/simple_rnn_cell_2/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
while/simple_rnn_cell_2/addAddV2(while/simple_rnn_cell_2/BiasAdd:output:0*while/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџw
while/simple_rnn_cell_2/TanhTanhwhile/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЩ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_2/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_2/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџп

while/NoOpNoOp/^while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_2/MatMul/ReadVariableOp0^while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_2_biasadd_readvariableop_resource9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_2_matmul_readvariableop_resource8while_simple_rnn_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2`
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_2/MatMul/ReadVariableOp-while/simple_rnn_cell_2/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
Ђ
F
*__inference_dropout_1_layer_call_fn_177589

inputs
identityГ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_175384`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ъ
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_177771

inputs
states_00
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ :џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0
М

к
2__inference_simple_rnn_cell_1_layer_call_fn_177645

inputs
states_0
unknown:1 
	unknown_0: 
	unknown_1:  
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_174551o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ1:џџџџџџџџџ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ1
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ 
"
_user_specified_name
states/0
љ 
б
while_body_175039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_2_175061_0: .
 while_simple_rnn_cell_2_175063_0:2
 while_simple_rnn_cell_2_175065_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_2_175061: ,
while_simple_rnn_cell_2_175063:0
while_simple_rnn_cell_2_175065:Ђ/while/simple_rnn_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0Ѕ
/while/simple_rnn_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_2_175061_0 while_simple_rnn_cell_2_175063_0 while_simple_rnn_cell_2_175065_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_174983с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ~

while/NoOpNoOp0^while/simple_rnn_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_2_175061 while_simple_rnn_cell_2_175061_0"B
while_simple_rnn_cell_2_175063 while_simple_rnn_cell_2_175063_0"B
while_simple_rnn_cell_2_175065 while_simple_rnn_cell_2_175065_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2b
/while/simple_rnn_cell_2/StatefulPartitionedCall/while/simple_rnn_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 


+sequential_1_simple_rnn_2_while_cond_174418P
Lsequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_while_loop_counterV
Rsequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_while_maximum_iterations/
+sequential_1_simple_rnn_2_while_placeholder1
-sequential_1_simple_rnn_2_while_placeholder_11
-sequential_1_simple_rnn_2_while_placeholder_2R
Nsequential_1_simple_rnn_2_while_less_sequential_1_simple_rnn_2_strided_slice_1h
dsequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_while_cond_174418___redundant_placeholder0h
dsequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_while_cond_174418___redundant_placeholder1h
dsequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_while_cond_174418___redundant_placeholder2h
dsequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_while_cond_174418___redundant_placeholder3,
(sequential_1_simple_rnn_2_while_identity
Ъ
$sequential_1/simple_rnn_2/while/LessLess+sequential_1_simple_rnn_2_while_placeholderNsequential_1_simple_rnn_2_while_less_sequential_1_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: 
(sequential_1/simple_rnn_2/while/IdentityIdentity(sequential_1/simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_1_simple_rnn_2_while_identity1sequential_1/simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
1
Ш
while_body_175174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:1 G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0: L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:1 E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource: J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:  Ђ.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_1/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0
'while/simple_rnn_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?П
!while/simple_rnn_cell_1/ones_likeFill0while/simple_rnn_cell_1/ones_like/Shape:output:00while/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1В
while/simple_rnn_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/simple_rnn_cell_1/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1І
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:1 *
dtype0В
while/simple_rnn_cell_1/MatMulMatMulwhile/simple_rnn_cell_1/mul:z:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Є
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0О
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Њ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0Њ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ќ
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ п

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 
к
Њ
while_cond_177002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177002___redundant_placeholder04
0while_while_cond_177002___redundant_placeholder14
0while_while_cond_177002___redundant_placeholder24
0while_while_cond_177002___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
K
и
+sequential_1_simple_rnn_1_while_body_174307P
Lsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_loop_counterV
Rsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_maximum_iterations/
+sequential_1_simple_rnn_1_while_placeholder1
-sequential_1_simple_rnn_1_while_placeholder_11
-sequential_1_simple_rnn_1_while_placeholder_2O
Ksequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_strided_slice_1_0
sequential_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0d
Rsequential_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:1 a
Ssequential_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0: f
Tsequential_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:  ,
(sequential_1_simple_rnn_1_while_identity.
*sequential_1_simple_rnn_1_while_identity_1.
*sequential_1_simple_rnn_1_while_identity_2.
*sequential_1_simple_rnn_1_while_identity_3.
*sequential_1_simple_rnn_1_while_identity_4M
Isequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_strided_slice_1
sequential_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorb
Psequential_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:1 _
Qsequential_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource: d
Rsequential_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:  ЂHsequential_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂGsequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpЂIsequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpЂ
Qsequential_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   Љ
Csequential_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0+sequential_1_simple_rnn_1_while_placeholderZsequential_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0Л
Asequential_1/simple_rnn_1/while/simple_rnn_cell_1/ones_like/ShapeShapeJsequential_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:
Asequential_1/simple_rnn_1/while/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
;sequential_1/simple_rnn_1/while/simple_rnn_cell_1/ones_likeFillJsequential_1/simple_rnn_1/while/simple_rnn_cell_1/ones_like/Shape:output:0Jsequential_1/simple_rnn_1/while/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
5sequential_1/simple_rnn_1/while/simple_rnn_cell_1/mulMulJsequential_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_1/simple_rnn_1/while/simple_rnn_cell_1/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1к
Gsequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpRsequential_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:1 *
dtype0
8sequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul9sequential_1/simple_rnn_1/while/simple_rnn_cell_1/mul:z:0Osequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ и
Hsequential_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpSsequential_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
9sequential_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAddBsequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Psequential_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ о
Isequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpTsequential_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0ј
:sequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul-sequential_1_simple_rnn_1_while_placeholder_2Qsequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ њ
5sequential_1/simple_rnn_1/while/simple_rnn_cell_1/addAddV2Bsequential_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:0Dsequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ Ћ
6sequential_1/simple_rnn_1/while/simple_rnn_cell_1/TanhTanh9sequential_1/simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ Б
Dsequential_1/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_1_simple_rnn_1_while_placeholder_1+sequential_1_simple_rnn_1_while_placeholder:sequential_1/simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвg
%sequential_1/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Њ
#sequential_1/simple_rnn_1/while/addAddV2+sequential_1_simple_rnn_1_while_placeholder.sequential_1/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_1/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Я
%sequential_1/simple_rnn_1/while/add_1AddV2Lsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_loop_counter0sequential_1/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ї
(sequential_1/simple_rnn_1/while/IdentityIdentity)sequential_1/simple_rnn_1/while/add_1:z:0%^sequential_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: в
*sequential_1/simple_rnn_1/while/Identity_1IdentityRsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_maximum_iterations%^sequential_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ї
*sequential_1/simple_rnn_1/while/Identity_2Identity'sequential_1/simple_rnn_1/while/add:z:0%^sequential_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: д
*sequential_1/simple_rnn_1/while/Identity_3IdentityTsequential_1/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ы
*sequential_1/simple_rnn_1/while/Identity_4Identity:sequential_1/simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0%^sequential_1/simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ Ч
$sequential_1/simple_rnn_1/while/NoOpNoOpI^sequential_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpH^sequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpJ^sequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_1_simple_rnn_1_while_identity1sequential_1/simple_rnn_1/while/Identity:output:0"a
*sequential_1_simple_rnn_1_while_identity_13sequential_1/simple_rnn_1/while/Identity_1:output:0"a
*sequential_1_simple_rnn_1_while_identity_23sequential_1/simple_rnn_1/while/Identity_2:output:0"a
*sequential_1_simple_rnn_1_while_identity_33sequential_1/simple_rnn_1/while/Identity_3:output:0"a
*sequential_1_simple_rnn_1_while_identity_43sequential_1/simple_rnn_1/while/Identity_4:output:0"
Isequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_strided_slice_1Ksequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_strided_slice_1_0"Ј
Qsequential_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceSsequential_1_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"Њ
Rsequential_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceTsequential_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"І
Psequential_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceRsequential_1_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"
sequential_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorsequential_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2
Hsequential_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpHsequential_1/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2
Gsequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpGsequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2
Isequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpIsequential_1/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 
И@
Н
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177349
inputs_0B
0simple_rnn_cell_2_matmul_readvariableop_resource: ?
1simple_rnn_cell_2_biasadd_readvariableop_resource:D
2simple_rnn_cell_2_matmul_1_readvariableop_resource:
identityЂ(simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_2/MatMul/ReadVariableOpЂ)simple_rnn_cell_2/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_mask
'simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell_2/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
(simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
simple_rnn_cell_2/BiasAddBiasAdd"simple_rnn_cell_2/MatMul:product:00simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
)simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_2/MatMul_1MatMulzeros:output:01simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell_2/addAddV2"simple_rnn_cell_2/BiasAdd:output:0$simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџk
simple_rnn_cell_2/TanhTanhsimple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_2_matmul_readvariableop_resource1simple_rnn_cell_2_biasadd_readvariableop_resource2simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_177283*
condR
while_cond_177282*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЯ
NoOpNoOp)^simple_rnn_cell_2/BiasAdd/ReadVariableOp(^simple_rnn_cell_2/MatMul/ReadVariableOp*^simple_rnn_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ : : : 2T
(simple_rnn_cell_2/BiasAdd/ReadVariableOp(simple_rnn_cell_2/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_2/MatMul/ReadVariableOp'simple_rnn_cell_2/MatMul/ReadVariableOp2V
)simple_rnn_cell_2/MatMul_1/ReadVariableOp)simple_rnn_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0
ь6

H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_174802

inputs*
simple_rnn_cell_1_174727:1 &
simple_rnn_cell_1_174729: *
simple_rnn_cell_1_174731:  
identityЂ)simple_rnn_cell_1/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : _
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_maskъ
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_174727simple_rnn_cell_1_174729simple_rnn_cell_1_174731*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_174683n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_174727simple_rnn_cell_1_174729simple_rnn_cell_1_174731*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_174739*
condR
while_cond_174738*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ z
NoOpNoOp*^simple_rnn_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ1: : : 2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ1
 
_user_specified_nameinputs

п
-__inference_sequential_1_layer_call_fn_175427
input_2
unknown
	unknown_0
	unknown_1:1 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identityЂStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_175404o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџД1
!
_user_specified_name	input_2:($
"
_output_shapes
::($
"
_output_shapes
:

ъ
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_177709

inputs
states_00
matmul_readvariableop_resource:1 -
biasadd_readvariableop_resource: 2
 matmul_1_readvariableop_resource:  
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1*
dtype0*
seedБџх)*
seed2м§[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ1i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ1W
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ1t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:1 *
dtype0j
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ1:џџџџџџџџџ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ1
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ 
"
_user_specified_name
states/0

Ї
H__inference_sequential_1_layer_call_and_return_conditional_losses_175404

inputs
normalization_1_sub_y
normalization_1_sqrt_x%
simple_rnn_1_175245:1 !
simple_rnn_1_175247: %
simple_rnn_1_175249:  %
simple_rnn_2_175364: !
simple_rnn_2_175366:%
simple_rnn_2_175368:
head_175398:
head_175400:
identityЂhead/StatefulPartitionedCallЂ$simple_rnn_1/StatefulPartitionedCallЂ$simple_rnn_2/StatefulPartitionedCallp
normalization_1/subSubinputsnormalization_1_sub_y*
T0*,
_output_shapes
:џџџџџџџџџД1a
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*"
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*"
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*,
_output_shapes
:џџџџџџџџџД1Д
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0simple_rnn_1_175245simple_rnn_1_175247simple_rnn_1_175249*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџД *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_175244С
$simple_rnn_2/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0simple_rnn_2_175364simple_rnn_2_175366simple_rnn_2_175368*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_175363ф
flatten_1/PartitionedCallPartitionedCall-simple_rnn_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_175377й
dropout_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_175384џ
head/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0head_175398head_175400*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_head_layer_call_and_return_conditional_losses_175397t
IdentityIdentity%head/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџГ
NoOpNoOp^head/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall%^simple_rnn_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 2<
head/StatefulPartitionedCallhead/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall2L
$simple_rnn_2/StatefulPartitionedCall$simple_rnn_2/StatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
П8
Ю
simple_rnn_2_while_body_1764426
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_25
1simple_rnn_2_while_simple_rnn_2_strided_slice_1_0q
msimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0: T
Fsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:Y
Gsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
simple_rnn_2_while_identity!
simple_rnn_2_while_identity_1!
simple_rnn_2_while_identity_2!
simple_rnn_2_while_identity_3!
simple_rnn_2_while_identity_43
/simple_rnn_2_while_simple_rnn_2_strided_slice_1o
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource: R
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource:W
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource:Ђ;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpЂ<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp
Dsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    ч
6simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_2_while_placeholderMsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0Р
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0ъ
+simple_rnn_2/while/simple_rnn_cell_2/MatMulMatMul=simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџО
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0х
,simple_rnn_2/while/simple_rnn_cell_2/BiasAddBiasAdd5simple_rnn_2/while/simple_rnn_cell_2/MatMul:product:0Csimple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџФ
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0б
-simple_rnn_2/while/simple_rnn_cell_2/MatMul_1MatMul simple_rnn_2_while_placeholder_2Dsimple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџг
(simple_rnn_2/while/simple_rnn_cell_2/addAddV25simple_rnn_2/while/simple_rnn_cell_2/BiasAdd:output:07simple_rnn_2/while/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
)simple_rnn_2/while/simple_rnn_cell_2/TanhTanh,simple_rnn_2/while/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ§
7simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_2_while_placeholder_1simple_rnn_2_while_placeholder-simple_rnn_2/while/simple_rnn_cell_2/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвZ
simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_2/while/addAddV2simple_rnn_2_while_placeholder!simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_2/while/add_1AddV22simple_rnn_2_while_simple_rnn_2_while_loop_counter#simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/add_1:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_2/while/Identity_1Identity8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_2/while/Identity_2Identitysimple_rnn_2/while/add:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ­
simple_rnn_2/while/Identity_3IdentityGsimple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: Є
simple_rnn_2/while/Identity_4Identity-simple_rnn_2/while/simple_rnn_cell_2/Tanh:y:0^simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_2/while/NoOpNoOp<^simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;^simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp=^simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0"G
simple_rnn_2_while_identity_1&simple_rnn_2/while/Identity_1:output:0"G
simple_rnn_2_while_identity_2&simple_rnn_2/while/Identity_2:output:0"G
simple_rnn_2_while_identity_3&simple_rnn_2/while/Identity_3:output:0"G
simple_rnn_2_while_identity_4&simple_rnn_2/while/Identity_4:output:0"d
/simple_rnn_2_while_simple_rnn_2_strided_slice_11simple_rnn_2_while_simple_rnn_2_strided_slice_1_0"
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resourceFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resourceGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resourceEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0"м
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensormsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2z
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2x
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp2|
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
а

ж
$__inference_signature_wrapper_175962
input_2
unknown
	unknown_0
	unknown_1:1 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_174495o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџД1
!
_user_specified_name	input_2:($
"
_output_shapes
::($
"
_output_shapes
:
к
Њ
while_cond_176618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_176618___redundant_placeholder04
0while_while_cond_176618___redundant_placeholder14
0while_while_cond_176618___redundant_placeholder24
0while_while_cond_176618___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
є
c
*__inference_dropout_1_layer_call_fn_177594

inputs
identityЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_175457o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Й
-__inference_simple_rnn_2_layer_call_fn_177103
inputs_0
unknown: 
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_175102o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0
§
ш
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_174983

inputs

states0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ :џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates
@
Л
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177573

inputsB
0simple_rnn_cell_2_matmul_readvariableop_resource: ?
1simple_rnn_cell_2_biasadd_readvariableop_resource:D
2simple_rnn_cell_2_matmul_1_readvariableop_resource:
identityЂ(simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_2/MatMul/ReadVariableOpЂ)simple_rnn_cell_2/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_mask
'simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell_2/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
(simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
simple_rnn_cell_2/BiasAddBiasAdd"simple_rnn_cell_2/MatMul:product:00simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
)simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_2/MatMul_1MatMulzeros:output:01simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell_2/addAddV2"simple_rnn_cell_2/BiasAdd:output:0$simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџk
simple_rnn_cell_2/TanhTanhsimple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_2_matmul_readvariableop_resource1simple_rnn_cell_2_biasadd_readvariableop_resource2simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_177507*
condR
while_cond_177506*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЯ
NoOpNoOp)^simple_rnn_cell_2/BiasAdd/ReadVariableOp(^simple_rnn_cell_2/MatMul/ReadVariableOp*^simple_rnn_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД : : : 2T
(simple_rnn_cell_2/BiasAdd/ReadVariableOp(simple_rnn_cell_2/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_2/MatMul/ReadVariableOp'simple_rnn_cell_2/MatMul/ReadVariableOp2V
)simple_rnn_cell_2/MatMul_1/ReadVariableOp)simple_rnn_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџД 
 
_user_specified_nameinputs
к
Њ
while_cond_177394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177394___redundant_placeholder04
0while_while_cond_177394___redundant_placeholder14
0while_while_cond_177394___redundant_placeholder24
0while_while_cond_177394___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ѓ	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_175457

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
лЌ
Ђ	
H__inference_sequential_1_layer_call_and_return_conditional_losses_176257

inputs
normalization_1_sub_y
normalization_1_sqrt_xO
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:1 L
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource: Q
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:  O
=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource: L
>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource:Q
?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource:5
#head_matmul_readvariableop_resource:2
$head_biasadd_readvariableop_resource:
identityЂhead/BiasAdd/ReadVariableOpЂhead/MatMul/ReadVariableOpЂ5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpЂ6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpЂsimple_rnn_1/whileЂ5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpЂ6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpЂsimple_rnn_2/whilep
normalization_1/subSubinputsnormalization_1_sub_y*
T0*,
_output_shapes
:џџџџџџџџџД1a
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*"
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*"
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*,
_output_shapes
:џџџџџџџџџД1]
simple_rnn_1/ShapeShapenormalization_1/truediv:z:0*
T0*
_output_shapes
:j
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
simple_rnn_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_1/zeros/mulMul#simple_rnn_1/strided_slice:output:0!simple_rnn_1/zeros/mul/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш
simple_rnn_1/zeros/LessLesssimple_rnn_1/zeros/mul:z:0"simple_rnn_1/zeros/Less/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ p
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_1/transpose	Transposenormalization_1/truediv:z:0$simple_rnn_1/transpose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ1^
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџл
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвl
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_mask
.simple_rnn_1/simple_rnn_cell_1/ones_like/ShapeShape%simple_rnn_1/strided_slice_2:output:0*
T0*
_output_shapes
:s
.simple_rnn_1/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?д
(simple_rnn_1/simple_rnn_cell_1/ones_likeFill7simple_rnn_1/simple_rnn_cell_1/ones_like/Shape:output:07simple_rnn_1/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1Е
"simple_rnn_1/simple_rnn_cell_1/mulMul%simple_rnn_1/strided_slice_2:output:01simple_rnn_1/simple_rnn_cell_1/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1В
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:1 *
dtype0Ч
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul&simple_rnn_1/simple_rnn_cell_1/mul:z:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ А
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0г
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ж
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0Р
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ С
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
#simple_rnn_1/simple_rnn_cell_1/TanhTanh&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ {
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    п
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвS
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџa
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_1_while_body_176069**
cond"R 
simple_rnn_1_while_cond_176068*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    ъ
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ *
element_dtype0u
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџn
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ш
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maskr
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџД ^
simple_rnn_2/ShapeShapesimple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
:j
 simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_2/strided_sliceStridedSlicesimple_rnn_2/Shape:output:0)simple_rnn_2/strided_slice/stack:output:0+simple_rnn_2/strided_slice/stack_1:output:0+simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
simple_rnn_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_2/zeros/mulMul#simple_rnn_2/strided_slice:output:0!simple_rnn_2/zeros/mul/y:output:0*
T0*
_output_shapes
: \
simple_rnn_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш
simple_rnn_2/zeros/LessLesssimple_rnn_2/zeros/mul:z:0"simple_rnn_2/zeros/Less/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_2/zeros/packedPack#simple_rnn_2/strided_slice:output:0$simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_2/zerosFill"simple_rnn_2/zeros/packed:output:0!simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџp
simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_2/transpose	Transposesimple_rnn_1/transpose_1:y:0$simple_rnn_2/transpose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ ^
simple_rnn_2/Shape_1Shapesimple_rnn_2/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_2/strided_slice_1StridedSlicesimple_rnn_2/Shape_1:output:0+simple_rnn_2/strided_slice_1/stack:output:0-simple_rnn_2/strided_slice_1/stack_1:output:0-simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџл
simple_rnn_2/TensorArrayV2TensorListReserve1simple_rnn_2/TensorArrayV2/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Bsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    
4simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_2/transpose:y:0Ksimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвl
"simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
simple_rnn_2/strided_slice_2StridedSlicesimple_rnn_2/transpose:y:0+simple_rnn_2/strided_slice_2/stack:output:0-simple_rnn_2/strided_slice_2/stack_1:output:0-simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maskВ
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ц
%simple_rnn_2/simple_rnn_cell_2/MatMulMatMul%simple_rnn_2/strided_slice_2:output:0<simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџА
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0г
&simple_rnn_2/simple_rnn_cell_2/BiasAddBiasAdd/simple_rnn_2/simple_rnn_cell_2/MatMul:product:0=simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЖ
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Р
'simple_rnn_2/simple_rnn_cell_2/MatMul_1MatMulsimple_rnn_2/zeros:output:0>simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџС
"simple_rnn_2/simple_rnn_cell_2/addAddV2/simple_rnn_2/simple_rnn_cell_2/BiasAdd:output:01simple_rnn_2/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
#simple_rnn_2/simple_rnn_cell_2/TanhTanh&simple_rnn_2/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ{
*simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   п
simple_rnn_2/TensorArrayV2_1TensorListReserve3simple_rnn_2/TensorArrayV2_1/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвS
simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџa
simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_2/whileWhile(simple_rnn_2/while/loop_counter:output:0.simple_rnn_2/while/maximum_iterations:output:0simple_rnn_2/time:output:0%simple_rnn_2/TensorArrayV2_1:handle:0simple_rnn_2/zeros:output:0%simple_rnn_2/strided_slice_1:output:0Dsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_2_while_body_176181**
cond"R 
simple_rnn_2_while_cond_176180*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
=simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ъ
/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_2/while:output:3Fsimple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ*
element_dtype0u
"simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџn
$simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ш
simple_rnn_2/strided_slice_3StridedSlice8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_2/strided_slice_3/stack:output:0-simple_rnn_2/strided_slice_3/stack_1:output:0-simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskr
simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
simple_rnn_2/transpose_1	Transpose8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџД`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_1/ReshapeReshape%simple_rnn_2/strided_slice_3:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
dropout_1/IdentityIdentityflatten_1/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ~
head/MatMul/ReadVariableOpReadVariableOp#head_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
head/MatMulMatMuldropout_1/Identity:output:0"head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ|
head/BiasAdd/ReadVariableOpReadVariableOp$head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
head/BiasAddBiasAddhead/MatMul:product:0#head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
head/SoftmaxSoftmaxhead/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџe
IdentityIdentityhead/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџћ
NoOpNoOp^head/BiasAdd/ReadVariableOp^head/MatMul/ReadVariableOp6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while6^simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5^simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp7^simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp^simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 2:
head/BiasAdd/ReadVariableOphead/BiasAdd/ReadVariableOp28
head/MatMul/ReadVariableOphead/MatMul/ReadVariableOp2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while2n
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp2l
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp2p
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp2(
simple_rnn_2/whilesimple_rnn_2/while:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
Ш;
Ш
while_body_175671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:1 G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0: L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:1 E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource: J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:  Ђ.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_1/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0
'while/simple_rnn_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?П
!while/simple_rnn_cell_1/ones_likeFill0while/simple_rnn_cell_1/ones_like/Shape:output:00while/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1j
%while/simple_rnn_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?И
#while/simple_rnn_cell_1/dropout/MulMul*while/simple_rnn_cell_1/ones_like:output:0.while/simple_rnn_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
%while/simple_rnn_cell_1/dropout/ShapeShape*while/simple_rnn_cell_1/ones_like:output:0*
T0*
_output_shapes
:к
<while/simple_rnn_cell_1/dropout/random_uniform/RandomUniformRandomUniform.while/simple_rnn_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1*
dtype0*
seedБџх)*
seed2ыШns
.while/simple_rnn_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=ю
,while/simple_rnn_cell_1/dropout/GreaterEqualGreaterEqualEwhile/simple_rnn_cell_1/dropout/random_uniform/RandomUniform:output:07while/simple_rnn_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
$while/simple_rnn_cell_1/dropout/CastCast0while/simple_rnn_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ1Б
%while/simple_rnn_cell_1/dropout/Mul_1Mul'while/simple_rnn_cell_1/dropout/Mul:z:0(while/simple_rnn_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ1Б
while/simple_rnn_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/simple_rnn_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ1І
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:1 *
dtype0В
while/simple_rnn_cell_1/MatMulMatMulwhile/simple_rnn_cell_1/mul:z:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Є
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0О
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Њ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0Њ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ќ
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ п

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 
к
Њ
while_cond_177170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177170___redundant_placeholder04
0while_while_cond_177170___redundant_placeholder14
0while_while_cond_177170___redundant_placeholder24
0while_while_cond_177170___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Щ;
Ш
while_body_177003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:1 G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0: L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:1 E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource: J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:  Ђ.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_1/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0
'while/simple_rnn_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?П
!while/simple_rnn_cell_1/ones_likeFill0while/simple_rnn_cell_1/ones_like/Shape:output:00while/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1j
%while/simple_rnn_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?И
#while/simple_rnn_cell_1/dropout/MulMul*while/simple_rnn_cell_1/ones_like:output:0.while/simple_rnn_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
%while/simple_rnn_cell_1/dropout/ShapeShape*while/simple_rnn_cell_1/ones_like:output:0*
T0*
_output_shapes
:л
<while/simple_rnn_cell_1/dropout/random_uniform/RandomUniformRandomUniform.while/simple_rnn_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1*
dtype0*
seedБџх)*
seed2дсs
.while/simple_rnn_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=ю
,while/simple_rnn_cell_1/dropout/GreaterEqualGreaterEqualEwhile/simple_rnn_cell_1/dropout/random_uniform/RandomUniform:output:07while/simple_rnn_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
$while/simple_rnn_cell_1/dropout/CastCast0while/simple_rnn_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ1Б
%while/simple_rnn_cell_1/dropout/Mul_1Mul'while/simple_rnn_cell_1/dropout/Mul:z:0(while/simple_rnn_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ1Б
while/simple_rnn_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/simple_rnn_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ1І
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:1 *
dtype0В
while/simple_rnn_cell_1/MatMulMatMulwhile/simple_rnn_cell_1/mul:z:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Є
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0О
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Њ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0Њ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ќ
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ п

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 
>
Ю
simple_rnn_1_while_body_1760696
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:1 T
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0: Y
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:  
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:1 R
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource: W
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:  Ђ;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpЂ<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   ч
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0Ё
4simple_rnn_1/while/simple_rnn_cell_1/ones_like/ShapeShape=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:y
4simple_rnn_1/while/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ц
.simple_rnn_1/while/simple_rnn_cell_1/ones_likeFill=simple_rnn_1/while/simple_rnn_cell_1/ones_like/Shape:output:0=simple_rnn_1/while/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1й
(simple_rnn_1/while/simple_rnn_cell_1/mulMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:07simple_rnn_1/while/simple_rnn_cell_1/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1Р
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:1 *
dtype0й
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul,simple_rnn_1/while/simple_rnn_cell_1/mul:z:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ О
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0х
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ф
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0б
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ г
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
)simple_rnn_1/while/simple_rnn_cell_1/TanhTanh,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ §
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвZ
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ­
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Є
simple_rnn_1/while/Identity_4Identity-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0^simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 
simple_rnn_1/while/NoOpNoOp<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"м
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 
Њ,
Ш
while_body_177507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_2_matmul_readvariableop_resource_0: G
9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_2_matmul_readvariableop_resource: E
7while_simple_rnn_cell_2_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:Ђ.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_2/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0І
-while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_2_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0У
while/simple_rnn_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0О
while/simple_rnn_cell_2/BiasAddBiasAdd(while/simple_rnn_cell_2/MatMul:product:06while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЊ
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Њ
 while/simple_rnn_cell_2/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
while/simple_rnn_cell_2/addAddV2(while/simple_rnn_cell_2/BiasAdd:output:0*while/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџw
while/simple_rnn_cell_2/TanhTanhwhile/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЩ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_2/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_2/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџп

while/NoOpNoOp/^while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_2/MatMul/ReadVariableOp0^while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_2_biasadd_readvariableop_resource9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_2_matmul_readvariableop_resource8while_simple_rnn_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2`
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_2/MatMul/ReadVariableOp-while/simple_rnn_cell_2/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
єM
Л
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_175749

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:1 ?
1simple_rnn_cell_1_biasadd_readvariableop_resource: D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:  
identityЂ(simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_1/MatMul/ReadVariableOpЂ)simple_rnn_cell_1/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : _
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_maski
!simple_rnn_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
simple_rnn_cell_1/ones_likeFill*simple_rnn_cell_1/ones_like/Shape:output:0*simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1d
simple_rnn_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?І
simple_rnn_cell_1/dropout/MulMul$simple_rnn_cell_1/ones_like:output:0(simple_rnn_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1s
simple_rnn_cell_1/dropout/ShapeShape$simple_rnn_cell_1/ones_like:output:0*
T0*
_output_shapes
:Я
6simple_rnn_cell_1/dropout/random_uniform/RandomUniformRandomUniform(simple_rnn_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1*
dtype0*
seedБџх)*
seed2ѕљКm
(simple_rnn_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=м
&simple_rnn_cell_1/dropout/GreaterEqualGreaterEqual?simple_rnn_cell_1/dropout/random_uniform/RandomUniform:output:01simple_rnn_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/dropout/CastCast*simple_rnn_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/dropout/Mul_1Mul!simple_rnn_cell_1/dropout/Mul:z:0"simple_rnn_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/mulMulstrided_slice_2:output:0#simple_rnn_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ1
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:1 *
dtype0 
simple_rnn_cell_1/MatMulMatMulsimple_rnn_cell_1/mul:z:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_175671*
condR
while_cond_175670*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџД c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџД Я
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД1: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs
к
Њ
while_cond_177282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177282___redundant_placeholder04
0while_while_cond_177282___redundant_placeholder14
0while_while_cond_177282___redundant_placeholder24
0while_while_cond_177282___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Н

%__inference_head_layer_call_fn_177620

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_head_layer_call_and_return_conditional_losses_175397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
к
Њ
while_cond_175173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_175173___redundant_placeholder04
0while_while_cond_175173___redundant_placeholder14
0while_while_cond_175173___redundant_placeholder24
0while_while_cond_175173___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
зП
Ђ	
H__inference_sequential_1_layer_call_and_return_conditional_losses_176525

inputs
normalization_1_sub_y
normalization_1_sqrt_xO
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource:1 L
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource: Q
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource:  O
=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource: L
>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource:Q
?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource:5
#head_matmul_readvariableop_resource:2
$head_biasadd_readvariableop_resource:
identityЂhead/BiasAdd/ReadVariableOpЂhead/MatMul/ReadVariableOpЂ5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpЂ6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpЂsimple_rnn_1/whileЂ5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpЂ6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpЂsimple_rnn_2/whilep
normalization_1/subSubinputsnormalization_1_sub_y*
T0*,
_output_shapes
:џџџџџџџџџД1a
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*"
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*"
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*,
_output_shapes
:џџџџџџџџџД1]
simple_rnn_1/ShapeShapenormalization_1/truediv:z:0*
T0*
_output_shapes
:j
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
simple_rnn_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_1/zeros/mulMul#simple_rnn_1/strided_slice:output:0!simple_rnn_1/zeros/mul/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш
simple_rnn_1/zeros/LessLesssimple_rnn_1/zeros/mul:z:0"simple_rnn_1/zeros/Less/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ p
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_1/transpose	Transposenormalization_1/truediv:z:0$simple_rnn_1/transpose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ1^
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџл
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвl
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_mask
.simple_rnn_1/simple_rnn_cell_1/ones_like/ShapeShape%simple_rnn_1/strided_slice_2:output:0*
T0*
_output_shapes
:s
.simple_rnn_1/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?д
(simple_rnn_1/simple_rnn_cell_1/ones_likeFill7simple_rnn_1/simple_rnn_cell_1/ones_like/Shape:output:07simple_rnn_1/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1q
,simple_rnn_1/simple_rnn_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?Э
*simple_rnn_1/simple_rnn_cell_1/dropout/MulMul1simple_rnn_1/simple_rnn_cell_1/ones_like:output:05simple_rnn_1/simple_rnn_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
,simple_rnn_1/simple_rnn_cell_1/dropout/ShapeShape1simple_rnn_1/simple_rnn_cell_1/ones_like:output:0*
T0*
_output_shapes
:щ
Csimple_rnn_1/simple_rnn_cell_1/dropout/random_uniform/RandomUniformRandomUniform5simple_rnn_1/simple_rnn_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1*
dtype0*
seedБџх)*
seed2њЅфz
5simple_rnn_1/simple_rnn_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=
3simple_rnn_1/simple_rnn_cell_1/dropout/GreaterEqualGreaterEqualLsimple_rnn_1/simple_rnn_cell_1/dropout/random_uniform/RandomUniform:output:0>simple_rnn_1/simple_rnn_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1­
+simple_rnn_1/simple_rnn_cell_1/dropout/CastCast7simple_rnn_1/simple_rnn_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ1Ц
,simple_rnn_1/simple_rnn_cell_1/dropout/Mul_1Mul.simple_rnn_1/simple_rnn_cell_1/dropout/Mul:z:0/simple_rnn_1/simple_rnn_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ1Д
"simple_rnn_1/simple_rnn_cell_1/mulMul%simple_rnn_1/strided_slice_2:output:00simple_rnn_1/simple_rnn_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ1В
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:1 *
dtype0Ч
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul&simple_rnn_1/simple_rnn_cell_1/mul:z:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ А
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0г
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ж
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0Р
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ С
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
#simple_rnn_1/simple_rnn_cell_1/TanhTanh&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ {
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    п
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвS
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџa
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_1_while_body_176322**
cond"R 
simple_rnn_1_while_cond_176321*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    ъ
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ *
element_dtype0u
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџn
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ш
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maskr
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџД ^
simple_rnn_2/ShapeShapesimple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
:j
 simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_2/strided_sliceStridedSlicesimple_rnn_2/Shape:output:0)simple_rnn_2/strided_slice/stack:output:0+simple_rnn_2/strided_slice/stack_1:output:0+simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
simple_rnn_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_2/zeros/mulMul#simple_rnn_2/strided_slice:output:0!simple_rnn_2/zeros/mul/y:output:0*
T0*
_output_shapes
: \
simple_rnn_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш
simple_rnn_2/zeros/LessLesssimple_rnn_2/zeros/mul:z:0"simple_rnn_2/zeros/Less/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_2/zeros/packedPack#simple_rnn_2/strided_slice:output:0$simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_2/zerosFill"simple_rnn_2/zeros/packed:output:0!simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџp
simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_2/transpose	Transposesimple_rnn_1/transpose_1:y:0$simple_rnn_2/transpose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ ^
simple_rnn_2/Shape_1Shapesimple_rnn_2/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_2/strided_slice_1StridedSlicesimple_rnn_2/Shape_1:output:0+simple_rnn_2/strided_slice_1/stack:output:0-simple_rnn_2/strided_slice_1/stack_1:output:0-simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџл
simple_rnn_2/TensorArrayV2TensorListReserve1simple_rnn_2/TensorArrayV2/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Bsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    
4simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_2/transpose:y:0Ksimple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвl
"simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
simple_rnn_2/strided_slice_2StridedSlicesimple_rnn_2/transpose:y:0+simple_rnn_2/strided_slice_2/stack:output:0-simple_rnn_2/strided_slice_2/stack_1:output:0-simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maskВ
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ц
%simple_rnn_2/simple_rnn_cell_2/MatMulMatMul%simple_rnn_2/strided_slice_2:output:0<simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџА
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0г
&simple_rnn_2/simple_rnn_cell_2/BiasAddBiasAdd/simple_rnn_2/simple_rnn_cell_2/MatMul:product:0=simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЖ
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Р
'simple_rnn_2/simple_rnn_cell_2/MatMul_1MatMulsimple_rnn_2/zeros:output:0>simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџС
"simple_rnn_2/simple_rnn_cell_2/addAddV2/simple_rnn_2/simple_rnn_cell_2/BiasAdd:output:01simple_rnn_2/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
#simple_rnn_2/simple_rnn_cell_2/TanhTanh&simple_rnn_2/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ{
*simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   п
simple_rnn_2/TensorArrayV2_1TensorListReserve3simple_rnn_2/TensorArrayV2_1/element_shape:output:0%simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвS
simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџa
simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_2/whileWhile(simple_rnn_2/while/loop_counter:output:0.simple_rnn_2/while/maximum_iterations:output:0simple_rnn_2/time:output:0%simple_rnn_2/TensorArrayV2_1:handle:0simple_rnn_2/zeros:output:0%simple_rnn_2/strided_slice_1:output:0Dsimple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_2_simple_rnn_cell_2_matmul_readvariableop_resource>simple_rnn_2_simple_rnn_cell_2_biasadd_readvariableop_resource?simple_rnn_2_simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_2_while_body_176442**
cond"R 
simple_rnn_2_while_cond_176441*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
=simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ъ
/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_2/while:output:3Fsimple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ*
element_dtype0u
"simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџn
$simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ш
simple_rnn_2/strided_slice_3StridedSlice8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_2/strided_slice_3/stack:output:0-simple_rnn_2/strided_slice_3/stack_1:output:0-simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskr
simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          О
simple_rnn_2/transpose_1	Transpose8simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџД`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_1/ReshapeReshape%simple_rnn_2/strided_slice_3:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_1/dropout/MulMulflatten_1/Reshape:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
dropout_1/dropout/ShapeShapeflatten_1/Reshape:output:0*
T0*
_output_shapes
: 
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ф
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ~
head/MatMul/ReadVariableOpReadVariableOp#head_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
head/MatMulMatMuldropout_1/dropout/Mul_1:z:0"head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ|
head/BiasAdd/ReadVariableOpReadVariableOp$head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
head/BiasAddBiasAddhead/MatMul:product:0#head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
head/SoftmaxSoftmaxhead/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџe
IdentityIdentityhead/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџћ
NoOpNoOp^head/BiasAdd/ReadVariableOp^head/MatMul/ReadVariableOp6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while6^simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5^simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp7^simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp^simple_rnn_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 2:
head/BiasAdd/ReadVariableOphead/BiasAdd/ReadVariableOp28
head/MatMul/ReadVariableOphead/MatMul/ReadVariableOp2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while2n
5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp5simple_rnn_2/simple_rnn_cell_2/BiasAdd/ReadVariableOp2l
4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp4simple_rnn_2/simple_rnn_cell_2/MatMul/ReadVariableOp2p
6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp6simple_rnn_2/simple_rnn_cell_2/MatMul_1/ReadVariableOp2(
simple_rnn_2/whilesimple_rnn_2/while:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
бD
Н
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_176689
inputs_0B
0simple_rnn_cell_1_matmul_readvariableop_resource:1 ?
1simple_rnn_cell_1_biasadd_readvariableop_resource: D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:  
identityЂ(simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_1/MatMul/ReadVariableOpЂ)simple_rnn_cell_1/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : _
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_maski
!simple_rnn_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
simple_rnn_cell_1/ones_likeFill*simple_rnn_cell_1/ones_like/Shape:output:0*simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/mulMulstrided_slice_2:output:0$simple_rnn_cell_1/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:1 *
dtype0 
simple_rnn_cell_1/MatMulMatMulsimple_rnn_cell_1/mul:z:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_176619*
condR
while_cond_176618*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ Я
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ1: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ1
"
_user_specified_name
inputs/0

п
-__inference_sequential_1_layer_call_fn_175865
input_2
unknown
	unknown_0
	unknown_1:1 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identityЂStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_175817o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџД1
!
_user_specified_name	input_2:($
"
_output_shapes
::($
"
_output_shapes
:
К

Ё
simple_rnn_2_while_cond_1761806
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_28
4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1N
Jsimple_rnn_2_while_simple_rnn_2_while_cond_176180___redundant_placeholder0N
Jsimple_rnn_2_while_simple_rnn_2_while_cond_176180___redundant_placeholder1N
Jsimple_rnn_2_while_simple_rnn_2_while_cond_176180___redundant_placeholder2N
Jsimple_rnn_2_while_simple_rnn_2_while_cond_176180___redundant_placeholder3
simple_rnn_2_while_identity

simple_rnn_2/while/LessLesssimple_rnn_2_while_placeholder4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
єM
Л
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_177081

inputsB
0simple_rnn_cell_1_matmul_readvariableop_resource:1 ?
1simple_rnn_cell_1_biasadd_readvariableop_resource: D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:  
identityЂ(simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_1/MatMul/ReadVariableOpЂ)simple_rnn_cell_1/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : _
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_maski
!simple_rnn_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
simple_rnn_cell_1/ones_likeFill*simple_rnn_cell_1/ones_like/Shape:output:0*simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1d
simple_rnn_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?І
simple_rnn_cell_1/dropout/MulMul$simple_rnn_cell_1/ones_like:output:0(simple_rnn_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1s
simple_rnn_cell_1/dropout/ShapeShape$simple_rnn_cell_1/ones_like:output:0*
T0*
_output_shapes
:Я
6simple_rnn_cell_1/dropout/random_uniform/RandomUniformRandomUniform(simple_rnn_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1*
dtype0*
seedБџх)*
seed2ыЙm
(simple_rnn_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=м
&simple_rnn_cell_1/dropout/GreaterEqualGreaterEqual?simple_rnn_cell_1/dropout/random_uniform/RandomUniform:output:01simple_rnn_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/dropout/CastCast*simple_rnn_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/dropout/Mul_1Mul!simple_rnn_cell_1/dropout/Mul:z:0"simple_rnn_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/mulMulstrided_slice_2:output:0#simple_rnn_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ1
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:1 *
dtype0 
simple_rnn_cell_1/MatMulMatMulsimple_rnn_cell_1/mul:z:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_177003*
condR
while_cond_177002*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџД c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџД Я
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД1: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs
ВJ
Ю
simple_rnn_1_while_body_1763226
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0:1 T
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0: Y
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:  
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource:1 R
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource: W
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource:  Ђ;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpЂ<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   ч
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0Ё
4simple_rnn_1/while/simple_rnn_cell_1/ones_like/ShapeShape=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:y
4simple_rnn_1/while/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ц
.simple_rnn_1/while/simple_rnn_cell_1/ones_likeFill=simple_rnn_1/while/simple_rnn_cell_1/ones_like/Shape:output:0=simple_rnn_1/while/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1w
2simple_rnn_1/while/simple_rnn_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?п
0simple_rnn_1/while/simple_rnn_cell_1/dropout/MulMul7simple_rnn_1/while/simple_rnn_cell_1/ones_like:output:0;simple_rnn_1/while/simple_rnn_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
2simple_rnn_1/while/simple_rnn_cell_1/dropout/ShapeShape7simple_rnn_1/while/simple_rnn_cell_1/ones_like:output:0*
T0*
_output_shapes
:ѕ
Isimple_rnn_1/while/simple_rnn_cell_1/dropout/random_uniform/RandomUniformRandomUniform;simple_rnn_1/while/simple_rnn_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1*
dtype0*
seedБџх)*
seed2иЩ
;simple_rnn_1/while/simple_rnn_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=
9simple_rnn_1/while/simple_rnn_cell_1/dropout/GreaterEqualGreaterEqualRsimple_rnn_1/while/simple_rnn_cell_1/dropout/random_uniform/RandomUniform:output:0Dsimple_rnn_1/while/simple_rnn_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1Й
1simple_rnn_1/while/simple_rnn_cell_1/dropout/CastCast=simple_rnn_1/while/simple_rnn_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ1и
2simple_rnn_1/while/simple_rnn_cell_1/dropout/Mul_1Mul4simple_rnn_1/while/simple_rnn_cell_1/dropout/Mul:z:05simple_rnn_1/while/simple_rnn_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ1и
(simple_rnn_1/while/simple_rnn_cell_1/mulMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:06simple_rnn_1/while/simple_rnn_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ1Р
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:1 *
dtype0й
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul,simple_rnn_1/while/simple_rnn_cell_1/mul:z:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ О
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0х
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ф
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0б
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ г
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
)simple_rnn_1/while/simple_rnn_cell_1/TanhTanh,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ §
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвZ
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ­
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Є
simple_rnn_1/while/Identity_4Identity-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0^simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 
simple_rnn_1/while/NoOpNoOp<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"м
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 
К

Ё
simple_rnn_1_while_cond_1763216
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_176321___redundant_placeholder0N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_176321___redundant_placeholder1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_176321___redundant_placeholder2N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_176321___redundant_placeholder3
simple_rnn_1_while_identity

simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
К

Ё
simple_rnn_1_while_cond_1760686
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_176068___redundant_placeholder0N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_176068___redundant_placeholder1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_176068___redundant_placeholder2N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_176068___redundant_placeholder3
simple_rnn_1_while_identity

simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
љ 
б
while_body_174564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_1_174586_0:1 .
 while_simple_rnn_cell_1_174588_0: 2
 while_simple_rnn_cell_1_174590_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_1_174586:1 ,
while_simple_rnn_cell_1_174588: 0
while_simple_rnn_cell_1_174590:  Ђ/while/simple_rnn_cell_1/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0Ѕ
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_1_174586_0 while_simple_rnn_cell_1_174588_0 while_simple_rnn_cell_1_174590_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_174551с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ ~

while/NoOpNoOp0^while/simple_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_1_174586 while_simple_rnn_cell_1_174586_0"B
while_simple_rnn_cell_1_174588 while_simple_rnn_cell_1_174588_0"B
while_simple_rnn_cell_1_174590 while_simple_rnn_cell_1_174590_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 
@
Л
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_175363

inputsB
0simple_rnn_cell_2_matmul_readvariableop_resource: ?
1simple_rnn_cell_2_biasadd_readvariableop_resource:D
2simple_rnn_cell_2_matmul_1_readvariableop_resource:
identityЂ(simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_2/MatMul/ReadVariableOpЂ)simple_rnn_cell_2/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_mask
'simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell_2/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
(simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
simple_rnn_cell_2/BiasAddBiasAdd"simple_rnn_cell_2/MatMul:product:00simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
)simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_2/MatMul_1MatMulzeros:output:01simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell_2/addAddV2"simple_rnn_cell_2/BiasAdd:output:0$simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџk
simple_rnn_cell_2/TanhTanhsimple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_2_matmul_readvariableop_resource1simple_rnn_cell_2_biasadd_readvariableop_resource2simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_175297*
condR
while_cond_175296*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЯ
NoOpNoOp)^simple_rnn_cell_2/BiasAdd/ReadVariableOp(^simple_rnn_cell_2/MatMul/ReadVariableOp*^simple_rnn_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД : : : 2T
(simple_rnn_cell_2/BiasAdd/ReadVariableOp(simple_rnn_cell_2/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_2/MatMul/ReadVariableOp'simple_rnn_cell_2/MatMul/ReadVariableOp2V
)simple_rnn_cell_2/MatMul_1/ReadVariableOp)simple_rnn_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџД 
 
_user_specified_nameinputs

З
-__inference_simple_rnn_1_layer_call_fn_176569

inputs
unknown:1 
	unknown_0: 
	unknown_1:  
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџД *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_175749t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџД `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД1: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs
ЌN
Н
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_176825
inputs_0B
0simple_rnn_cell_1_matmul_readvariableop_resource:1 ?
1simple_rnn_cell_1_biasadd_readvariableop_resource: D
2simple_rnn_cell_1_matmul_1_readvariableop_resource:  
identityЂ(simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_1/MatMul/ReadVariableOpЂ)simple_rnn_cell_1/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : _
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ1D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ1*
shrink_axis_maski
!simple_rnn_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
simple_rnn_cell_1/ones_likeFill*simple_rnn_cell_1/ones_like/Shape:output:0*simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1d
simple_rnn_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?І
simple_rnn_cell_1/dropout/MulMul$simple_rnn_cell_1/ones_like:output:0(simple_rnn_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1s
simple_rnn_cell_1/dropout/ShapeShape$simple_rnn_cell_1/ones_like:output:0*
T0*
_output_shapes
:Я
6simple_rnn_cell_1/dropout/random_uniform/RandomUniformRandomUniform(simple_rnn_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1*
dtype0*
seedБџх)*
seed2Отm
(simple_rnn_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=м
&simple_rnn_cell_1/dropout/GreaterEqualGreaterEqual?simple_rnn_cell_1/dropout/random_uniform/RandomUniform:output:01simple_rnn_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/dropout/CastCast*simple_rnn_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/dropout/Mul_1Mul!simple_rnn_cell_1/dropout/Mul:z:0"simple_rnn_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ1
simple_rnn_cell_1/mulMulstrided_slice_2:output:0#simple_rnn_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ1
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:1 *
dtype0 
simple_rnn_cell_1/MatMulMatMulsimple_rnn_cell_1/mul:z:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ k
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ : : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_176747*
condR
while_cond_176746*8
output_shapes'
%: : : : :џџџџџџџџџ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ Я
NoOpNoOp)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ1: : : 2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ1
"
_user_specified_name
inputs/0
1
Ш
while_body_176619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0:1 G
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0: L
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_1_matmul_readvariableop_resource:1 E
7while_simple_rnn_cell_1_biasadd_readvariableop_resource: J
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:  Ђ.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_1/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0
'while/simple_rnn_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?П
!while/simple_rnn_cell_1/ones_likeFill0while/simple_rnn_cell_1/ones_like/Shape:output:00while/simple_rnn_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1В
while/simple_rnn_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/simple_rnn_cell_1/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1І
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:1 *
dtype0В
while/simple_rnn_cell_1/MatMulMatMulwhile/simple_rnn_cell_1/mul:z:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Є
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0О
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Њ
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0Њ
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ќ
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ w
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ Щ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ п

while/NoOpNoOp/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 
§

о
-__inference_sequential_1_layer_call_fn_175987

inputs
unknown
	unknown_0
	unknown_1:1 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identityЂStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_175404o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
ю
ш
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_174551

inputs

states0
matmul_readvariableop_resource:1 -
biasadd_readvariableop_resource: 2
 matmul_1_readvariableop_resource:  
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:1 *
dtype0j
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ1:џџџџџџџџџ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ1
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_namestates
ш6

H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_174939

inputs*
simple_rnn_cell_2_174864: &
simple_rnn_cell_2_174866:*
simple_rnn_cell_2_174868:
identityЂ)simple_rnn_cell_2/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_maskъ
)simple_rnn_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_2_174864simple_rnn_cell_2_174866simple_rnn_cell_2_174868*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_174863n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_2_174864simple_rnn_cell_2_174866simple_rnn_cell_2_174868*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_174876*
condR
while_cond_174875*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџz
NoOpNoOp*^simple_rnn_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ : : : 2V
)simple_rnn_cell_2/StatefulPartitionedCall)simple_rnn_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs

З
-__inference_simple_rnn_2_layer_call_fn_177125

inputs
unknown: 
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_175591o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџД 
 
_user_specified_nameinputs
М

к
2__inference_simple_rnn_cell_2_layer_call_fn_177723

inputs
states_0
unknown: 
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_174863o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ :џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0
Њ,
Ш
while_body_177395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_2_matmul_readvariableop_resource_0: G
9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_2_matmul_readvariableop_resource: E
7while_simple_rnn_cell_2_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:Ђ.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_2/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0І
-while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_2_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0У
while/simple_rnn_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0О
while/simple_rnn_cell_2/BiasAddBiasAdd(while/simple_rnn_cell_2/MatMul:product:06while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЊ
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Њ
 while/simple_rnn_cell_2/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
while/simple_rnn_cell_2/addAddV2(while/simple_rnn_cell_2/BiasAdd:output:0*while/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџw
while/simple_rnn_cell_2/TanhTanhwhile/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЩ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_2/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_2/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџп

while/NoOpNoOp/^while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_2/MatMul/ReadVariableOp0^while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_2_biasadd_readvariableop_resource9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_2_matmul_readvariableop_resource8while_simple_rnn_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2`
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_2/MatMul/ReadVariableOp-while/simple_rnn_cell_2/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 


+sequential_1_simple_rnn_1_while_cond_174306P
Lsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_loop_counterV
Rsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_maximum_iterations/
+sequential_1_simple_rnn_1_while_placeholder1
-sequential_1_simple_rnn_1_while_placeholder_11
-sequential_1_simple_rnn_1_while_placeholder_2R
Nsequential_1_simple_rnn_1_while_less_sequential_1_simple_rnn_1_strided_slice_1h
dsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_cond_174306___redundant_placeholder0h
dsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_cond_174306___redundant_placeholder1h
dsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_cond_174306___redundant_placeholder2h
dsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_cond_174306___redundant_placeholder3,
(sequential_1_simple_rnn_1_while_identity
Ъ
$sequential_1/simple_rnn_1/while/LessLess+sequential_1_simple_rnn_1_while_placeholderNsequential_1_simple_rnn_1_while_less_sequential_1_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 
(sequential_1/simple_rnn_1/while/IdentityIdentity(sequential_1/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_1_simple_rnn_1_while_identity1sequential_1/simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
М

к
2__inference_simple_rnn_cell_1_layer_call_fn_177659

inputs
states_0
unknown:1 
	unknown_0: 
	unknown_1:  
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_174683o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ1:џџџџџџџџџ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ1
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ 
"
_user_specified_name
states/0
љ 
б
while_body_174739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_1_174761_0:1 .
 while_simple_rnn_cell_1_174763_0: 2
 while_simple_rnn_cell_1_174765_0:  
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_1_174761:1 ,
while_simple_rnn_cell_1_174763: 0
while_simple_rnn_cell_1_174765:  Ђ/while/simple_rnn_cell_1/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ1   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ1*
element_dtype0Ѕ
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_1_174761_0 while_simple_rnn_cell_1_174763_0 while_simple_rnn_cell_1_174765_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_174683с
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ ~

while/NoOpNoOp0^while/simple_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_1_174761 while_simple_rnn_cell_1_174761_0"B
while_simple_rnn_cell_1_174763 while_simple_rnn_cell_1_174763_0"B
while_simple_rnn_cell_1_174765 while_simple_rnn_cell_1_174765_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ : : : : : 2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
: 

ъ
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_177754

inputs
states_00
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ :џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0
цU
к
__inference__traced_save_177916
file_prefix3
/savev2_normalization_1_mean_read_readvariableop7
3savev2_normalization_1_variance_read_readvariableop4
0savev2_normalization_1_count_read_readvariableop	*
&savev2_head_kernel_read_readvariableop(
$savev2_head_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopD
@savev2_simple_rnn_1_simple_rnn_cell_1_kernel_read_readvariableopN
Jsavev2_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_1_simple_rnn_cell_1_bias_read_readvariableopD
@savev2_simple_rnn_2_simple_rnn_cell_2_kernel_read_readvariableopN
Jsavev2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_2_simple_rnn_cell_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop1
-savev2_adam_head_kernel_m_read_readvariableop/
+savev2_adam_head_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_1_simple_rnn_cell_1_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_1_simple_rnn_cell_1_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_2_simple_rnn_cell_2_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_2_simple_rnn_cell_2_bias_m_read_readvariableop1
-savev2_adam_head_kernel_v_read_readvariableop/
+savev2_adam_head_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_1_simple_rnn_cell_1_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_1_simple_rnn_cell_1_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_2_simple_rnn_cell_2_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_2_simple_rnn_cell_2_bias_v_read_readvariableop
savev2_const_2

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ц
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*я
valueхBт)B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHП
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B І
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_normalization_1_mean_read_readvariableop3savev2_normalization_1_variance_read_readvariableop0savev2_normalization_1_count_read_readvariableop&savev2_head_kernel_read_readvariableop$savev2_head_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop@savev2_simple_rnn_1_simple_rnn_cell_1_kernel_read_readvariableopJsavev2_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_read_readvariableop>savev2_simple_rnn_1_simple_rnn_cell_1_bias_read_readvariableop@savev2_simple_rnn_2_simple_rnn_cell_2_kernel_read_readvariableopJsavev2_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_read_readvariableop>savev2_simple_rnn_2_simple_rnn_cell_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop-savev2_adam_head_kernel_m_read_readvariableop+savev2_adam_head_bias_m_read_readvariableopGsavev2_adam_simple_rnn_1_simple_rnn_cell_1_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_1_simple_rnn_cell_1_bias_m_read_readvariableopGsavev2_adam_simple_rnn_2_simple_rnn_cell_2_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_2_simple_rnn_cell_2_bias_m_read_readvariableop-savev2_adam_head_kernel_v_read_readvariableop+savev2_adam_head_bias_v_read_readvariableopGsavev2_adam_simple_rnn_1_simple_rnn_cell_1_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_1_simple_rnn_cell_1_bias_v_read_readvariableopGsavev2_adam_simple_rnn_2_simple_rnn_cell_2_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_2_simple_rnn_cell_2_bias_v_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)		
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: : : : ::: : : : : :1 :  : : ::: : : : :Ш:Ш:Ш:Ш:::1 :  : : :::::1 :  : : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :$ 

_output_shapes

:1 :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :!

_output_shapes	
:Ш:!

_output_shapes	
:Ш:!

_output_shapes	
:Ш:!

_output_shapes	
:Ш:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:1 :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

::  

_output_shapes
::$! 

_output_shapes

:: "

_output_shapes
::$# 

_output_shapes

:1 :$$ 

_output_shapes

:  : %

_output_shapes
: :$& 

_output_shapes

: :$' 

_output_shapes

:: (

_output_shapes
::)

_output_shapes
: 
є
ъ
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_177680

inputs
states_00
matmul_readvariableop_resource:1 -
biasadd_readvariableop_resource: 2
 matmul_1_readvariableop_resource:  
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:1 *
dtype0j
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ1:џџџџџџџџџ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ1
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ 
"
_user_specified_name
states/0
К

Ё
simple_rnn_2_while_cond_1764416
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_28
4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1N
Jsimple_rnn_2_while_simple_rnn_2_while_cond_176441___redundant_placeholder0N
Jsimple_rnn_2_while_simple_rnn_2_while_cond_176441___redundant_placeholder1N
Jsimple_rnn_2_while_simple_rnn_2_while_cond_176441___redundant_placeholder2N
Jsimple_rnn_2_while_simple_rnn_2_while_cond_176441___redundant_placeholder3
simple_rnn_2_while_identity

simple_rnn_2/while/LessLesssimple_rnn_2_while_placeholder4simple_rnn_2_while_less_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
к
Њ
while_cond_176874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_176874___redundant_placeholder04
0while_while_cond_176874___redundant_placeholder14
0while_while_cond_176874___redundant_placeholder24
0while_while_cond_176874___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
Г
Й
-__inference_simple_rnn_1_layer_call_fn_176547
inputs_0
unknown:1 
	unknown_0: 
	unknown_1:  
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_174802|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ1: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ1
"
_user_specified_name
inputs/0
к
Њ
while_cond_174738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_174738___redundant_placeholder04
0while_while_cond_174738___redundant_placeholder14
0while_while_cond_174738___redundant_placeholder24
0while_while_cond_174738___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ :

_output_shapes
: :

_output_shapes
:
к
Њ
while_cond_174875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_174875___redundant_placeholder04
0while_while_cond_174875___redundant_placeholder14
0while_while_cond_174875___redundant_placeholder24
0while_while_cond_174875___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
§
ш
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_174863

inputs

states0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ :џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates
Е
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_175377

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ,
Ш
while_body_175525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_2_matmul_readvariableop_resource_0: G
9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_2_matmul_readvariableop_resource: E
7while_simple_rnn_cell_2_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:Ђ.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_2/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0І
-while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_2_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0У
while/simple_rnn_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0О
while/simple_rnn_cell_2/BiasAddBiasAdd(while/simple_rnn_cell_2/MatMul:product:06while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЊ
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Њ
 while/simple_rnn_cell_2/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
while/simple_rnn_cell_2/addAddV2(while/simple_rnn_cell_2/BiasAdd:output:0*while/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџw
while/simple_rnn_cell_2/TanhTanhwhile/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЩ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_2/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_2/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџп

while/NoOpNoOp/^while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_2/MatMul/ReadVariableOp0^while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_2_biasadd_readvariableop_resource9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_2_matmul_readvariableop_resource8while_simple_rnn_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2`
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_2/MatMul/ReadVariableOp-while/simple_rnn_cell_2/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
Ђ
F
*__inference_flatten_1_layer_call_fn_177578

inputs
identityГ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_175377`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Л 
Ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_175817

inputs
normalization_1_sub_y
normalization_1_sqrt_x%
simple_rnn_1_175795:1 !
simple_rnn_1_175797: %
simple_rnn_1_175799:  %
simple_rnn_2_175802: !
simple_rnn_2_175804:%
simple_rnn_2_175806:
head_175811:
head_175813:
identityЂ!dropout_1/StatefulPartitionedCallЂhead/StatefulPartitionedCallЂ$simple_rnn_1/StatefulPartitionedCallЂ$simple_rnn_2/StatefulPartitionedCallp
normalization_1/subSubinputsnormalization_1_sub_y*
T0*,
_output_shapes
:џџџџџџџџџД1a
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*"
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*"
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*,
_output_shapes
:џџџџџџџџџД1Д
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0simple_rnn_1_175795simple_rnn_1_175797simple_rnn_1_175799*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџД *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_175749С
$simple_rnn_2/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0simple_rnn_2_175802simple_rnn_2_175804simple_rnn_2_175806*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_175591ф
flatten_1/PartitionedCallPartitionedCall-simple_rnn_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_175377щ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_175457
head/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0head_175811head_175813*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_head_layer_call_and_return_conditional_losses_175397t
IdentityIdentity%head/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџз
NoOpNoOp"^dropout_1/StatefulPartitionedCall^head/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall%^simple_rnn_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2<
head/StatefulPartitionedCallhead/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall2L
$simple_rnn_2/StatefulPartitionedCall$simple_rnn_2/StatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
еD
и
+sequential_1_simple_rnn_2_while_body_174419P
Lsequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_while_loop_counterV
Rsequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_while_maximum_iterations/
+sequential_1_simple_rnn_2_while_placeholder1
-sequential_1_simple_rnn_2_while_placeholder_11
-sequential_1_simple_rnn_2_while_placeholder_2O
Ksequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_strided_slice_1_0
sequential_1_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0d
Rsequential_1_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0: a
Ssequential_1_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:f
Tsequential_1_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:,
(sequential_1_simple_rnn_2_while_identity.
*sequential_1_simple_rnn_2_while_identity_1.
*sequential_1_simple_rnn_2_while_identity_2.
*sequential_1_simple_rnn_2_while_identity_3.
*sequential_1_simple_rnn_2_while_identity_4M
Isequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_strided_slice_1
sequential_1_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorb
Psequential_1_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource: _
Qsequential_1_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource:d
Rsequential_1_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource:ЂHsequential_1/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂGsequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpЂIsequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpЂ
Qsequential_1/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    Љ
Csequential_1/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_1_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0+sequential_1_simple_rnn_2_while_placeholderZsequential_1/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0к
Gsequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpRsequential_1_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0
8sequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMulMatMulJsequential_1/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџи
Hsequential_1/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpSsequential_1_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0
9sequential_1/simple_rnn_2/while/simple_rnn_cell_2/BiasAddBiasAddBsequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul:product:0Psequential_1/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџо
Isequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpTsequential_1_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ј
:sequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1MatMul-sequential_1_simple_rnn_2_while_placeholder_2Qsequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџњ
5sequential_1/simple_rnn_2/while/simple_rnn_cell_2/addAddV2Bsequential_1/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd:output:0Dsequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџЋ
6sequential_1/simple_rnn_2/while/simple_rnn_cell_2/TanhTanh9sequential_1/simple_rnn_2/while/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџБ
Dsequential_1/simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_1_simple_rnn_2_while_placeholder_1+sequential_1_simple_rnn_2_while_placeholder:sequential_1/simple_rnn_2/while/simple_rnn_cell_2/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвg
%sequential_1/simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Њ
#sequential_1/simple_rnn_2/while/addAddV2+sequential_1_simple_rnn_2_while_placeholder.sequential_1/simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_1/simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Я
%sequential_1/simple_rnn_2/while/add_1AddV2Lsequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_while_loop_counter0sequential_1/simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: Ї
(sequential_1/simple_rnn_2/while/IdentityIdentity)sequential_1/simple_rnn_2/while/add_1:z:0%^sequential_1/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: в
*sequential_1/simple_rnn_2/while/Identity_1IdentityRsequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_while_maximum_iterations%^sequential_1/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: Ї
*sequential_1/simple_rnn_2/while/Identity_2Identity'sequential_1/simple_rnn_2/while/add:z:0%^sequential_1/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: д
*sequential_1/simple_rnn_2/while/Identity_3IdentityTsequential_1/simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_1/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: Ы
*sequential_1/simple_rnn_2/while/Identity_4Identity:sequential_1/simple_rnn_2/while/simple_rnn_cell_2/Tanh:y:0%^sequential_1/simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЧ
$sequential_1/simple_rnn_2/while/NoOpNoOpI^sequential_1/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpH^sequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpJ^sequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_1_simple_rnn_2_while_identity1sequential_1/simple_rnn_2/while/Identity:output:0"a
*sequential_1_simple_rnn_2_while_identity_13sequential_1/simple_rnn_2/while/Identity_1:output:0"a
*sequential_1_simple_rnn_2_while_identity_23sequential_1/simple_rnn_2/while/Identity_2:output:0"a
*sequential_1_simple_rnn_2_while_identity_33sequential_1/simple_rnn_2/while/Identity_3:output:0"a
*sequential_1_simple_rnn_2_while_identity_43sequential_1/simple_rnn_2/while/Identity_4:output:0"
Isequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_strided_slice_1Ksequential_1_simple_rnn_2_while_sequential_1_simple_rnn_2_strided_slice_1_0"Ј
Qsequential_1_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resourceSsequential_1_simple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"Њ
Rsequential_1_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resourceTsequential_1_simple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"І
Psequential_1_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resourceRsequential_1_simple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0"
sequential_1_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorsequential_1_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2
Hsequential_1/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpHsequential_1/simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2
Gsequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpGsequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp2
Isequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpIsequential_1/simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
@
Л
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177461

inputsB
0simple_rnn_cell_2_matmul_readvariableop_resource: ?
1simple_rnn_cell_2_biasadd_readvariableop_resource:D
2simple_rnn_cell_2_matmul_1_readvariableop_resource:
identityЂ(simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_2/MatMul/ReadVariableOpЂ)simple_rnn_cell_2/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_mask
'simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell_2/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
(simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
simple_rnn_cell_2/BiasAddBiasAdd"simple_rnn_cell_2/MatMul:product:00simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
)simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_2/MatMul_1MatMulzeros:output:01simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell_2/addAddV2"simple_rnn_cell_2/BiasAdd:output:0$simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџk
simple_rnn_cell_2/TanhTanhsimple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_2_matmul_readvariableop_resource1simple_rnn_cell_2_biasadd_readvariableop_resource2simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_177395*
condR
while_cond_177394*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЯ
NoOpNoOp)^simple_rnn_cell_2/BiasAdd/ReadVariableOp(^simple_rnn_cell_2/MatMul/ReadVariableOp*^simple_rnn_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД : : : 2T
(simple_rnn_cell_2/BiasAdd/ReadVariableOp(simple_rnn_cell_2/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_2/MatMul/ReadVariableOp'simple_rnn_cell_2/MatMul/ReadVariableOp2V
)simple_rnn_cell_2/MatMul_1/ReadVariableOp)simple_rnn_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџД 
 
_user_specified_nameinputs
к
Њ
while_cond_175524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_175524___redundant_placeholder04
0while_while_cond_175524___redundant_placeholder14
0while_while_cond_175524___redundant_placeholder24
0while_while_cond_175524___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ЂЃ

"__inference__traced_restore_178046
file_prefix/
%assignvariableop_normalization_1_mean: 5
+assignvariableop_1_normalization_1_variance: 2
(assignvariableop_2_normalization_1_count:	 0
assignvariableop_3_head_kernel:*
assignvariableop_4_head_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: K
9assignvariableop_10_simple_rnn_1_simple_rnn_cell_1_kernel:1 U
Cassignvariableop_11_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel:  E
7assignvariableop_12_simple_rnn_1_simple_rnn_cell_1_bias: K
9assignvariableop_13_simple_rnn_2_simple_rnn_cell_2_kernel: U
Cassignvariableop_14_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel:E
7assignvariableop_15_simple_rnn_2_simple_rnn_cell_2_bias:#
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: 1
"assignvariableop_20_true_positives:	Ш1
"assignvariableop_21_true_negatives:	Ш2
#assignvariableop_22_false_positives:	Ш2
#assignvariableop_23_false_negatives:	Ш8
&assignvariableop_24_adam_head_kernel_m:2
$assignvariableop_25_adam_head_bias_m:R
@assignvariableop_26_adam_simple_rnn_1_simple_rnn_cell_1_kernel_m:1 \
Jassignvariableop_27_adam_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_m:  L
>assignvariableop_28_adam_simple_rnn_1_simple_rnn_cell_1_bias_m: R
@assignvariableop_29_adam_simple_rnn_2_simple_rnn_cell_2_kernel_m: \
Jassignvariableop_30_adam_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_m:L
>assignvariableop_31_adam_simple_rnn_2_simple_rnn_cell_2_bias_m:8
&assignvariableop_32_adam_head_kernel_v:2
$assignvariableop_33_adam_head_bias_v:R
@assignvariableop_34_adam_simple_rnn_1_simple_rnn_cell_1_kernel_v:1 \
Jassignvariableop_35_adam_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_v:  L
>assignvariableop_36_adam_simple_rnn_1_simple_rnn_cell_1_bias_v: R
@assignvariableop_37_adam_simple_rnn_2_simple_rnn_cell_2_kernel_v: \
Jassignvariableop_38_adam_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_v:L
>assignvariableop_39_adam_simple_rnn_2_simple_rnn_cell_2_bias_v:
identity_41ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Щ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*я
valueхBт)B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHТ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ю
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesЇ
Є:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp%assignvariableop_normalization_1_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp+assignvariableop_1_normalization_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOp(assignvariableop_2_normalization_1_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_head_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_head_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_10AssignVariableOp9assignvariableop_10_simple_rnn_1_simple_rnn_cell_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_11AssignVariableOpCassignvariableop_11_simple_rnn_1_simple_rnn_cell_1_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_12AssignVariableOp7assignvariableop_12_simple_rnn_1_simple_rnn_cell_1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_13AssignVariableOp9assignvariableop_13_simple_rnn_2_simple_rnn_cell_2_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_14AssignVariableOpCassignvariableop_14_simple_rnn_2_simple_rnn_cell_2_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_15AssignVariableOp7assignvariableop_15_simple_rnn_2_simple_rnn_cell_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp"assignvariableop_20_true_positivesIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp"assignvariableop_21_true_negativesIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp#assignvariableop_22_false_positivesIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp#assignvariableop_23_false_negativesIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_head_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp$assignvariableop_25_adam_head_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_simple_rnn_1_simple_rnn_cell_1_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_27AssignVariableOpJassignvariableop_27_adam_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_28AssignVariableOp>assignvariableop_28_adam_simple_rnn_1_simple_rnn_cell_1_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adam_simple_rnn_2_simple_rnn_cell_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_30AssignVariableOpJassignvariableop_30_adam_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_31AssignVariableOp>assignvariableop_31_adam_simple_rnn_2_simple_rnn_cell_2_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_head_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp$assignvariableop_33_adam_head_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_34AssignVariableOp@assignvariableop_34_adam_simple_rnn_1_simple_rnn_cell_1_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_35AssignVariableOpJassignvariableop_35_adam_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_36AssignVariableOp>assignvariableop_36_adam_simple_rnn_1_simple_rnn_cell_1_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_37AssignVariableOp@assignvariableop_37_adam_simple_rnn_2_simple_rnn_cell_2_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_38AssignVariableOpJassignvariableop_38_adam_simple_rnn_2_simple_rnn_cell_2_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_39AssignVariableOp>assignvariableop_39_adam_simple_rnn_2_simple_rnn_cell_2_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 П
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: Ќ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

Й
-__inference_simple_rnn_2_layer_call_fn_177092
inputs_0
unknown: 
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_174939o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0

ш
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_174683

inputs

states0
matmul_readvariableop_resource:1 -
biasadd_readvariableop_resource: 2
 matmul_1_readvariableop_resource:  
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1*
dtype0*
seedБџх)*
seed2ЄЬ[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ1o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ1i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ1W
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ1t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:1 *
dtype0j
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:  *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ1:џџџџџџџџџ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ1
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_namestates
к
Њ
while_cond_175038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_175038___redundant_placeholder04
0while_while_cond_175038___redundant_placeholder14
0while_while_cond_175038___redundant_placeholder24
0while_while_cond_175038___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
Г
Й
-__inference_simple_rnn_1_layer_call_fn_176536
inputs_0
unknown:1 
	unknown_0: 
	unknown_1:  
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_174627|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ1: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ1
"
_user_specified_name
inputs/0
Њ,
Ш
while_body_177283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_2_matmul_readvariableop_resource_0: G
9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_2_matmul_readvariableop_resource: E
7while_simple_rnn_cell_2_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:Ђ.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ-while/simple_rnn_cell_2/MatMul/ReadVariableOpЂ/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0І
-while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_2_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0У
while/simple_rnn_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0О
while/simple_rnn_cell_2/BiasAddBiasAdd(while/simple_rnn_cell_2/MatMul:product:06while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЊ
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Њ
 while/simple_rnn_cell_2/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
while/simple_rnn_cell_2/addAddV2(while/simple_rnn_cell_2/BiasAdd:output:0*while/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџw
while/simple_rnn_cell_2/TanhTanhwhile/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЩ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_2/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_2/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџп

while/NoOpNoOp/^while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_2/MatMul/ReadVariableOp0^while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_2_biasadd_readvariableop_resource9while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_2_matmul_1_readvariableop_resource:while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_2_matmul_readvariableop_resource8while_simple_rnn_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2`
.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp.while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_2/MatMul/ReadVariableOp-while/simple_rnn_cell_2/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
и
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_177599

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
И@
Н
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177237
inputs_0B
0simple_rnn_cell_2_matmul_readvariableop_resource: ?
1simple_rnn_cell_2_biasadd_readvariableop_resource:D
2simple_rnn_cell_2_matmul_1_readvariableop_resource:
identityЂ(simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_2/MatMul/ReadVariableOpЂ)simple_rnn_cell_2/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_mask
'simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell_2/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
(simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
simple_rnn_cell_2/BiasAddBiasAdd"simple_rnn_cell_2/MatMul:product:00simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
)simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_2/MatMul_1MatMulzeros:output:01simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell_2/addAddV2"simple_rnn_cell_2/BiasAdd:output:0$simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџk
simple_rnn_cell_2/TanhTanhsimple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_2_matmul_readvariableop_resource1simple_rnn_cell_2_biasadd_readvariableop_resource2simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_177171*
condR
while_cond_177170*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЯ
NoOpNoOp)^simple_rnn_cell_2/BiasAdd/ReadVariableOp(^simple_rnn_cell_2/MatMul/ReadVariableOp*^simple_rnn_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ : : : 2T
(simple_rnn_cell_2/BiasAdd/ReadVariableOp(simple_rnn_cell_2/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_2/MatMul/ReadVariableOp'simple_rnn_cell_2/MatMul/ReadVariableOp2V
)simple_rnn_cell_2/MatMul_1/ReadVariableOp)simple_rnn_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs/0
@
Л
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_175591

inputsB
0simple_rnn_cell_2_matmul_readvariableop_resource: ?
1simple_rnn_cell_2_biasadd_readvariableop_resource:D
2simple_rnn_cell_2_matmul_1_readvariableop_resource:
identityЂ(simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ'simple_rnn_cell_2/MatMul/ReadVariableOpЂ)simple_rnn_cell_2/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :шY

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: P
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Дџџџџџџџџџ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ *
shrink_axis_mask
'simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
simple_rnn_cell_2/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
(simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
simple_rnn_cell_2/BiasAddBiasAdd"simple_rnn_cell_2/MatMul:product:00simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
)simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_2/MatMul_1MatMulzeros:output:01simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell_2/addAddV2"simple_rnn_cell_2/BiasAdd:output:0$simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџk
simple_rnn_cell_2/TanhTanhsimple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_2_matmul_readvariableop_resource1simple_rnn_cell_2_biasadd_readvariableop_resource2simple_rnn_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_175525*
condR
while_cond_175524*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Дџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЯ
NoOpNoOp)^simple_rnn_cell_2/BiasAdd/ReadVariableOp(^simple_rnn_cell_2/MatMul/ReadVariableOp*^simple_rnn_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџД : : : 2T
(simple_rnn_cell_2/BiasAdd/ReadVariableOp(simple_rnn_cell_2/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_2/MatMul/ReadVariableOp'simple_rnn_cell_2/MatMul/ReadVariableOp2V
)simple_rnn_cell_2/MatMul_1/ReadVariableOp)simple_rnn_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџД 
 
_user_specified_nameinputs
О 
Ь
H__inference_sequential_1_layer_call_and_return_conditional_losses_175929
input_2
normalization_1_sub_y
normalization_1_sqrt_x%
simple_rnn_1_175907:1 !
simple_rnn_1_175909: %
simple_rnn_1_175911:  %
simple_rnn_2_175914: !
simple_rnn_2_175916:%
simple_rnn_2_175918:
head_175923:
head_175925:
identityЂ!dropout_1/StatefulPartitionedCallЂhead/StatefulPartitionedCallЂ$simple_rnn_1/StatefulPartitionedCallЂ$simple_rnn_2/StatefulPartitionedCallq
normalization_1/subSubinput_2normalization_1_sub_y*
T0*,
_output_shapes
:џџџџџџџџџД1a
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*"
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*"
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*,
_output_shapes
:џџџџџџџџџД1Д
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0simple_rnn_1_175907simple_rnn_1_175909simple_rnn_1_175911*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџД *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_175749С
$simple_rnn_2/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0simple_rnn_2_175914simple_rnn_2_175916simple_rnn_2_175918*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_175591ф
flatten_1/PartitionedCallPartitionedCall-simple_rnn_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_175377щ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_175457
head/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0head_175923head_175925*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_head_layer_call_and_return_conditional_losses_175397t
IdentityIdentity%head/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџз
NoOpNoOp"^dropout_1/StatefulPartitionedCall^head/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall%^simple_rnn_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2<
head/StatefulPartitionedCallhead/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall2L
$simple_rnn_2/StatefulPartitionedCall$simple_rnn_2/StatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџД1
!
_user_specified_name	input_2:($
"
_output_shapes
::($
"
_output_shapes
:
П8
Ю
simple_rnn_2_while_body_1761816
2simple_rnn_2_while_simple_rnn_2_while_loop_counter<
8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations"
simple_rnn_2_while_placeholder$
 simple_rnn_2_while_placeholder_1$
 simple_rnn_2_while_placeholder_25
1simple_rnn_2_while_simple_rnn_2_strided_slice_1_0q
msimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0: T
Fsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0:Y
Gsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0:
simple_rnn_2_while_identity!
simple_rnn_2_while_identity_1!
simple_rnn_2_while_identity_2!
simple_rnn_2_while_identity_3!
simple_rnn_2_while_identity_43
/simple_rnn_2_while_simple_rnn_2_strided_slice_1o
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource: R
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource:W
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource:Ђ;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpЂ:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpЂ<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp
Dsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    ч
6simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_2_while_placeholderMsimple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ *
element_dtype0Р
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0ъ
+simple_rnn_2/while/simple_rnn_cell_2/MatMulMatMul=simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџО
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0х
,simple_rnn_2/while/simple_rnn_cell_2/BiasAddBiasAdd5simple_rnn_2/while/simple_rnn_cell_2/MatMul:product:0Csimple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџФ
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0б
-simple_rnn_2/while/simple_rnn_cell_2/MatMul_1MatMul simple_rnn_2_while_placeholder_2Dsimple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџг
(simple_rnn_2/while/simple_rnn_cell_2/addAddV25simple_rnn_2/while/simple_rnn_cell_2/BiasAdd:output:07simple_rnn_2/while/simple_rnn_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
)simple_rnn_2/while/simple_rnn_cell_2/TanhTanh,simple_rnn_2/while/simple_rnn_cell_2/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ§
7simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_2_while_placeholder_1simple_rnn_2_while_placeholder-simple_rnn_2/while/simple_rnn_cell_2/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвZ
simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_2/while/addAddV2simple_rnn_2_while_placeholder!simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_2/while/add_1AddV22simple_rnn_2_while_simple_rnn_2_while_loop_counter#simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_2/while/IdentityIdentitysimple_rnn_2/while/add_1:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_2/while/Identity_1Identity8simple_rnn_2_while_simple_rnn_2_while_maximum_iterations^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_2/while/Identity_2Identitysimple_rnn_2/while/add:z:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: ­
simple_rnn_2/while/Identity_3IdentityGsimple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_2/while/NoOp*
T0*
_output_shapes
: Є
simple_rnn_2/while/Identity_4Identity-simple_rnn_2/while/simple_rnn_cell_2/Tanh:y:0^simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_2/while/NoOpNoOp<^simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;^simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp=^simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_2_while_identity$simple_rnn_2/while/Identity:output:0"G
simple_rnn_2_while_identity_1&simple_rnn_2/while/Identity_1:output:0"G
simple_rnn_2_while_identity_2&simple_rnn_2/while/Identity_2:output:0"G
simple_rnn_2_while_identity_3&simple_rnn_2/while/Identity_3:output:0"G
simple_rnn_2_while_identity_4&simple_rnn_2/while/Identity_4:output:0"d
/simple_rnn_2_while_simple_rnn_2_strided_slice_11simple_rnn_2_while_simple_rnn_2_strided_slice_1_0"
Dsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resourceFsimple_rnn_2_while_simple_rnn_cell_2_biasadd_readvariableop_resource_0"
Esimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resourceGsimple_rnn_2_while_simple_rnn_cell_2_matmul_1_readvariableop_resource_0"
Csimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resourceEsimple_rnn_2_while_simple_rnn_cell_2_matmul_readvariableop_resource_0"м
ksimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensormsimple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2z
;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp;simple_rnn_2/while/simple_rnn_cell_2/BiasAdd/ReadVariableOp2x
:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp:simple_rnn_2/while/simple_rnn_cell_2/MatMul/ReadVariableOp2|
<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp<simple_rnn_2/while/simple_rnn_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 

Ј
H__inference_sequential_1_layer_call_and_return_conditional_losses_175897
input_2
normalization_1_sub_y
normalization_1_sqrt_x%
simple_rnn_1_175875:1 !
simple_rnn_1_175877: %
simple_rnn_1_175879:  %
simple_rnn_2_175882: !
simple_rnn_2_175884:%
simple_rnn_2_175886:
head_175891:
head_175893:
identityЂhead/StatefulPartitionedCallЂ$simple_rnn_1/StatefulPartitionedCallЂ$simple_rnn_2/StatefulPartitionedCallq
normalization_1/subSubinput_2normalization_1_sub_y*
T0*,
_output_shapes
:џџџџџџџџџД1a
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*"
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Пж3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*"
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*,
_output_shapes
:џџџџџџџџџД1Д
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0simple_rnn_1_175875simple_rnn_1_175877simple_rnn_1_175879*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџД *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_175244С
$simple_rnn_2/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0simple_rnn_2_175882simple_rnn_2_175884simple_rnn_2_175886*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_175363ф
flatten_1/PartitionedCallPartitionedCall-simple_rnn_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_175377й
dropout_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_175384џ
head/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0head_175891head_175893*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_head_layer_call_and_return_conditional_losses_175397t
IdentityIdentity%head/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџГ
NoOpNoOp^head/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall%^simple_rnn_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 2<
head/StatefulPartitionedCallhead/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall2L
$simple_rnn_2/StatefulPartitionedCall$simple_rnn_2/StatefulPartitionedCall:U Q
,
_output_shapes
:џџџџџџџџџД1
!
_user_specified_name	input_2:($
"
_output_shapes
::($
"
_output_shapes
:


ё
@__inference_head_layer_call_and_return_conditional_losses_177631

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_177584

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
§

о
-__inference_sequential_1_layer_call_fn_176012

inputs
unknown
	unknown_0
	unknown_1:1 
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identityЂStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_175817o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:џџџџџџџџџД1::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџД1
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ќ
serving_default
@
input_25
serving_default_input_2:0џџџџџџџџџД18
head0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:К

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer-4
layer_with_weights-3
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
О

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
	keras_api"
_tf_keras_layer
Х
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Х
cell

state_spec
	variables
trainable_variables
regularization_losses
 	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Ї
!	variables
"trainable_variables
#regularization_losses
$	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
%	variables
&trainable_variables
'regularization_losses
(	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ё
/iter

0beta_1

1beta_2
	2decay
3learning_rate)m~*m4m5m6m7m8m9m)v*v4v5v6v7v8v9v"
	optimizer
n
0
1
2
43
54
65
76
87
98
)9
*10"
trackable_list_wrapper
X
40
51
62
73
84
95
)6
*7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ю
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
: 2normalization_1/mean
 : 2normalization_1/variance
:	 2normalization_1/count
"
_generic_user_object
г

4kernel
5recurrent_kernel
6bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
М

Cstates
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
г

7kernel
8recurrent_kernel
9bias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
М

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
!	variables
"trainable_variables
#regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
%	variables
&trainable_variables
'regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:2head/kernel
:2	head/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
+	variables
,trainable_variables
-regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
7:51 2%simple_rnn_1/simple_rnn_cell_1/kernel
A:?  2/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
1:/ 2#simple_rnn_1/simple_rnn_cell_1/bias
7:5 2%simple_rnn_2/simple_rnn_cell_2/kernel
A:?2/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel
1:/2#simple_rnn_2/simple_rnn_cell_2/bias
5
0
1
2"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
5
b0
c1
d2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
А
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
?	variables
@trainable_variables
Aregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
А
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ototal
	pcount
q	variables
r	keras_api"
_tf_keras_metric
^
	stotal
	tcount
u
_fn_kwargs
v	variables
w	keras_api"
_tf_keras_metric

xtrue_positives
ytrue_negatives
zfalse_positives
{false_negatives
|	variables
}	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
o0
p1"
trackable_list_wrapper
-
q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
s0
t1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
:Ш (2true_positives
:Ш (2true_negatives
 :Ш (2false_positives
 :Ш (2false_negatives
<
x0
y1
z2
{3"
trackable_list_wrapper
-
|	variables"
_generic_user_object
": 2Adam/head/kernel/m
:2Adam/head/bias/m
<::1 2,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/m
F:D  26Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/m
6:4 2*Adam/simple_rnn_1/simple_rnn_cell_1/bias/m
<:: 2,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/m
F:D26Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/m
6:42*Adam/simple_rnn_2/simple_rnn_cell_2/bias/m
": 2Adam/head/kernel/v
:2Adam/head/bias/v
<::1 2,Adam/simple_rnn_1/simple_rnn_cell_1/kernel/v
F:D  26Adam/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/v
6:4 2*Adam/simple_rnn_1/simple_rnn_cell_1/bias/v
<:: 2,Adam/simple_rnn_2/simple_rnn_cell_2/kernel/v
F:D26Adam/simple_rnn_2/simple_rnn_cell_2/recurrent_kernel/v
6:42*Adam/simple_rnn_2/simple_rnn_cell_2/bias/v
2џ
-__inference_sequential_1_layer_call_fn_175427
-__inference_sequential_1_layer_call_fn_175987
-__inference_sequential_1_layer_call_fn_176012
-__inference_sequential_1_layer_call_fn_175865Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_176257
H__inference_sequential_1_layer_call_and_return_conditional_losses_176525
H__inference_sequential_1_layer_call_and_return_conditional_losses_175897
H__inference_sequential_1_layer_call_and_return_conditional_losses_175929Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЬBЩ
!__inference__wrapped_model_174495input_2"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
-__inference_simple_rnn_1_layer_call_fn_176536
-__inference_simple_rnn_1_layer_call_fn_176547
-__inference_simple_rnn_1_layer_call_fn_176558
-__inference_simple_rnn_1_layer_call_fn_176569е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_176689
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_176825
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_176945
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_177081е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
-__inference_simple_rnn_2_layer_call_fn_177092
-__inference_simple_rnn_2_layer_call_fn_177103
-__inference_simple_rnn_2_layer_call_fn_177114
-__inference_simple_rnn_2_layer_call_fn_177125е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177237
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177349
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177461
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177573е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
д2б
*__inference_flatten_1_layer_call_fn_177578Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_flatten_1_layer_call_and_return_conditional_losses_177584Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
*__inference_dropout_1_layer_call_fn_177589
*__inference_dropout_1_layer_call_fn_177594Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ш2Х
E__inference_dropout_1_layer_call_and_return_conditional_losses_177599
E__inference_dropout_1_layer_call_and_return_conditional_losses_177611Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Я2Ь
%__inference_head_layer_call_fn_177620Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ъ2ч
@__inference_head_layer_call_and_return_conditional_losses_177631Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЫBШ
$__inference_signature_wrapper_175962input_2"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ќ2Љ
2__inference_simple_rnn_cell_1_layer_call_fn_177645
2__inference_simple_rnn_cell_1_layer_call_fn_177659О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
т2п
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_177680
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_177709О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ќ2Љ
2__inference_simple_rnn_cell_2_layer_call_fn_177723
2__inference_simple_rnn_cell_2_layer_call_fn_177737О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
т2п
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_177754
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_177771О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
	J
Const
J	
Const_1
!__inference__wrapped_model_174495r Ё465798)*5Ђ2
+Ђ(
&#
input_2џџџџџџџџџД1
Њ "+Њ(
&
head
headџџџџџџџџџЅ
E__inference_dropout_1_layer_call_and_return_conditional_losses_177599\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "%Ђ"

0џџџџџџџџџ
 Ѕ
E__inference_dropout_1_layer_call_and_return_conditional_losses_177611\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dropout_1_layer_call_fn_177589O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ}
*__inference_dropout_1_layer_call_fn_177594O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџЁ
E__inference_flatten_1_layer_call_and_return_conditional_losses_177584X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 y
*__inference_flatten_1_layer_call_fn_177578K/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ 
@__inference_head_layer_call_and_return_conditional_losses_177631\)*/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 x
%__inference_head_layer_call_fn_177620O)*/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџР
H__inference_sequential_1_layer_call_and_return_conditional_losses_175897t Ё465798)*=Ђ:
3Ђ0
&#
input_2џџџџџџџџџД1
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Р
H__inference_sequential_1_layer_call_and_return_conditional_losses_175929t Ё465798)*=Ђ:
3Ђ0
&#
input_2џџџџџџџџџД1
p

 
Њ "%Ђ"

0џџџџџџџџџ
 П
H__inference_sequential_1_layer_call_and_return_conditional_losses_176257s Ё465798)*<Ђ9
2Ђ/
%"
inputsџџџџџџџџџД1
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 П
H__inference_sequential_1_layer_call_and_return_conditional_losses_176525s Ё465798)*<Ђ9
2Ђ/
%"
inputsџџџџџџџџџД1
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
-__inference_sequential_1_layer_call_fn_175427g Ё465798)*=Ђ:
3Ђ0
&#
input_2џџџџџџџџџД1
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_175865g Ё465798)*=Ђ:
3Ђ0
&#
input_2џџџџџџџџџД1
p

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_175987f Ё465798)*<Ђ9
2Ђ/
%"
inputsџџџџџџџџџД1
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_176012f Ё465798)*<Ђ9
2Ђ/
%"
inputsџџџџџџџџџД1
p

 
Њ "џџџџџџџџџЅ
$__inference_signature_wrapper_175962} Ё465798)*@Ђ=
Ђ 
6Њ3
1
input_2&#
input_2џџџџџџџџџД1"+Њ(
&
head
headџџџџџџџџџз
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_176689465OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ1

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ 
 з
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_176825465OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ1

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ 
 П
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_176945s465@Ђ=
6Ђ3
%"
inputsџџџџџџџџџД1

 
p 

 
Њ "*Ђ'
 
0џџџџџџџџџД 
 П
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_177081s465@Ђ=
6Ђ3
%"
inputsџџџџџџџџџД1

 
p

 
Њ "*Ђ'
 
0џџџџџџџџџД 
 Ў
-__inference_simple_rnn_1_layer_call_fn_176536}465OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ1

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџ Ў
-__inference_simple_rnn_1_layer_call_fn_176547}465OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ1

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџ 
-__inference_simple_rnn_1_layer_call_fn_176558f465@Ђ=
6Ђ3
%"
inputsџџџџџџџџџД1

 
p 

 
Њ "џџџџџџџџџД 
-__inference_simple_rnn_1_layer_call_fn_176569f465@Ђ=
6Ђ3
%"
inputsџџџџџџџџџД1

 
p

 
Њ "џџџџџџџџџД Щ
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177237}798OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ 

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Щ
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177349}798OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ 

 
p

 
Њ "%Ђ"

0џџџџџџџџџ
 К
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177461n798@Ђ=
6Ђ3
%"
inputsџџџџџџџџџД 

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 К
H__inference_simple_rnn_2_layer_call_and_return_conditional_losses_177573n798@Ђ=
6Ђ3
%"
inputsџџџџџџџџџД 

 
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ё
-__inference_simple_rnn_2_layer_call_fn_177092p798OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ 

 
p 

 
Њ "џџџџџџџџџЁ
-__inference_simple_rnn_2_layer_call_fn_177103p798OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ 

 
p

 
Њ "џџџџџџџџџ
-__inference_simple_rnn_2_layer_call_fn_177114a798@Ђ=
6Ђ3
%"
inputsџџџџџџџџџД 

 
p 

 
Њ "џџџџџџџџџ
-__inference_simple_rnn_2_layer_call_fn_177125a798@Ђ=
6Ђ3
%"
inputsџџџџџџџџџД 

 
p

 
Њ "џџџџџџџџџ
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_177680З465\ЂY
RЂO
 
inputsџџџџџџџџџ1
'Ђ$
"
states/0џџџџџџџџџ 
p 
Њ "RЂO
HЂE

0/0џџџџџџџџџ 
$!

0/1/0џџџџџџџџџ 
 
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_177709З465\ЂY
RЂO
 
inputsџџџџџџџџџ1
'Ђ$
"
states/0џџџџџџџџџ 
p
Њ "RЂO
HЂE

0/0џџџџџџџџџ 
$!

0/1/0џџџџџџџџџ 
 р
2__inference_simple_rnn_cell_1_layer_call_fn_177645Љ465\ЂY
RЂO
 
inputsџџџџџџџџџ1
'Ђ$
"
states/0џџџџџџџџџ 
p 
Њ "DЂA

0џџџџџџџџџ 
"

1/0џџџџџџџџџ р
2__inference_simple_rnn_cell_1_layer_call_fn_177659Љ465\ЂY
RЂO
 
inputsџџџџџџџџџ1
'Ђ$
"
states/0џџџџџџџџџ 
p
Њ "DЂA

0џџџџџџџџџ 
"

1/0џџџџџџџџџ 
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_177754З798\ЂY
RЂO
 
inputsџџџџџџџџџ 
'Ђ$
"
states/0џџџџџџџџџ
p 
Њ "RЂO
HЂE

0/0џџџџџџџџџ
$!

0/1/0џџџџџџџџџ
 
M__inference_simple_rnn_cell_2_layer_call_and_return_conditional_losses_177771З798\ЂY
RЂO
 
inputsџџџџџџџџџ 
'Ђ$
"
states/0џџџџџџџџџ
p
Њ "RЂO
HЂE

0/0џџџџџџџџџ
$!

0/1/0џџџџџџџџџ
 р
2__inference_simple_rnn_cell_2_layer_call_fn_177723Љ798\ЂY
RЂO
 
inputsџџџџџџџџџ 
'Ђ$
"
states/0џџџџџџџџџ
p 
Њ "DЂA

0џџџџџџџџџ
"

1/0џџџџџџџџџр
2__inference_simple_rnn_cell_2_layer_call_fn_177737Љ798\ЂY
RЂO
 
inputsџџџџџџџџџ 
'Ђ$
"
states/0џџџџџџџџџ
p
Њ "DЂA

0џџџџџџџџџ
"

1/0џџџџџџџџџ