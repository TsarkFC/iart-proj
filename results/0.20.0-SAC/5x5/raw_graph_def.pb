
C
global_step/initial_valueConst*
dtype0*
value	B : 
W
global_step
VariableV2*
	container *
dtype0*
shape: *
shared_name 
?
global_step/AssignAssignglobal_stepglobal_step/initial_value*
T0*
_class
loc:@global_step*
use_locking(*
validate_shape(
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
;
steps_to_incrementPlaceholder*
dtype0*
shape: 
9
AddAddglobal_step/readsteps_to_increment*
T0
t
AssignAssignglobal_stepAdd*
T0*
_class
loc:@global_step*
use_locking(*
validate_shape(
L
vector_observationPlaceholder*
dtype0*
shape:?????????K
5

batch_sizePlaceholder*
dtype0*
shape:
:
sequence_lengthPlaceholder*
dtype0*
shape:
;
masksPlaceholder*
dtype0*
shape:?????????
A
epsilonPlaceholder*
dtype0*
shape:?????????
;
CastCastmasks*

DstT0*

SrcT0*
Truncate( 
M
#is_continuous_control/initial_valueConst*
dtype0*
value	B : 
a
is_continuous_control
VariableV2*
	container *
dtype0*
shape: *
shared_name 
?
is_continuous_control/AssignAssignis_continuous_control#is_continuous_control/initial_value*
T0*(
_class
loc:@is_continuous_control*
use_locking(*
validate_shape(
p
is_continuous_control/readIdentityis_continuous_control*
T0*(
_class
loc:@is_continuous_control
M
#trainer_major_version/initial_valueConst*
dtype0*
value	B : 
a
trainer_major_version
VariableV2*
	container *
dtype0*
shape: *
shared_name 
?
trainer_major_version/AssignAssigntrainer_major_version#trainer_major_version/initial_value*
T0*(
_class
loc:@trainer_major_version*
use_locking(*
validate_shape(
p
trainer_major_version/readIdentitytrainer_major_version*
T0*(
_class
loc:@trainer_major_version
M
#trainer_minor_version/initial_valueConst*
dtype0*
value	B :
a
trainer_minor_version
VariableV2*
	container *
dtype0*
shape: *
shared_name 
?
trainer_minor_version/AssignAssigntrainer_minor_version#trainer_minor_version/initial_value*
T0*(
_class
loc:@trainer_minor_version*
use_locking(*
validate_shape(
p
trainer_minor_version/readIdentitytrainer_minor_version*
T0*(
_class
loc:@trainer_minor_version
M
#trainer_patch_version/initial_valueConst*
dtype0*
value	B : 
a
trainer_patch_version
VariableV2*
	container *
dtype0*
shape: *
shared_name 
?
trainer_patch_version/AssignAssigntrainer_patch_version#trainer_patch_version/initial_value*
T0*(
_class
loc:@trainer_patch_version*
use_locking(*
validate_shape(
p
trainer_patch_version/readIdentitytrainer_patch_version*
T0*(
_class
loc:@trainer_patch_version
F
version_number/initial_valueConst*
dtype0*
value	B :
Z
version_number
VariableV2*
	container *
dtype0*
shape: *
shared_name 
?
version_number/AssignAssignversion_numberversion_number/initial_value*
T0*!
_class
loc:@version_number*
use_locking(*
validate_shape(
[
version_number/readIdentityversion_number*
T0*!
_class
loc:@version_number
C
memory_size/initial_valueConst*
dtype0*
value	B : 
W
memory_size
VariableV2*
	container *
dtype0*
shape: *
shared_name 
?
memory_size/AssignAssignmemory_sizememory_size/initial_value*
T0*
_class
loc:@memory_size*
use_locking(*
validate_shape(
R
memory_size/readIdentitymemory_size*
T0*
_class
loc:@memory_size
K
!action_output_shape/initial_valueConst*
dtype0*
value	B :
_
action_output_shape
VariableV2*
	container *
dtype0*
shape: *
shared_name 
?
action_output_shape/AssignAssignaction_output_shape!action_output_shape/initial_value*
T0*&
_class
loc:@action_output_shape*
use_locking(*
validate_shape(
j
action_output_shape/readIdentityaction_output_shape*
T0*&
_class
loc:@action_output_shape
?
Fpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
valueB"K      
?
Epolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/meanConst*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
valueB
 *    
?
Gpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddevConst*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
valueB
 *l>
?
Ppolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
seed?*
seed2 
?
Dpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulMulPpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalGpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
?
@policy/main_graph_0/hidden_0/kernel/Initializer/truncated_normalAddDpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulEpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
?
#policy/main_graph_0/hidden_0/kernel
VariableV2*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
*policy/main_graph_0/hidden_0/kernel/AssignAssign#policy/main_graph_0/hidden_0/kernel@policy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
use_locking(*
validate_shape(
?
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
?
3policy/main_graph_0/hidden_0/bias/Initializer/zerosConst*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
dtype0*
valueB?*    
?
!policy/main_graph_0/hidden_0/bias
VariableV2*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
(policy/main_graph_0/hidden_0/bias/AssignAssign!policy/main_graph_0/hidden_0/bias3policy/main_graph_0/hidden_0/bias/Initializer/zeros*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
use_locking(*
validate_shape(
?
&policy/main_graph_0/hidden_0/bias/readIdentity!policy/main_graph_0/hidden_0/bias*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias
?
#policy/main_graph_0/hidden_0/MatMulMatMulvector_observation(policy/main_graph_0/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
$policy/main_graph_0/hidden_0/BiasAddBiasAdd#policy/main_graph_0/hidden_0/MatMul&policy/main_graph_0/hidden_0/bias/read*
T0*
data_formatNHWC
^
$policy/main_graph_0/hidden_0/SigmoidSigmoid$policy/main_graph_0/hidden_0/BiasAdd*
T0
|
 policy/main_graph_0/hidden_0/MulMul$policy/main_graph_0/hidden_0/BiasAdd$policy/main_graph_0/hidden_0/Sigmoid*
T0
?
Fpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
valueB"      
?
Epolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/meanConst*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
valueB
 *    
?
Gpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddevConst*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
valueB
 *??M=
?
Ppolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
seed?*
seed2
?
Dpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulMulPpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalGpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
?
@policy/main_graph_0/hidden_1/kernel/Initializer/truncated_normalAddDpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulEpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
?
#policy/main_graph_0/hidden_1/kernel
VariableV2*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
*policy/main_graph_0/hidden_1/kernel/AssignAssign#policy/main_graph_0/hidden_1/kernel@policy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
use_locking(*
validate_shape(
?
(policy/main_graph_0/hidden_1/kernel/readIdentity#policy/main_graph_0/hidden_1/kernel*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
?
3policy/main_graph_0/hidden_1/bias/Initializer/zerosConst*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
dtype0*
valueB?*    
?
!policy/main_graph_0/hidden_1/bias
VariableV2*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
(policy/main_graph_0/hidden_1/bias/AssignAssign!policy/main_graph_0/hidden_1/bias3policy/main_graph_0/hidden_1/bias/Initializer/zeros*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
use_locking(*
validate_shape(
?
&policy/main_graph_0/hidden_1/bias/readIdentity!policy/main_graph_0/hidden_1/bias*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias
?
#policy/main_graph_0/hidden_1/MatMulMatMul policy/main_graph_0/hidden_0/Mul(policy/main_graph_0/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
$policy/main_graph_0/hidden_1/BiasAddBiasAdd#policy/main_graph_0/hidden_1/MatMul&policy/main_graph_0/hidden_1/bias/read*
T0*
data_formatNHWC
^
$policy/main_graph_0/hidden_1/SigmoidSigmoid$policy/main_graph_0/hidden_1/BiasAdd*
T0
|
 policy/main_graph_0/hidden_1/MulMul$policy/main_graph_0/hidden_1/BiasAdd$policy/main_graph_0/hidden_1/Sigmoid*
T0
F
action_masksPlaceholder*
dtype0*
shape:?????????
?
6policy/dense/kernel/Initializer/truncated_normal/shapeConst*&
_class
loc:@policy/dense/kernel*
dtype0*
valueB"      
?
5policy/dense/kernel/Initializer/truncated_normal/meanConst*&
_class
loc:@policy/dense/kernel*
dtype0*
valueB
 *    
?
7policy/dense/kernel/Initializer/truncated_normal/stddevConst*&
_class
loc:@policy/dense/kernel*
dtype0*
valueB
 *??;
?
@policy/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6policy/dense/kernel/Initializer/truncated_normal/shape*
T0*&
_class
loc:@policy/dense/kernel*
dtype0*
seed?*
seed2
?
4policy/dense/kernel/Initializer/truncated_normal/mulMul@policy/dense/kernel/Initializer/truncated_normal/TruncatedNormal7policy/dense/kernel/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@policy/dense/kernel
?
0policy/dense/kernel/Initializer/truncated_normalAdd4policy/dense/kernel/Initializer/truncated_normal/mul5policy/dense/kernel/Initializer/truncated_normal/mean*
T0*&
_class
loc:@policy/dense/kernel
?
policy/dense/kernel
VariableV2*&
_class
loc:@policy/dense/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
policy/dense/kernel/AssignAssignpolicy/dense/kernel0policy/dense/kernel/Initializer/truncated_normal*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
j
policy/dense/kernel/readIdentitypolicy/dense/kernel*
T0*&
_class
loc:@policy/dense/kernel
?
policy_1/dense/MatMulMatMul policy/main_graph_0/hidden_1/Mulpolicy/dense/kernel/read*
T0*
transpose_a( *
transpose_b( 
Q
policy_1/strided_slice/stackConst*
dtype0*
valueB"        
S
policy_1/strided_slice/stack_1Const*
dtype0*
valueB"       
S
policy_1/strided_slice/stack_2Const*
dtype0*
valueB"      
?
policy_1/strided_sliceStridedSliceaction_maskspolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
;
policy_1/SoftmaxSoftmaxpolicy_1/dense/MatMul*
T0
;
policy_1/add/yConst*
dtype0*
valueB
 *???3
@
policy_1/addAddV2policy_1/Softmaxpolicy_1/add/y*
T0
B
policy_1/MulMulpolicy_1/addpolicy_1/strided_slice*
T0
H
policy_1/Sum/reduction_indicesConst*
dtype0*
value	B :
g
policy_1/SumSumpolicy_1/Mulpolicy_1/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(
@
policy_1/truedivRealDivpolicy_1/Mulpolicy_1/Sum*
T0
=
policy_1/add_1/yConst*
dtype0*
valueB
 *???3
D
policy_1/add_1AddV2policy_1/truedivpolicy_1/add_1/y*
T0
,
policy_1/LogLogpolicy_1/add_1*
T0
V
,policy_1/multinomial/Multinomial/num_samplesConst*
dtype0*
value	B :
?
 policy_1/multinomial/MultinomialMultinomialpolicy_1/Log,policy_1/multinomial/Multinomial/num_samples*
T0*
output_dtype0	*
seed?*
seed2
D
policy_1/concat/concat_dimConst*
dtype0*
value	B :
M
policy_1/concat/concatIdentity policy_1/multinomial/Multinomial*
T0	
F
policy_1/concat_1/concat_dimConst*
dtype0*
value	B :
?
policy_1/concat_1/concatIdentitypolicy_1/truediv*
T0
=
policy_1/add_2/yConst*
dtype0*
valueB
 *???3
D
policy_1/add_2AddV2policy_1/truedivpolicy_1/add_2/y*
T0
.
policy_1/Log_1Logpolicy_1/add_2*
T0
F
policy_1/concat_2/concat_dimConst*
dtype0*
value	B :
=
policy_1/concat_2/concatIdentitypolicy_1/Log_1*
T0
S
policy_1/strided_slice_1/stackConst*
dtype0*
valueB"        
U
 policy_1/strided_slice_1/stack_1Const*
dtype0*
valueB"       
U
 policy_1/strided_slice_1/stack_2Const*
dtype0*
valueB"      
?
policy_1/strided_slice_1StridedSlicepolicy_1/concat/concatpolicy_1/strided_slice_1/stack policy_1/strided_slice_1/stack_1 policy_1/strided_slice_1/stack_2*
Index0*
T0	*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask
F
policy_1/one_hot/on_valueConst*
dtype0*
valueB
 *  ??
G
policy_1/one_hot/off_valueConst*
dtype0*
valueB
 *    
@
policy_1/one_hot/depthConst*
dtype0*
value	B :
?
policy_1/one_hotOneHotpolicy_1/strided_slice_1policy_1/one_hot/depthpolicy_1/one_hot/on_valuepolicy_1/one_hot/off_value*
T0*
TI0	*
axis?????????
F
policy_1/concat_3/concat_dimConst*
dtype0*
value	B :
?
policy_1/concat_3/concatIdentitypolicy_1/one_hot*
T0
S
policy_1/strided_slice_2/stackConst*
dtype0*
valueB"        
U
 policy_1/strided_slice_2/stack_1Const*
dtype0*
valueB"       
U
 policy_1/strided_slice_2/stack_2Const*
dtype0*
valueB"      
?
policy_1/strided_slice_2StridedSlicepolicy_1/concat_2/concatpolicy_1/strided_slice_2/stack policy_1/strided_slice_2/stack_1 policy_1/strided_slice_2/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
@
policy_1/Softmax_1Softmaxpolicy_1/strided_slice_2*
T0
S
policy_1/strided_slice_3/stackConst*
dtype0*
valueB"        
U
 policy_1/strided_slice_3/stack_1Const*
dtype0*
valueB"       
U
 policy_1/strided_slice_3/stack_2Const*
dtype0*
valueB"      
?
policy_1/strided_slice_3StridedSlicepolicy_1/concat_2/concatpolicy_1/strided_slice_3/stack policy_1/strided_slice_3/stack_1 policy_1/strided_slice_3/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
Y
/policy_1/softmax_cross_entropy_with_logits/RankConst*
dtype0*
value	B :
l
0policy_1/softmax_cross_entropy_with_logits/ShapeShapepolicy_1/strided_slice_3*
T0*
out_type0
[
1policy_1/softmax_cross_entropy_with_logits/Rank_1Const*
dtype0*
value	B :
n
2policy_1/softmax_cross_entropy_with_logits/Shape_1Shapepolicy_1/strided_slice_3*
T0*
out_type0
Z
0policy_1/softmax_cross_entropy_with_logits/Sub/yConst*
dtype0*
value	B :
?
.policy_1/softmax_cross_entropy_with_logits/SubSub1policy_1/softmax_cross_entropy_with_logits/Rank_10policy_1/softmax_cross_entropy_with_logits/Sub/y*
T0
?
6policy_1/softmax_cross_entropy_with_logits/Slice/beginPack.policy_1/softmax_cross_entropy_with_logits/Sub*
N*
T0*

axis 
c
5policy_1/softmax_cross_entropy_with_logits/Slice/sizeConst*
dtype0*
valueB:
?
0policy_1/softmax_cross_entropy_with_logits/SliceSlice2policy_1/softmax_cross_entropy_with_logits/Shape_16policy_1/softmax_cross_entropy_with_logits/Slice/begin5policy_1/softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0
q
:policy_1/softmax_cross_entropy_with_logits/concat/values_0Const*
dtype0*
valueB:
?????????
`
6policy_1/softmax_cross_entropy_with_logits/concat/axisConst*
dtype0*
value	B : 
?
1policy_1/softmax_cross_entropy_with_logits/concatConcatV2:policy_1/softmax_cross_entropy_with_logits/concat/values_00policy_1/softmax_cross_entropy_with_logits/Slice6policy_1/softmax_cross_entropy_with_logits/concat/axis*
N*
T0*

Tidx0
?
2policy_1/softmax_cross_entropy_with_logits/ReshapeReshapepolicy_1/strided_slice_31policy_1/softmax_cross_entropy_with_logits/concat*
T0*
Tshape0
[
1policy_1/softmax_cross_entropy_with_logits/Rank_2Const*
dtype0*
value	B :
h
2policy_1/softmax_cross_entropy_with_logits/Shape_2Shapepolicy_1/Softmax_1*
T0*
out_type0
\
2policy_1/softmax_cross_entropy_with_logits/Sub_1/yConst*
dtype0*
value	B :
?
0policy_1/softmax_cross_entropy_with_logits/Sub_1Sub1policy_1/softmax_cross_entropy_with_logits/Rank_22policy_1/softmax_cross_entropy_with_logits/Sub_1/y*
T0
?
8policy_1/softmax_cross_entropy_with_logits/Slice_1/beginPack0policy_1/softmax_cross_entropy_with_logits/Sub_1*
N*
T0*

axis 
e
7policy_1/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
dtype0*
valueB:
?
2policy_1/softmax_cross_entropy_with_logits/Slice_1Slice2policy_1/softmax_cross_entropy_with_logits/Shape_28policy_1/softmax_cross_entropy_with_logits/Slice_1/begin7policy_1/softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0
s
<policy_1/softmax_cross_entropy_with_logits/concat_1/values_0Const*
dtype0*
valueB:
?????????
b
8policy_1/softmax_cross_entropy_with_logits/concat_1/axisConst*
dtype0*
value	B : 
?
3policy_1/softmax_cross_entropy_with_logits/concat_1ConcatV2<policy_1/softmax_cross_entropy_with_logits/concat_1/values_02policy_1/softmax_cross_entropy_with_logits/Slice_18policy_1/softmax_cross_entropy_with_logits/concat_1/axis*
N*
T0*

Tidx0
?
4policy_1/softmax_cross_entropy_with_logits/Reshape_1Reshapepolicy_1/Softmax_13policy_1/softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0
?
*policy_1/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits2policy_1/softmax_cross_entropy_with_logits/Reshape4policy_1/softmax_cross_entropy_with_logits/Reshape_1*
T0
\
2policy_1/softmax_cross_entropy_with_logits/Sub_2/yConst*
dtype0*
value	B :
?
0policy_1/softmax_cross_entropy_with_logits/Sub_2Sub/policy_1/softmax_cross_entropy_with_logits/Rank2policy_1/softmax_cross_entropy_with_logits/Sub_2/y*
T0
f
8policy_1/softmax_cross_entropy_with_logits/Slice_2/beginConst*
dtype0*
valueB: 
?
7policy_1/softmax_cross_entropy_with_logits/Slice_2/sizePack0policy_1/softmax_cross_entropy_with_logits/Sub_2*
N*
T0*

axis 
?
2policy_1/softmax_cross_entropy_with_logits/Slice_2Slice0policy_1/softmax_cross_entropy_with_logits/Shape8policy_1/softmax_cross_entropy_with_logits/Slice_2/begin7policy_1/softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0
?
4policy_1/softmax_cross_entropy_with_logits/Reshape_2Reshape*policy_1/softmax_cross_entropy_with_logits2policy_1/softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0
j
policy_1/stackPack4policy_1/softmax_cross_entropy_with_logits/Reshape_2*
N*
T0*

axis
J
 policy_1/Sum_1/reduction_indicesConst*
dtype0*
value	B :
m
policy_1/Sum_1Sumpolicy_1/stack policy_1/Sum_1/reduction_indices*
T0*

Tidx0*
	keep_dims( 
S
policy_1/strided_slice_4/stackConst*
dtype0*
valueB"        
U
 policy_1/strided_slice_4/stack_1Const*
dtype0*
valueB"       
U
 policy_1/strided_slice_4/stack_2Const*
dtype0*
valueB"      
?
policy_1/strided_slice_4StridedSlicepolicy_1/concat_3/concatpolicy_1/strided_slice_4/stack policy_1/strided_slice_4/stack_1 policy_1/strided_slice_4/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
S
policy_1/strided_slice_5/stackConst*
dtype0*
valueB"        
U
 policy_1/strided_slice_5/stack_1Const*
dtype0*
valueB"       
U
 policy_1/strided_slice_5/stack_2Const*
dtype0*
valueB"      
?
policy_1/strided_slice_5StridedSlicepolicy_1/concat_2/concatpolicy_1/strided_slice_5/stack policy_1/strided_slice_5/stack_1 policy_1/strided_slice_5/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
[
1policy_1/softmax_cross_entropy_with_logits_1/RankConst*
dtype0*
value	B :
n
2policy_1/softmax_cross_entropy_with_logits_1/ShapeShapepolicy_1/strided_slice_5*
T0*
out_type0
]
3policy_1/softmax_cross_entropy_with_logits_1/Rank_1Const*
dtype0*
value	B :
p
4policy_1/softmax_cross_entropy_with_logits_1/Shape_1Shapepolicy_1/strided_slice_5*
T0*
out_type0
\
2policy_1/softmax_cross_entropy_with_logits_1/Sub/yConst*
dtype0*
value	B :
?
0policy_1/softmax_cross_entropy_with_logits_1/SubSub3policy_1/softmax_cross_entropy_with_logits_1/Rank_12policy_1/softmax_cross_entropy_with_logits_1/Sub/y*
T0
?
8policy_1/softmax_cross_entropy_with_logits_1/Slice/beginPack0policy_1/softmax_cross_entropy_with_logits_1/Sub*
N*
T0*

axis 
e
7policy_1/softmax_cross_entropy_with_logits_1/Slice/sizeConst*
dtype0*
valueB:
?
2policy_1/softmax_cross_entropy_with_logits_1/SliceSlice4policy_1/softmax_cross_entropy_with_logits_1/Shape_18policy_1/softmax_cross_entropy_with_logits_1/Slice/begin7policy_1/softmax_cross_entropy_with_logits_1/Slice/size*
Index0*
T0
s
<policy_1/softmax_cross_entropy_with_logits_1/concat/values_0Const*
dtype0*
valueB:
?????????
b
8policy_1/softmax_cross_entropy_with_logits_1/concat/axisConst*
dtype0*
value	B : 
?
3policy_1/softmax_cross_entropy_with_logits_1/concatConcatV2<policy_1/softmax_cross_entropy_with_logits_1/concat/values_02policy_1/softmax_cross_entropy_with_logits_1/Slice8policy_1/softmax_cross_entropy_with_logits_1/concat/axis*
N*
T0*

Tidx0
?
4policy_1/softmax_cross_entropy_with_logits_1/ReshapeReshapepolicy_1/strided_slice_53policy_1/softmax_cross_entropy_with_logits_1/concat*
T0*
Tshape0
]
3policy_1/softmax_cross_entropy_with_logits_1/Rank_2Const*
dtype0*
value	B :
p
4policy_1/softmax_cross_entropy_with_logits_1/Shape_2Shapepolicy_1/strided_slice_4*
T0*
out_type0
^
4policy_1/softmax_cross_entropy_with_logits_1/Sub_1/yConst*
dtype0*
value	B :
?
2policy_1/softmax_cross_entropy_with_logits_1/Sub_1Sub3policy_1/softmax_cross_entropy_with_logits_1/Rank_24policy_1/softmax_cross_entropy_with_logits_1/Sub_1/y*
T0
?
:policy_1/softmax_cross_entropy_with_logits_1/Slice_1/beginPack2policy_1/softmax_cross_entropy_with_logits_1/Sub_1*
N*
T0*

axis 
g
9policy_1/softmax_cross_entropy_with_logits_1/Slice_1/sizeConst*
dtype0*
valueB:
?
4policy_1/softmax_cross_entropy_with_logits_1/Slice_1Slice4policy_1/softmax_cross_entropy_with_logits_1/Shape_2:policy_1/softmax_cross_entropy_with_logits_1/Slice_1/begin9policy_1/softmax_cross_entropy_with_logits_1/Slice_1/size*
Index0*
T0
u
>policy_1/softmax_cross_entropy_with_logits_1/concat_1/values_0Const*
dtype0*
valueB:
?????????
d
:policy_1/softmax_cross_entropy_with_logits_1/concat_1/axisConst*
dtype0*
value	B : 
?
5policy_1/softmax_cross_entropy_with_logits_1/concat_1ConcatV2>policy_1/softmax_cross_entropy_with_logits_1/concat_1/values_04policy_1/softmax_cross_entropy_with_logits_1/Slice_1:policy_1/softmax_cross_entropy_with_logits_1/concat_1/axis*
N*
T0*

Tidx0
?
6policy_1/softmax_cross_entropy_with_logits_1/Reshape_1Reshapepolicy_1/strided_slice_45policy_1/softmax_cross_entropy_with_logits_1/concat_1*
T0*
Tshape0
?
,policy_1/softmax_cross_entropy_with_logits_1SoftmaxCrossEntropyWithLogits4policy_1/softmax_cross_entropy_with_logits_1/Reshape6policy_1/softmax_cross_entropy_with_logits_1/Reshape_1*
T0
^
4policy_1/softmax_cross_entropy_with_logits_1/Sub_2/yConst*
dtype0*
value	B :
?
2policy_1/softmax_cross_entropy_with_logits_1/Sub_2Sub1policy_1/softmax_cross_entropy_with_logits_1/Rank4policy_1/softmax_cross_entropy_with_logits_1/Sub_2/y*
T0
h
:policy_1/softmax_cross_entropy_with_logits_1/Slice_2/beginConst*
dtype0*
valueB: 
?
9policy_1/softmax_cross_entropy_with_logits_1/Slice_2/sizePack2policy_1/softmax_cross_entropy_with_logits_1/Sub_2*
N*
T0*

axis 
?
4policy_1/softmax_cross_entropy_with_logits_1/Slice_2Slice2policy_1/softmax_cross_entropy_with_logits_1/Shape:policy_1/softmax_cross_entropy_with_logits_1/Slice_2/begin9policy_1/softmax_cross_entropy_with_logits_1/Slice_2/size*
Index0*
T0
?
6policy_1/softmax_cross_entropy_with_logits_1/Reshape_2Reshape,policy_1/softmax_cross_entropy_with_logits_14policy_1/softmax_cross_entropy_with_logits_1/Slice_2*
T0*
Tshape0
T
policy_1/NegNeg6policy_1/softmax_cross_entropy_with_logits_1/Reshape_2*
T0
D
policy_1/stack_1Packpolicy_1/Neg*
N*
T0*

axis
J
 policy_1/Sum_2/reduction_indicesConst*
dtype0*
value	B :
o
policy_1/Sum_2Sumpolicy_1/stack_1 policy_1/Sum_2/reduction_indices*
T0*

Tidx0*
	keep_dims(
5
actionIdentitypolicy_1/concat_2/concat*
T0
?
StopGradientStopGradientpolicy_1/concat_3/concat*
T0
?
initNoOp^action_output_shape/Assign^global_step/Assign^is_continuous_control/Assign^memory_size/Assign^policy/dense/kernel/Assign)^policy/main_graph_0/hidden_0/bias/Assign+^policy/main_graph_0/hidden_0/kernel/Assign)^policy/main_graph_0/hidden_1/bias/Assign+^policy/main_graph_0/hidden_1/kernel/Assign^trainer_major_version/Assign^trainer_minor_version/Assign^trainer_patch_version/Assign^version_number/Assign
4
PlaceholderPlaceholder*
dtype0*
shape: 
~
Assign_1Assignglobal_stepPlaceholder*
T0*
_class
loc:@global_step*
use_locking(*
validate_shape(
6
Placeholder_1Placeholder*
dtype0*
shape: 
?
Assign_2Assignis_continuous_controlPlaceholder_1*
T0*(
_class
loc:@is_continuous_control*
use_locking(*
validate_shape(
6
Placeholder_2Placeholder*
dtype0*
shape: 
?
Assign_3Assigntrainer_major_versionPlaceholder_2*
T0*(
_class
loc:@trainer_major_version*
use_locking(*
validate_shape(
6
Placeholder_3Placeholder*
dtype0*
shape: 
?
Assign_4Assigntrainer_minor_versionPlaceholder_3*
T0*(
_class
loc:@trainer_minor_version*
use_locking(*
validate_shape(
6
Placeholder_4Placeholder*
dtype0*
shape: 
?
Assign_5Assigntrainer_patch_versionPlaceholder_4*
T0*(
_class
loc:@trainer_patch_version*
use_locking(*
validate_shape(
6
Placeholder_5Placeholder*
dtype0*
shape: 
?
Assign_6Assignversion_numberPlaceholder_5*
T0*!
_class
loc:@version_number*
use_locking(*
validate_shape(
6
Placeholder_6Placeholder*
dtype0*
shape: 
?
Assign_7Assignmemory_sizePlaceholder_6*
T0*
_class
loc:@memory_size*
use_locking(*
validate_shape(
6
Placeholder_7Placeholder*
dtype0*
shape: 
?
Assign_8Assignaction_output_shapePlaceholder_7*
T0*&
_class
loc:@action_output_shape*
use_locking(*
validate_shape(
?
Placeholder_8Placeholder*
dtype0*
shape:	K?
?
Assign_9Assign#policy/main_graph_0/hidden_0/kernelPlaceholder_8*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
use_locking(*
validate_shape(
;
Placeholder_9Placeholder*
dtype0*
shape:?
?
	Assign_10Assign!policy/main_graph_0/hidden_0/biasPlaceholder_9*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
use_locking(*
validate_shape(
A
Placeholder_10Placeholder*
dtype0*
shape:
??
?
	Assign_11Assign#policy/main_graph_0/hidden_1/kernelPlaceholder_10*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
use_locking(*
validate_shape(
<
Placeholder_11Placeholder*
dtype0*
shape:?
?
	Assign_12Assign!policy/main_graph_0/hidden_1/biasPlaceholder_11*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
use_locking(*
validate_shape(
@
Placeholder_12Placeholder*
dtype0*
shape:	?
?
	Assign_13Assignpolicy/dense/kernelPlaceholder_12*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
C
Variable/initial_valueConst*
dtype0*
valueB
 *  ??
T
Variable
VariableV2*
	container *
dtype0*
shape: *
shared_name 
?
Variable/AssignAssignVariableVariable/initial_value*
T0*
_class
loc:@Variable*
use_locking(*
validate_shape(
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
<
Assign_14/valueConst*
dtype0*
valueB
 *    
}
	Assign_14AssignVariableAssign_14/value*
T0*
_class
loc:@Variable*
use_locking( *
validate_shape(
>
sac_sequence_lengthPlaceholder*
dtype0*
shape:
?
Gcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
valueB"K      
?
Fcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
valueB
 *    
?
Hcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
valueB
 *l>
?
Qcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalGcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
seed?*
seed2
?
Ecritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mulMulQcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalHcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
?
Acritic/value/encoder/hidden_0/kernel/Initializer/truncated_normalAddEcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mulFcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
?
$critic/value/encoder/hidden_0/kernel
VariableV2*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
+critic/value/encoder/hidden_0/kernel/AssignAssign$critic/value/encoder/hidden_0/kernelAcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
)critic/value/encoder/hidden_0/kernel/readIdentity$critic/value/encoder/hidden_0/kernel*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
?
4critic/value/encoder/hidden_0/bias/Initializer/zerosConst*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
dtype0*
valueB?*    
?
"critic/value/encoder/hidden_0/bias
VariableV2*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
)critic/value/encoder/hidden_0/bias/AssignAssign"critic/value/encoder/hidden_0/bias4critic/value/encoder/hidden_0/bias/Initializer/zeros*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
'critic/value/encoder/hidden_0/bias/readIdentity"critic/value/encoder/hidden_0/bias*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias
?
$critic/value/encoder/hidden_0/MatMulMatMulvector_observation)critic/value/encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
%critic/value/encoder/hidden_0/BiasAddBiasAdd$critic/value/encoder/hidden_0/MatMul'critic/value/encoder/hidden_0/bias/read*
T0*
data_formatNHWC
`
%critic/value/encoder/hidden_0/SigmoidSigmoid%critic/value/encoder/hidden_0/BiasAdd*
T0

!critic/value/encoder/hidden_0/MulMul%critic/value/encoder/hidden_0/BiasAdd%critic/value/encoder/hidden_0/Sigmoid*
T0
?
Gcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
valueB"      
?
Fcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
valueB
 *    
?
Hcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
valueB
 *??M=
?
Qcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalGcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
seed?*
seed2
?
Ecritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mulMulQcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalHcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
?
Acritic/value/encoder/hidden_1/kernel/Initializer/truncated_normalAddEcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mulFcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
?
$critic/value/encoder/hidden_1/kernel
VariableV2*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
+critic/value/encoder/hidden_1/kernel/AssignAssign$critic/value/encoder/hidden_1/kernelAcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
)critic/value/encoder/hidden_1/kernel/readIdentity$critic/value/encoder/hidden_1/kernel*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
?
4critic/value/encoder/hidden_1/bias/Initializer/zerosConst*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
dtype0*
valueB?*    
?
"critic/value/encoder/hidden_1/bias
VariableV2*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
)critic/value/encoder/hidden_1/bias/AssignAssign"critic/value/encoder/hidden_1/bias4critic/value/encoder/hidden_1/bias/Initializer/zeros*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
'critic/value/encoder/hidden_1/bias/readIdentity"critic/value/encoder/hidden_1/bias*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias
?
$critic/value/encoder/hidden_1/MatMulMatMul!critic/value/encoder/hidden_0/Mul)critic/value/encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
%critic/value/encoder/hidden_1/BiasAddBiasAdd$critic/value/encoder/hidden_1/MatMul'critic/value/encoder/hidden_1/bias/read*
T0*
data_formatNHWC
`
%critic/value/encoder/hidden_1/SigmoidSigmoid%critic/value/encoder/hidden_1/BiasAdd*
T0

!critic/value/encoder/hidden_1/MulMul%critic/value/encoder/hidden_1/BiasAdd%critic/value/encoder/hidden_1/Sigmoid*
T0
?
Dcritic/value/extrinsic_value/kernel/Initializer/random_uniform/shapeConst*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0*
valueB"      
?
Bcritic/value/extrinsic_value/kernel/Initializer/random_uniform/minConst*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0*
valueB
 *|ݽ
?
Bcritic/value/extrinsic_value/kernel/Initializer/random_uniform/maxConst*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0*
valueB
 *|?=
?
Lcritic/value/extrinsic_value/kernel/Initializer/random_uniform/RandomUniformRandomUniformDcritic/value/extrinsic_value/kernel/Initializer/random_uniform/shape*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0*
seed?*
seed2
?
Bcritic/value/extrinsic_value/kernel/Initializer/random_uniform/subSubBcritic/value/extrinsic_value/kernel/Initializer/random_uniform/maxBcritic/value/extrinsic_value/kernel/Initializer/random_uniform/min*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
?
Bcritic/value/extrinsic_value/kernel/Initializer/random_uniform/mulMulLcritic/value/extrinsic_value/kernel/Initializer/random_uniform/RandomUniformBcritic/value/extrinsic_value/kernel/Initializer/random_uniform/sub*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
?
>critic/value/extrinsic_value/kernel/Initializer/random_uniformAddBcritic/value/extrinsic_value/kernel/Initializer/random_uniform/mulBcritic/value/extrinsic_value/kernel/Initializer/random_uniform/min*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
?
#critic/value/extrinsic_value/kernel
VariableV2*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
*critic/value/extrinsic_value/kernel/AssignAssign#critic/value/extrinsic_value/kernel>critic/value/extrinsic_value/kernel/Initializer/random_uniform*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
use_locking(*
validate_shape(
?
(critic/value/extrinsic_value/kernel/readIdentity#critic/value/extrinsic_value/kernel*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
?
3critic/value/extrinsic_value/bias/Initializer/zerosConst*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
dtype0*
valueB*    
?
!critic/value/extrinsic_value/bias
VariableV2*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
	container *
dtype0*
shape:*
shared_name 
?
(critic/value/extrinsic_value/bias/AssignAssign!critic/value/extrinsic_value/bias3critic/value/extrinsic_value/bias/Initializer/zeros*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
use_locking(*
validate_shape(
?
&critic/value/extrinsic_value/bias/readIdentity!critic/value/extrinsic_value/bias*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias
?
#critic/value/extrinsic_value/MatMulMatMul!critic/value/encoder/hidden_1/Mul(critic/value/extrinsic_value/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
$critic/value/extrinsic_value/BiasAddBiasAdd#critic/value/extrinsic_value/MatMul&critic/value/extrinsic_value/bias/read*
T0*
data_formatNHWC
c
critic/value/Mean/inputPack$critic/value/extrinsic_value/BiasAdd*
N*
T0*

axis 
M
#critic/value/Mean/reduction_indicesConst*
dtype0*
value	B : 
}
critic/value/MeanMeancritic/value/Mean/input#critic/value/Mean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
?
Rcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
valueB"K      
?
Qcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
valueB
 *    
?
Scritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
valueB
 *l>
?
\critic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
seed?*
seed2
?
Pcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/mulMul\critic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalScritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
?
Lcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normalAddPcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/mulQcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
?
/critic/q/q1_encoding/q1_encoder/hidden_0/kernel
VariableV2*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
6critic/q/q1_encoding/q1_encoder/hidden_0/kernel/AssignAssign/critic/q/q1_encoding/q1_encoder/hidden_0/kernelLcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
4critic/q/q1_encoding/q1_encoder/hidden_0/kernel/readIdentity/critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
?
?critic/q/q1_encoding/q1_encoder/hidden_0/bias/Initializer/zerosConst*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
dtype0*
valueB?*    
?
-critic/q/q1_encoding/q1_encoder/hidden_0/bias
VariableV2*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
4critic/q/q1_encoding/q1_encoder/hidden_0/bias/AssignAssign-critic/q/q1_encoding/q1_encoder/hidden_0/bias?critic/q/q1_encoding/q1_encoder/hidden_0/bias/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
2critic/q/q1_encoding/q1_encoder/hidden_0/bias/readIdentity-critic/q/q1_encoding/q1_encoder/hidden_0/bias*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias
?
/critic/q/q1_encoding/q1_encoder/hidden_0/MatMulMatMulvector_observation4critic/q/q1_encoding/q1_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
0critic/q/q1_encoding/q1_encoder/hidden_0/BiasAddBiasAdd/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul2critic/q/q1_encoding/q1_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
v
0critic/q/q1_encoding/q1_encoder/hidden_0/SigmoidSigmoid0critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd*
T0
?
,critic/q/q1_encoding/q1_encoder/hidden_0/MulMul0critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd0critic/q/q1_encoding/q1_encoder/hidden_0/Sigmoid*
T0
?
Rcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
valueB"      
?
Qcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
valueB
 *    
?
Scritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
valueB
 *??M=
?
\critic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
seed?*
seed2
?
Pcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/mulMul\critic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalScritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
?
Lcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normalAddPcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/mulQcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
?
/critic/q/q1_encoding/q1_encoder/hidden_1/kernel
VariableV2*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
6critic/q/q1_encoding/q1_encoder/hidden_1/kernel/AssignAssign/critic/q/q1_encoding/q1_encoder/hidden_1/kernelLcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
4critic/q/q1_encoding/q1_encoder/hidden_1/kernel/readIdentity/critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
?
?critic/q/q1_encoding/q1_encoder/hidden_1/bias/Initializer/zerosConst*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
dtype0*
valueB?*    
?
-critic/q/q1_encoding/q1_encoder/hidden_1/bias
VariableV2*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
4critic/q/q1_encoding/q1_encoder/hidden_1/bias/AssignAssign-critic/q/q1_encoding/q1_encoder/hidden_1/bias?critic/q/q1_encoding/q1_encoder/hidden_1/bias/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
2critic/q/q1_encoding/q1_encoder/hidden_1/bias/readIdentity-critic/q/q1_encoding/q1_encoder/hidden_1/bias*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias
?
/critic/q/q1_encoding/q1_encoder/hidden_1/MatMulMatMul,critic/q/q1_encoding/q1_encoder/hidden_0/Mul4critic/q/q1_encoding/q1_encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
0critic/q/q1_encoding/q1_encoder/hidden_1/BiasAddBiasAdd/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul2critic/q/q1_encoding/q1_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
v
0critic/q/q1_encoding/q1_encoder/hidden_1/SigmoidSigmoid0critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd*
T0
?
,critic/q/q1_encoding/q1_encoder/hidden_1/MulMul0critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd0critic/q/q1_encoding/q1_encoder/hidden_1/Sigmoid*
T0
?
Icritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
valueB"      
?
Gcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
valueB
 *n?ܽ
?
Gcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
valueB
 *n??=
?
Qcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/RandomUniformRandomUniformIcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/shape*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
seed?*
seed2	
?
Gcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/subSubGcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/maxGcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
?
Gcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/mulMulQcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/RandomUniformGcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/sub*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
?
Ccritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniformAddGcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/mulGcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
?
(critic/q/q1_encoding/extrinsic_q1/kernel
VariableV2*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
/critic/q/q1_encoding/extrinsic_q1/kernel/AssignAssign(critic/q/q1_encoding/extrinsic_q1/kernelCcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
use_locking(*
validate_shape(
?
-critic/q/q1_encoding/extrinsic_q1/kernel/readIdentity(critic/q/q1_encoding/extrinsic_q1/kernel*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
?
8critic/q/q1_encoding/extrinsic_q1/bias/Initializer/zerosConst*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0*
valueB*    
?
&critic/q/q1_encoding/extrinsic_q1/bias
VariableV2*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
	container *
dtype0*
shape:*
shared_name 
?
-critic/q/q1_encoding/extrinsic_q1/bias/AssignAssign&critic/q/q1_encoding/extrinsic_q1/bias8critic/q/q1_encoding/extrinsic_q1/bias/Initializer/zeros*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking(*
validate_shape(
?
+critic/q/q1_encoding/extrinsic_q1/bias/readIdentity&critic/q/q1_encoding/extrinsic_q1/bias*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
?
(critic/q/q1_encoding/extrinsic_q1/MatMulMatMul,critic/q/q1_encoding/q1_encoder/hidden_1/Mul-critic/q/q1_encoding/extrinsic_q1/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
)critic/q/q1_encoding/extrinsic_q1/BiasAddBiasAdd(critic/q/q1_encoding/extrinsic_q1/MatMul+critic/q/q1_encoding/extrinsic_q1/bias/read*
T0*
data_formatNHWC
p
critic/q/q1_encoding/Mean/inputPack)critic/q/q1_encoding/extrinsic_q1/BiasAdd*
N*
T0*

axis 
U
+critic/q/q1_encoding/Mean/reduction_indicesConst*
dtype0*
value	B : 
?
critic/q/q1_encoding/MeanMeancritic/q/q1_encoding/Mean/input+critic/q/q1_encoding/Mean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
?
Rcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
valueB"K      
?
Qcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
valueB
 *    
?
Scritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
valueB
 *l>
?
\critic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
seed?*
seed2

?
Pcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/mulMul\critic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalScritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
?
Lcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normalAddPcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/mulQcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
?
/critic/q/q2_encoding/q2_encoder/hidden_0/kernel
VariableV2*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
6critic/q/q2_encoding/q2_encoder/hidden_0/kernel/AssignAssign/critic/q/q2_encoding/q2_encoder/hidden_0/kernelLcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
4critic/q/q2_encoding/q2_encoder/hidden_0/kernel/readIdentity/critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
?
?critic/q/q2_encoding/q2_encoder/hidden_0/bias/Initializer/zerosConst*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
dtype0*
valueB?*    
?
-critic/q/q2_encoding/q2_encoder/hidden_0/bias
VariableV2*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
4critic/q/q2_encoding/q2_encoder/hidden_0/bias/AssignAssign-critic/q/q2_encoding/q2_encoder/hidden_0/bias?critic/q/q2_encoding/q2_encoder/hidden_0/bias/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
2critic/q/q2_encoding/q2_encoder/hidden_0/bias/readIdentity-critic/q/q2_encoding/q2_encoder/hidden_0/bias*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias
?
/critic/q/q2_encoding/q2_encoder/hidden_0/MatMulMatMulvector_observation4critic/q/q2_encoding/q2_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
0critic/q/q2_encoding/q2_encoder/hidden_0/BiasAddBiasAdd/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul2critic/q/q2_encoding/q2_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
v
0critic/q/q2_encoding/q2_encoder/hidden_0/SigmoidSigmoid0critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd*
T0
?
,critic/q/q2_encoding/q2_encoder/hidden_0/MulMul0critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd0critic/q/q2_encoding/q2_encoder/hidden_0/Sigmoid*
T0
?
Rcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
valueB"      
?
Qcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
valueB
 *    
?
Scritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
valueB
 *??M=
?
\critic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
seed?*
seed2
?
Pcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/mulMul\critic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalScritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
?
Lcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normalAddPcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/mulQcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
?
/critic/q/q2_encoding/q2_encoder/hidden_1/kernel
VariableV2*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
6critic/q/q2_encoding/q2_encoder/hidden_1/kernel/AssignAssign/critic/q/q2_encoding/q2_encoder/hidden_1/kernelLcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
4critic/q/q2_encoding/q2_encoder/hidden_1/kernel/readIdentity/critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
?
?critic/q/q2_encoding/q2_encoder/hidden_1/bias/Initializer/zerosConst*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
dtype0*
valueB?*    
?
-critic/q/q2_encoding/q2_encoder/hidden_1/bias
VariableV2*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
4critic/q/q2_encoding/q2_encoder/hidden_1/bias/AssignAssign-critic/q/q2_encoding/q2_encoder/hidden_1/bias?critic/q/q2_encoding/q2_encoder/hidden_1/bias/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
2critic/q/q2_encoding/q2_encoder/hidden_1/bias/readIdentity-critic/q/q2_encoding/q2_encoder/hidden_1/bias*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias
?
/critic/q/q2_encoding/q2_encoder/hidden_1/MatMulMatMul,critic/q/q2_encoding/q2_encoder/hidden_0/Mul4critic/q/q2_encoding/q2_encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
0critic/q/q2_encoding/q2_encoder/hidden_1/BiasAddBiasAdd/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul2critic/q/q2_encoding/q2_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
v
0critic/q/q2_encoding/q2_encoder/hidden_1/SigmoidSigmoid0critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd*
T0
?
,critic/q/q2_encoding/q2_encoder/hidden_1/MulMul0critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd0critic/q/q2_encoding/q2_encoder/hidden_1/Sigmoid*
T0
?
Icritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
valueB"      
?
Gcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
valueB
 *n?ܽ
?
Gcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
valueB
 *n??=
?
Qcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/RandomUniformRandomUniformIcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/shape*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
seed?*
seed2
?
Gcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/subSubGcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/maxGcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
?
Gcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/mulMulQcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/RandomUniformGcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/sub*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
?
Ccritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniformAddGcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/mulGcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
?
(critic/q/q2_encoding/extrinsic_q2/kernel
VariableV2*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
/critic/q/q2_encoding/extrinsic_q2/kernel/AssignAssign(critic/q/q2_encoding/extrinsic_q2/kernelCcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
use_locking(*
validate_shape(
?
-critic/q/q2_encoding/extrinsic_q2/kernel/readIdentity(critic/q/q2_encoding/extrinsic_q2/kernel*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
?
8critic/q/q2_encoding/extrinsic_q2/bias/Initializer/zerosConst*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
dtype0*
valueB*    
?
&critic/q/q2_encoding/extrinsic_q2/bias
VariableV2*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
	container *
dtype0*
shape:*
shared_name 
?
-critic/q/q2_encoding/extrinsic_q2/bias/AssignAssign&critic/q/q2_encoding/extrinsic_q2/bias8critic/q/q2_encoding/extrinsic_q2/bias/Initializer/zeros*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
use_locking(*
validate_shape(
?
+critic/q/q2_encoding/extrinsic_q2/bias/readIdentity&critic/q/q2_encoding/extrinsic_q2/bias*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias
?
(critic/q/q2_encoding/extrinsic_q2/MatMulMatMul,critic/q/q2_encoding/q2_encoder/hidden_1/Mul-critic/q/q2_encoding/extrinsic_q2/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
)critic/q/q2_encoding/extrinsic_q2/BiasAddBiasAdd(critic/q/q2_encoding/extrinsic_q2/MatMul+critic/q/q2_encoding/extrinsic_q2/bias/read*
T0*
data_formatNHWC
p
critic/q/q2_encoding/Mean/inputPack)critic/q/q2_encoding/extrinsic_q2/BiasAdd*
N*
T0*

axis 
U
+critic/q/q2_encoding/Mean/reduction_indicesConst*
dtype0*
value	B : 
?
critic/q/q2_encoding/MeanMeancritic/q/q2_encoding/Mean/input+critic/q/q2_encoding/Mean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
?
1critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMulMatMulvector_observation4critic/q/q1_encoding/q1_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
2critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAddBiasAdd1critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul2critic/q/q1_encoding/q1_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
z
2critic/q/q1_encoding_1/q1_encoder/hidden_0/SigmoidSigmoid2critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd*
T0
?
.critic/q/q1_encoding_1/q1_encoder/hidden_0/MulMul2critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd2critic/q/q1_encoding_1/q1_encoder/hidden_0/Sigmoid*
T0
?
1critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMulMatMul.critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul4critic/q/q1_encoding/q1_encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
2critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAddBiasAdd1critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul2critic/q/q1_encoding/q1_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
z
2critic/q/q1_encoding_1/q1_encoder/hidden_1/SigmoidSigmoid2critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd*
T0
?
.critic/q/q1_encoding_1/q1_encoder/hidden_1/MulMul2critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd2critic/q/q1_encoding_1/q1_encoder/hidden_1/Sigmoid*
T0
?
*critic/q/q1_encoding_1/extrinsic_q1/MatMulMatMul.critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul-critic/q/q1_encoding/extrinsic_q1/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
+critic/q/q1_encoding_1/extrinsic_q1/BiasAddBiasAdd*critic/q/q1_encoding_1/extrinsic_q1/MatMul+critic/q/q1_encoding/extrinsic_q1/bias/read*
T0*
data_formatNHWC
t
!critic/q/q1_encoding_1/Mean/inputPack+critic/q/q1_encoding_1/extrinsic_q1/BiasAdd*
N*
T0*

axis 
W
-critic/q/q1_encoding_1/Mean/reduction_indicesConst*
dtype0*
value	B : 
?
critic/q/q1_encoding_1/MeanMean!critic/q/q1_encoding_1/Mean/input-critic/q/q1_encoding_1/Mean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
?
1critic/q/q2_encoding_1/q2_encoder/hidden_0/MatMulMatMulvector_observation4critic/q/q2_encoding/q2_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
2critic/q/q2_encoding_1/q2_encoder/hidden_0/BiasAddBiasAdd1critic/q/q2_encoding_1/q2_encoder/hidden_0/MatMul2critic/q/q2_encoding/q2_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
z
2critic/q/q2_encoding_1/q2_encoder/hidden_0/SigmoidSigmoid2critic/q/q2_encoding_1/q2_encoder/hidden_0/BiasAdd*
T0
?
.critic/q/q2_encoding_1/q2_encoder/hidden_0/MulMul2critic/q/q2_encoding_1/q2_encoder/hidden_0/BiasAdd2critic/q/q2_encoding_1/q2_encoder/hidden_0/Sigmoid*
T0
?
1critic/q/q2_encoding_1/q2_encoder/hidden_1/MatMulMatMul.critic/q/q2_encoding_1/q2_encoder/hidden_0/Mul4critic/q/q2_encoding/q2_encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
2critic/q/q2_encoding_1/q2_encoder/hidden_1/BiasAddBiasAdd1critic/q/q2_encoding_1/q2_encoder/hidden_1/MatMul2critic/q/q2_encoding/q2_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
z
2critic/q/q2_encoding_1/q2_encoder/hidden_1/SigmoidSigmoid2critic/q/q2_encoding_1/q2_encoder/hidden_1/BiasAdd*
T0
?
.critic/q/q2_encoding_1/q2_encoder/hidden_1/MulMul2critic/q/q2_encoding_1/q2_encoder/hidden_1/BiasAdd2critic/q/q2_encoding_1/q2_encoder/hidden_1/Sigmoid*
T0
?
*critic/q/q2_encoding_1/extrinsic_q2/MatMulMatMul.critic/q/q2_encoding_1/q2_encoder/hidden_1/Mul-critic/q/q2_encoding/extrinsic_q2/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
+critic/q/q2_encoding_1/extrinsic_q2/BiasAddBiasAdd*critic/q/q2_encoding_1/extrinsic_q2/MatMul+critic/q/q2_encoding/extrinsic_q2/bias/read*
T0*
data_formatNHWC
t
!critic/q/q2_encoding_1/Mean/inputPack+critic/q/q2_encoding_1/extrinsic_q2/BiasAdd*
N*
T0*

axis 
W
-critic/q/q2_encoding_1/Mean/reduction_indicesConst*
dtype0*
value	B : 
?
critic/q/q2_encoding_1/MeanMean!critic/q/q2_encoding_1/Mean/input-critic/q/q2_encoding_1/Mean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
@
sac_sequence_length_1Placeholder*
dtype0*
shape:
[
!target_network/vector_observationPlaceholder*
dtype0*
shape:?????????K
?
Vtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
dtype0*
valueB"K      
?
Utarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
dtype0*
valueB
 *    
?
Wtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
dtype0*
valueB
 *l>
?
`target_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
dtype0*
seed?*
seed2
?
Ttarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mulMul`target_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalWtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel
?
Ptarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normalAddTtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mulUtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel
?
3target_network/critic/value/encoder/hidden_0/kernel
VariableV2*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
:target_network/critic/value/encoder/hidden_0/kernel/AssignAssign3target_network/critic/value/encoder/hidden_0/kernelPtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
8target_network/critic/value/encoder/hidden_0/kernel/readIdentity3target_network/critic/value/encoder/hidden_0/kernel*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel
?
Ctarget_network/critic/value/encoder/hidden_0/bias/Initializer/zerosConst*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
dtype0*
valueB?*    
?
1target_network/critic/value/encoder/hidden_0/bias
VariableV2*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
8target_network/critic/value/encoder/hidden_0/bias/AssignAssign1target_network/critic/value/encoder/hidden_0/biasCtarget_network/critic/value/encoder/hidden_0/bias/Initializer/zeros*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
6target_network/critic/value/encoder/hidden_0/bias/readIdentity1target_network/critic/value/encoder/hidden_0/bias*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias
?
3target_network/critic/value/encoder/hidden_0/MatMulMatMul!target_network/vector_observation8target_network/critic/value/encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
4target_network/critic/value/encoder/hidden_0/BiasAddBiasAdd3target_network/critic/value/encoder/hidden_0/MatMul6target_network/critic/value/encoder/hidden_0/bias/read*
T0*
data_formatNHWC
~
4target_network/critic/value/encoder/hidden_0/SigmoidSigmoid4target_network/critic/value/encoder/hidden_0/BiasAdd*
T0
?
0target_network/critic/value/encoder/hidden_0/MulMul4target_network/critic/value/encoder/hidden_0/BiasAdd4target_network/critic/value/encoder/hidden_0/Sigmoid*
T0
?
Vtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
dtype0*
valueB"      
?
Utarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
dtype0*
valueB
 *    
?
Wtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
dtype0*
valueB
 *??M=
?
`target_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
dtype0*
seed?*
seed2
?
Ttarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mulMul`target_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalWtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel
?
Ptarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normalAddTtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mulUtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel
?
3target_network/critic/value/encoder/hidden_1/kernel
VariableV2*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
:target_network/critic/value/encoder/hidden_1/kernel/AssignAssign3target_network/critic/value/encoder/hidden_1/kernelPtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
8target_network/critic/value/encoder/hidden_1/kernel/readIdentity3target_network/critic/value/encoder/hidden_1/kernel*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel
?
Ctarget_network/critic/value/encoder/hidden_1/bias/Initializer/zerosConst*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
dtype0*
valueB?*    
?
1target_network/critic/value/encoder/hidden_1/bias
VariableV2*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
8target_network/critic/value/encoder/hidden_1/bias/AssignAssign1target_network/critic/value/encoder/hidden_1/biasCtarget_network/critic/value/encoder/hidden_1/bias/Initializer/zeros*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
6target_network/critic/value/encoder/hidden_1/bias/readIdentity1target_network/critic/value/encoder/hidden_1/bias*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias
?
3target_network/critic/value/encoder/hidden_1/MatMulMatMul0target_network/critic/value/encoder/hidden_0/Mul8target_network/critic/value/encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
4target_network/critic/value/encoder/hidden_1/BiasAddBiasAdd3target_network/critic/value/encoder/hidden_1/MatMul6target_network/critic/value/encoder/hidden_1/bias/read*
T0*
data_formatNHWC
~
4target_network/critic/value/encoder/hidden_1/SigmoidSigmoid4target_network/critic/value/encoder/hidden_1/BiasAdd*
T0
?
0target_network/critic/value/encoder/hidden_1/MulMul4target_network/critic/value/encoder/hidden_1/BiasAdd4target_network/critic/value/encoder/hidden_1/Sigmoid*
T0
?
Starget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/shapeConst*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
dtype0*
valueB"      
?
Qtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/minConst*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
dtype0*
valueB
 *|ݽ
?
Qtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/maxConst*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
dtype0*
valueB
 *|?=
?
[target_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/RandomUniformRandomUniformStarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/shape*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
dtype0*
seed?*
seed2
?
Qtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/subSubQtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/maxQtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel
?
Qtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/mulMul[target_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/RandomUniformQtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/sub*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel
?
Mtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniformAddQtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/mulQtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel
?
2target_network/critic/value/extrinsic_value/kernel
VariableV2*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
9target_network/critic/value/extrinsic_value/kernel/AssignAssign2target_network/critic/value/extrinsic_value/kernelMtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
use_locking(*
validate_shape(
?
7target_network/critic/value/extrinsic_value/kernel/readIdentity2target_network/critic/value/extrinsic_value/kernel*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel
?
Btarget_network/critic/value/extrinsic_value/bias/Initializer/zerosConst*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
dtype0*
valueB*    
?
0target_network/critic/value/extrinsic_value/bias
VariableV2*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
	container *
dtype0*
shape:*
shared_name 
?
7target_network/critic/value/extrinsic_value/bias/AssignAssign0target_network/critic/value/extrinsic_value/biasBtarget_network/critic/value/extrinsic_value/bias/Initializer/zeros*
T0*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
use_locking(*
validate_shape(
?
5target_network/critic/value/extrinsic_value/bias/readIdentity0target_network/critic/value/extrinsic_value/bias*
T0*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias
?
2target_network/critic/value/extrinsic_value/MatMulMatMul0target_network/critic/value/encoder/hidden_1/Mul7target_network/critic/value/extrinsic_value/kernel/read*
T0*
transpose_a( *
transpose_b( 
?
3target_network/critic/value/extrinsic_value/BiasAddBiasAdd2target_network/critic/value/extrinsic_value/MatMul5target_network/critic/value/extrinsic_value/bias/read*
T0*
data_formatNHWC
?
&target_network/critic/value/Mean/inputPack3target_network/critic/value/extrinsic_value/BiasAdd*
N*
T0*

axis 
\
2target_network/critic/value/Mean/reduction_indicesConst*
dtype0*
value	B : 
?
 target_network/critic/value/MeanMean&target_network/critic/value/Mean/input2target_network/critic/value/Mean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
=
value_estimate_unusedIdentitycritic/value/Mean*
T0
B
dones_holderPlaceholder*
dtype0*
shape:?????????
E
Variable_1/initial_valueConst*
dtype0*
valueB
 *RI?9
V

Variable_1
VariableV2*
	container *
dtype0*
shape: *
shared_name 
?
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
T0*
_class
loc:@Variable_1*
use_locking(*
validate_shape(
O
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1

ExpExpaction*
T0
 
mulMulExpaction*
T0
G
mul_1Mul+critic/q/q1_encoding_1/extrinsic_q1/BiasAddExp*
T0
H
strided_slice/stackConst*
dtype0*
valueB"        
J
strided_slice/stack_1Const*
dtype0*
valueB"       
J
strided_slice/stack_2Const*
dtype0*
valueB"      
?
strided_sliceStridedSlicemul_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
?
Sum/reduction_indicesConst*
dtype0*
value	B :
V
SumSumstrided_sliceSum/reduction_indices*
T0*

Tidx0*
	keep_dims(
0
stackPackSum*
N*
T0*

axis 
@
Mean/reduction_indicesConst*
dtype0*
value	B : 
Q
MeanMeanstackMean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
G
mul_2Mul+critic/q/q2_encoding_1/extrinsic_q2/BiasAddExp*
T0
J
strided_slice_1/stackConst*
dtype0*
valueB"        
L
strided_slice_1/stack_1Const*
dtype0*
valueB"       
L
strided_slice_1/stack_2Const*
dtype0*
valueB"      
?
strided_slice_1StridedSlicemul_2strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
A
Sum_1/reduction_indicesConst*
dtype0*
value	B :
\
Sum_1Sumstrided_slice_1Sum_1/reduction_indices*
T0*

Tidx0*
	keep_dims(
4
stack_1PackSum_1*
N*
T0*

axis 
B
Mean_1/reduction_indicesConst*
dtype0*
value	B : 
W
Mean_1Meanstack_1Mean_1/reduction_indices*
T0*

Tidx0*
	keep_dims( 
)
MinimumMinimumMeanMean_1*
T0
G
extrinsic_rewardsPlaceholder*
dtype0*
shape:?????????
A
ExpandDims/dimConst*
dtype0*
valueB :
?????????
K

ExpandDims
ExpandDimsdones_holderExpandDims/dim*
T0*

Tdim0
C
ExpandDims_1/dimConst*
dtype0*
valueB :
?????????
T
ExpandDims_1
ExpandDimsextrinsic_rewardsExpandDims_1/dim*
T0*

Tdim0
0
mul_3MulVariable/read
ExpandDims*
T0
2
sub/xConst*
dtype0*
valueB
 *  ??
!
subSubsub/xmul_3*
T0
4
mul_4/yConst*
dtype0*
valueB
 *?p}?
#
mul_4Mulsubmul_4/y*
T0
Q
mul_5Mulmul_43target_network/critic/value/extrinsic_value/BiasAdd*
T0
,
add_1AddV2ExpandDims_1mul_5*
T0
.
StopGradient_1StopGradientadd_1*
T0
N
mul_6MulStopGradient)critic/q/q1_encoding/extrinsic_q1/BiasAdd*
T0
J
strided_slice_2/stackConst*
dtype0*
valueB"        
L
strided_slice_2/stack_1Const*
dtype0*
valueB"       
L
strided_slice_2/stack_2Const*
dtype0*
valueB"      
?
strided_slice_2StridedSlicemul_6strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
N
mul_7MulStopGradient)critic/q/q2_encoding/extrinsic_q2/BiasAdd*
T0
J
strided_slice_3/stackConst*
dtype0*
valueB"        
L
strided_slice_3/stack_1Const*
dtype0*
valueB"       
L
strided_slice_3/stack_2Const*
dtype0*
valueB"      
?
strided_slice_3StridedSlicemul_7strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
A
Sum_2/reduction_indicesConst*
dtype0*
value	B :
\
Sum_2Sumstrided_slice_2Sum_2/reduction_indices*
T0*

Tidx0*
	keep_dims(
A
Sum_3/reduction_indicesConst*
dtype0*
value	B :
\
Sum_3Sumstrided_slice_3Sum_3/reduction_indices*
T0*

Tidx0*
	keep_dims(
9
Mean_2/inputPackSum_2*
N*
T0*

axis 
B
Mean_2/reduction_indicesConst*
dtype0*
value	B : 
\
Mean_2MeanMean_2/inputMean_2/reduction_indices*
T0*

Tidx0*
	keep_dims( 
9
Mean_3/inputPackSum_3*
N*
T0*

axis 
B
Mean_3/reduction_indicesConst*
dtype0*
value	B : 
\
Mean_3MeanMean_3/inputMean_3/reduction_indices*
T0*

Tidx0*
	keep_dims( 
=
ToFloatCastCast*

DstT0*

SrcT0*
Truncate( 
G
SquaredDifferenceSquaredDifferenceStopGradient_1Mean_2*
T0
1
mul_8MulToFloatSquaredDifference*
T0
:
ConstConst*
dtype0*
valueB"       
B
Mean_4Meanmul_8Const*
T0*

Tidx0*
	keep_dims( 
4
mul_9/xConst*
dtype0*
valueB
 *   ?
&
mul_9Mulmul_9/xMean_4*
T0
?
	ToFloat_1CastCast*

DstT0*

SrcT0*
Truncate( 
I
SquaredDifference_1SquaredDifferenceStopGradient_1Mean_3*
T0
6
mul_10Mul	ToFloat_1SquaredDifference_1*
T0
<
Const_1Const*
dtype0*
valueB"       
E
Mean_5Meanmul_10Const_1*
T0*

Tidx0*
	keep_dims( 
5
mul_11/xConst*
dtype0*
valueB
 *   ?
(
mul_11Mulmul_11/xMean_5*
T0
8
Rank/packedPackmul_9*
N*
T0*

axis 
.
RankConst*
dtype0*
value	B :
5
range/startConst*
dtype0*
value	B : 
5
range/deltaConst*
dtype0*
value	B :
:
rangeRangerange/startRankrange/delta*

Tidx0
9
Mean_6/inputPackmul_9*
N*
T0*

axis 
I
Mean_6MeanMean_6/inputrange*
T0*

Tidx0*
	keep_dims( 
;
Rank_1/packedPackmul_11*
N*
T0*

axis 
0
Rank_1Const*
dtype0*
value	B :
7
range_1/startConst*
dtype0*
value	B : 
7
range_1/deltaConst*
dtype0*
value	B :
B
range_1Rangerange_1/startRank_1range_1/delta*

Tidx0
:
Mean_7/inputPackmul_11*
N*
T0*

axis 
K
Mean_7MeanMean_7/inputrange_1*
T0*

Tidx0*
	keep_dims( 
8
Const_2Const*
dtype0*
valueB*r1?
K
log_ent_coef/initial_valueConst*
dtype0*
valueB*r1?
\
log_ent_coef
VariableV2*
	container *
dtype0*
shape:*
shared_name 
?
log_ent_coef/AssignAssignlog_ent_coeflog_ent_coef/initial_value*
T0*
_class
loc:@log_ent_coef*
use_locking(*
validate_shape(
U
log_ent_coef/readIdentitylog_ent_coef*
T0*
_class
loc:@log_ent_coef
(
Exp_1Explog_ent_coef/read*
T0
J
strided_slice_4/stackConst*
dtype0*
valueB"        
L
strided_slice_4/stack_1Const*
dtype0*
valueB"       
L
strided_slice_4/stack_2Const*
dtype0*
valueB"      
?
strided_slice_4StridedSlicemulstrided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
A
Sum_4/reduction_indicesConst*
dtype0*
value	B :
\
Sum_4Sumstrided_slice_4Sum_4/reduction_indices*
T0*

Tidx0*
	keep_dims(
4
add_2/yConst*
dtype0*
valueB
 *???>
'
add_2AddV2Sum_4add_2/y*
T0
4
stack_2Packadd_2*
N*
T0*

axis
?
	ToFloat_2CastCast*

DstT0*

SrcT0*
Truncate( 
0
StopGradient_2StopGradientstack_2*
T0
B
SqueezeSqueezeStopGradient_2*
T0*
squeeze_dims

2
mul_12Mullog_ent_coef/readSqueeze*
T0
B
Mean_8/reduction_indicesConst*
dtype0*
value	B :
V
Mean_8Meanmul_12Mean_8/reduction_indices*
T0*

Tidx0*
	keep_dims( 
)
mul_13Mul	ToFloat_2Mean_8*
T0
5
Const_3Const*
dtype0*
valueB: 
E
Mean_9Meanmul_13Const_3*
T0*

Tidx0*
	keep_dims( 

NegNegMean_9*
T0
8
mul_14MulExpcritic/q/q1_encoding_1/Mean*
T0
J
strided_slice_5/stackConst*
dtype0*
valueB"        
L
strided_slice_5/stack_1Const*
dtype0*
valueB"       
L
strided_slice_5/stack_2Const*
dtype0*
valueB"      
?
strided_slice_5StridedSlicemul_14strided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
C
strided_slice_6/stackConst*
dtype0*
valueB: 
E
strided_slice_6/stack_1Const*
dtype0*
valueB:
E
strided_slice_6/stack_2Const*
dtype0*
valueB:
?
strided_slice_6StridedSliceExp_1strided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
Index0*
T0*

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
8
mul_15Mulstrided_slice_6strided_slice_4*
T0
.
sub_1Submul_15strided_slice_5*
T0
A
Sum_5/reduction_indicesConst*
dtype0*
value	B :
R
Sum_5Sumsub_1Sum_5/reduction_indices*
T0*

Tidx0*
	keep_dims(
4
stack_3PackSum_5*
N*
T0*

axis 
?
	ToFloat_3CastCast*

DstT0*

SrcT0*
Truncate( 
:
	Squeeze_1Squeezestack_3*
T0*
squeeze_dims
 
,
mul_16Mul	ToFloat_3	Squeeze_1*
T0

Rank_2Rankmul_16*
T0
7
range_2/startConst*
dtype0*
value	B : 
7
range_2/deltaConst*
dtype0*
value	B :
B
range_2Rangerange_2/startRank_2range_2/delta*

Tidx0
F
Mean_10Meanmul_16range_2*
T0*

Tidx0*
	keep_dims( 
C
strided_slice_7/stackConst*
dtype0*
valueB: 
E
strided_slice_7/stack_1Const*
dtype0*
valueB:
E
strided_slice_7/stack_2Const*
dtype0*
valueB:
?
strided_slice_7StridedSliceExp_1strided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
Index0*
T0*

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
8
mul_17Mulstrided_slice_7strided_slice_4*
T0
A
Sum_6/reduction_indicesConst*
dtype0*
value	B :
S
Sum_6Summul_17Sum_6/reduction_indices*
T0*

Tidx0*
	keep_dims(
4
stack_4PackSum_6*
N*
T0*

axis 
C
Mean_11/reduction_indicesConst*
dtype0*
value	B : 
Y
Mean_11Meanstack_4Mean_11/reduction_indices*
T0*

Tidx0*
	keep_dims( 
'
sub_2SubMinimumMean_11*
T0
.
StopGradient_3StopGradientsub_2*
T0
?
	ToFloat_4CastCast*

DstT0*

SrcT0*
Truncate( 
g
SquaredDifference_2SquaredDifference$critic/value/extrinsic_value/BiasAddStopGradient_3*
T0
6
mul_18Mul	ToFloat_4SquaredDifference_2*
T0
<
Const_4Const*
dtype0*
valueB"       
F
Mean_12Meanmul_18Const_4*
T0*

Tidx0*
	keep_dims( 
5
mul_19/xConst*
dtype0*
valueB
 *   ?
)
mul_19Mulmul_19/xMean_12*
T0
;
Rank_3/packedPackmul_19*
N*
T0*

axis 
0
Rank_3Const*
dtype0*
value	B :
7
range_3/startConst*
dtype0*
value	B : 
7
range_3/deltaConst*
dtype0*
value	B :
B
range_3Rangerange_3/startRank_3range_3/delta*

Tidx0
;
Mean_13/inputPackmul_19*
N*
T0*

axis 
M
Mean_13MeanMean_13/inputrange_3*
T0*

Tidx0*
	keep_dims( 
'
add_3AddV2Mean_6Mean_7*
T0
'
add_4AddV2add_3Mean_13*
T0
5
mul_20/xConst*
dtype0*
valueB
 *R?~?
Z
mul_20Mulmul_20/x8target_network/critic/value/encoder/hidden_0/kernel/read*
T0
5
mul_21/xConst*
dtype0*
valueB
 *
ף;
K
mul_21Mulmul_21/x)critic/value/encoder/hidden_0/kernel/read*
T0
'
add_5AddV2mul_20mul_21*
T0
?
	Assign_15Assign3target_network/critic/value/encoder/hidden_0/kerneladd_5*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
use_locking(*
validate_shape(
5
mul_22/xConst*
dtype0*
valueB
 *R?~?
X
mul_22Mulmul_22/x6target_network/critic/value/encoder/hidden_0/bias/read*
T0
5
mul_23/xConst*
dtype0*
valueB
 *
ף;
I
mul_23Mulmul_23/x'critic/value/encoder/hidden_0/bias/read*
T0
'
add_6AddV2mul_22mul_23*
T0
?
	Assign_16Assign1target_network/critic/value/encoder/hidden_0/biasadd_6*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
use_locking(*
validate_shape(
5
mul_24/xConst*
dtype0*
valueB
 *R?~?
Z
mul_24Mulmul_24/x8target_network/critic/value/encoder/hidden_1/kernel/read*
T0
5
mul_25/xConst*
dtype0*
valueB
 *
ף;
K
mul_25Mulmul_25/x)critic/value/encoder/hidden_1/kernel/read*
T0
'
add_7AddV2mul_24mul_25*
T0
?
	Assign_17Assign3target_network/critic/value/encoder/hidden_1/kerneladd_7*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
use_locking(*
validate_shape(
5
mul_26/xConst*
dtype0*
valueB
 *R?~?
X
mul_26Mulmul_26/x6target_network/critic/value/encoder/hidden_1/bias/read*
T0
5
mul_27/xConst*
dtype0*
valueB
 *
ף;
I
mul_27Mulmul_27/x'critic/value/encoder/hidden_1/bias/read*
T0
'
add_8AddV2mul_26mul_27*
T0
?
	Assign_18Assign1target_network/critic/value/encoder/hidden_1/biasadd_8*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
use_locking(*
validate_shape(
5
mul_28/xConst*
dtype0*
valueB
 *R?~?
Y
mul_28Mulmul_28/x7target_network/critic/value/extrinsic_value/kernel/read*
T0
5
mul_29/xConst*
dtype0*
valueB
 *
ף;
J
mul_29Mulmul_29/x(critic/value/extrinsic_value/kernel/read*
T0
'
add_9AddV2mul_28mul_29*
T0
?
	Assign_19Assign2target_network/critic/value/extrinsic_value/kerneladd_9*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
use_locking(*
validate_shape(
5
mul_30/xConst*
dtype0*
valueB
 *R?~?
W
mul_30Mulmul_30/x5target_network/critic/value/extrinsic_value/bias/read*
T0
5
mul_31/xConst*
dtype0*
valueB
 *
ף;
H
mul_31Mulmul_31/x&critic/value/extrinsic_value/bias/read*
T0
(
add_10AddV2mul_30mul_31*
T0
?
	Assign_20Assign0target_network/critic/value/extrinsic_value/biasadd_10*
T0*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
use_locking(*
validate_shape(
?
	Assign_21Assign3target_network/critic/value/encoder/hidden_0/kernel)critic/value/encoder/hidden_0/kernel/read*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
	Assign_22Assign1target_network/critic/value/encoder/hidden_0/bias'critic/value/encoder/hidden_0/bias/read*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
	Assign_23Assign3target_network/critic/value/encoder/hidden_1/kernel)critic/value/encoder/hidden_1/kernel/read*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
	Assign_24Assign1target_network/critic/value/encoder/hidden_1/bias'critic/value/encoder/hidden_1/bias/read*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
	Assign_25Assign2target_network/critic/value/extrinsic_value/kernel(critic/value/extrinsic_value/kernel/read*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
use_locking(*
validate_shape(
?
	Assign_26Assign0target_network/critic/value/extrinsic_value/bias&critic/value/extrinsic_value/bias/read*
T0*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
use_locking(*
validate_shape(
8
gradients/ShapeConst*
dtype0*
valueB 
F
gradients/grad_ys_0/ConstConst*
dtype0*
valueB
 *  ??
b
gradients/grad_ys_0Fillgradients/Shapegradients/grad_ys_0/Const*
T0*

index_type0
F
gradients/Mean_10_grad/ShapeShapemul_16*
T0*
out_type0
?
gradients/Mean_10_grad/SizeSizegradients/Mean_10_grad/Shape*
T0*/
_class%
#!loc:@gradients/Mean_10_grad/Shape*
out_type0
?
gradients/Mean_10_grad/addAddV2range_2gradients/Mean_10_grad/Size*
T0*/
_class%
#!loc:@gradients/Mean_10_grad/Shape
?
gradients/Mean_10_grad/modFloorModgradients/Mean_10_grad/addgradients/Mean_10_grad/Size*
T0*/
_class%
#!loc:@gradients/Mean_10_grad/Shape
?
gradients/Mean_10_grad/Shape_1Shapegradients/Mean_10_grad/mod*
T0*/
_class%
#!loc:@gradients/Mean_10_grad/Shape*
out_type0
}
"gradients/Mean_10_grad/range/startConst*/
_class%
#!loc:@gradients/Mean_10_grad/Shape*
dtype0*
value	B : 
}
"gradients/Mean_10_grad/range/deltaConst*/
_class%
#!loc:@gradients/Mean_10_grad/Shape*
dtype0*
value	B :
?
gradients/Mean_10_grad/rangeRange"gradients/Mean_10_grad/range/startgradients/Mean_10_grad/Size"gradients/Mean_10_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients/Mean_10_grad/Shape
|
!gradients/Mean_10_grad/ones/ConstConst*/
_class%
#!loc:@gradients/Mean_10_grad/Shape*
dtype0*
value	B :
?
gradients/Mean_10_grad/onesFillgradients/Mean_10_grad/Shape_1!gradients/Mean_10_grad/ones/Const*
T0*/
_class%
#!loc:@gradients/Mean_10_grad/Shape*

index_type0
?
$gradients/Mean_10_grad/DynamicStitchDynamicStitchgradients/Mean_10_grad/rangegradients/Mean_10_grad/modgradients/Mean_10_grad/Shapegradients/Mean_10_grad/ones*
N*
T0*/
_class%
#!loc:@gradients/Mean_10_grad/Shape
{
gradients/Mean_10_grad/ReshapeReshapegradients/grad_ys_0$gradients/Mean_10_grad/DynamicStitch*
T0*
Tshape0
?
"gradients/Mean_10_grad/BroadcastToBroadcastTogradients/Mean_10_grad/Reshapegradients/Mean_10_grad/Shape*
T0*

Tidx0
H
gradients/Mean_10_grad/Shape_2Shapemul_16*
T0*
out_type0
G
gradients/Mean_10_grad/Shape_3Const*
dtype0*
valueB 
J
gradients/Mean_10_grad/ConstConst*
dtype0*
valueB: 
?
gradients/Mean_10_grad/ProdProdgradients/Mean_10_grad/Shape_2gradients/Mean_10_grad/Const*
T0*

Tidx0*
	keep_dims( 
L
gradients/Mean_10_grad/Const_1Const*
dtype0*
valueB: 
?
gradients/Mean_10_grad/Prod_1Prodgradients/Mean_10_grad/Shape_3gradients/Mean_10_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
J
 gradients/Mean_10_grad/Maximum/yConst*
dtype0*
value	B :
s
gradients/Mean_10_grad/MaximumMaximumgradients/Mean_10_grad/Prod_1 gradients/Mean_10_grad/Maximum/y*
T0
q
gradients/Mean_10_grad/floordivFloorDivgradients/Mean_10_grad/Prodgradients/Mean_10_grad/Maximum*
T0
l
gradients/Mean_10_grad/CastCastgradients/Mean_10_grad/floordiv*

DstT0*

SrcT0*
Truncate( 
s
gradients/Mean_10_grad/truedivRealDiv"gradients/Mean_10_grad/BroadcastTogradients/Mean_10_grad/Cast*
T0
H
gradients/mul_16_grad/ShapeShape	ToFloat_3*
T0*
out_type0
J
gradients/mul_16_grad/Shape_1Shape	Squeeze_1*
T0*
out_type0
?
+gradients/mul_16_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_16_grad/Shapegradients/mul_16_grad/Shape_1*
T0
T
gradients/mul_16_grad/MulMulgradients/Mean_10_grad/truediv	Squeeze_1*
T0
?
gradients/mul_16_grad/SumSumgradients/mul_16_grad/Mul+gradients/mul_16_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/mul_16_grad/ReshapeReshapegradients/mul_16_grad/Sumgradients/mul_16_grad/Shape*
T0*
Tshape0
V
gradients/mul_16_grad/Mul_1Mul	ToFloat_3gradients/Mean_10_grad/truediv*
T0
?
gradients/mul_16_grad/Sum_1Sumgradients/mul_16_grad/Mul_1-gradients/mul_16_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/mul_16_grad/Reshape_1Reshapegradients/mul_16_grad/Sum_1gradients/mul_16_grad/Shape_1*
T0*
Tshape0
p
&gradients/mul_16_grad/tuple/group_depsNoOp^gradients/mul_16_grad/Reshape ^gradients/mul_16_grad/Reshape_1
?
.gradients/mul_16_grad/tuple/control_dependencyIdentitygradients/mul_16_grad/Reshape'^gradients/mul_16_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_16_grad/Reshape
?
0gradients/mul_16_grad/tuple/control_dependency_1Identitygradients/mul_16_grad/Reshape_1'^gradients/mul_16_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/mul_16_grad/Reshape_1
I
gradients/Squeeze_1_grad/ShapeShapestack_3*
T0*
out_type0
?
 gradients/Squeeze_1_grad/ReshapeReshape0gradients/mul_16_grad/tuple/control_dependency_1gradients/Squeeze_1_grad/Shape*
T0*
Tshape0
j
gradients/stack_3_grad/unstackUnpack gradients/Squeeze_1_grad/Reshape*
T0*

axis *	
num
C
gradients/Sum_5_grad/ShapeShapesub_1*
T0*
out_type0
?
 gradients/Sum_5_grad/BroadcastToBroadcastTogradients/stack_3_grad/unstackgradients/Sum_5_grad/Shape*
T0*

Tidx0
D
gradients/sub_1_grad/ShapeShapemul_15*
T0*
out_type0
O
gradients/sub_1_grad/Shape_1Shapestrided_slice_5*
T0*
out_type0
?
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0
?
gradients/sub_1_grad/SumSum gradients/Sum_5_grad/BroadcastTo*gradients/sub_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0
J
gradients/sub_1_grad/NegNeg gradients/Sum_5_grad/BroadcastTo*
T0
?
gradients/sub_1_grad/Sum_1Sumgradients/sub_1_grad/Neg,gradients/sub_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Sum_1gradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
?
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
?
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
N
gradients/mul_15_grad/ShapeShapestrided_slice_6*
T0*
out_type0
P
gradients/mul_15_grad/Shape_1Shapestrided_slice_4*
T0*
out_type0
?
+gradients/mul_15_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_15_grad/Shapegradients/mul_15_grad/Shape_1*
T0
i
gradients/mul_15_grad/MulMul-gradients/sub_1_grad/tuple/control_dependencystrided_slice_4*
T0
?
gradients/mul_15_grad/SumSumgradients/mul_15_grad/Mul+gradients/mul_15_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/mul_15_grad/ReshapeReshapegradients/mul_15_grad/Sumgradients/mul_15_grad/Shape*
T0*
Tshape0
k
gradients/mul_15_grad/Mul_1Mulstrided_slice_6-gradients/sub_1_grad/tuple/control_dependency*
T0
?
gradients/mul_15_grad/Sum_1Sumgradients/mul_15_grad/Mul_1-gradients/mul_15_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/mul_15_grad/Reshape_1Reshapegradients/mul_15_grad/Sum_1gradients/mul_15_grad/Shape_1*
T0*
Tshape0
p
&gradients/mul_15_grad/tuple/group_depsNoOp^gradients/mul_15_grad/Reshape ^gradients/mul_15_grad/Reshape_1
?
.gradients/mul_15_grad/tuple/control_dependencyIdentitygradients/mul_15_grad/Reshape'^gradients/mul_15_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_15_grad/Reshape
?
0gradients/mul_15_grad/tuple/control_dependency_1Identitygradients/mul_15_grad/Reshape_1'^gradients/mul_15_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/mul_15_grad/Reshape_1
N
$gradients/strided_slice_5_grad/ShapeShapemul_14*
T0*
out_type0
j
5gradients/strided_slice_5_grad/StridedSliceGrad/beginConst*
dtype0*
valueB"        
h
3gradients/strided_slice_5_grad/StridedSliceGrad/endConst*
dtype0*
valueB"       
l
7gradients/strided_slice_5_grad/StridedSliceGrad/stridesConst*
dtype0*
valueB"      
?
/gradients/strided_slice_5_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_5_grad/Shape5gradients/strided_slice_5_grad/StridedSliceGrad/begin3gradients/strided_slice_5_grad/StridedSliceGrad/end7gradients/strided_slice_5_grad/StridedSliceGrad/strides/gradients/sub_1_grad/tuple/control_dependency_1*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
K
$gradients/strided_slice_4_grad/ShapeShapemul*
T0*
out_type0
j
5gradients/strided_slice_4_grad/StridedSliceGrad/beginConst*
dtype0*
valueB"        
h
3gradients/strided_slice_4_grad/StridedSliceGrad/endConst*
dtype0*
valueB"       
l
7gradients/strided_slice_4_grad/StridedSliceGrad/stridesConst*
dtype0*
valueB"      
?
/gradients/strided_slice_4_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_4_grad/Shape5gradients/strided_slice_4_grad/StridedSliceGrad/begin3gradients/strided_slice_4_grad/StridedSliceGrad/end7gradients/strided_slice_4_grad/StridedSliceGrad/strides0gradients/mul_15_grad/tuple/control_dependency_1*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
B
gradients/mul_14_grad/ShapeShapeExp*
T0*
out_type0
\
gradients/mul_14_grad/Shape_1Shapecritic/q/q1_encoding_1/Mean*
T0*
out_type0
?
+gradients/mul_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_14_grad/Shapegradients/mul_14_grad/Shape_1*
T0
w
gradients/mul_14_grad/MulMul/gradients/strided_slice_5_grad/StridedSliceGradcritic/q/q1_encoding_1/Mean*
T0
?
gradients/mul_14_grad/SumSumgradients/mul_14_grad/Mul+gradients/mul_14_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/mul_14_grad/ReshapeReshapegradients/mul_14_grad/Sumgradients/mul_14_grad/Shape*
T0*
Tshape0
a
gradients/mul_14_grad/Mul_1MulExp/gradients/strided_slice_5_grad/StridedSliceGrad*
T0
?
gradients/mul_14_grad/Sum_1Sumgradients/mul_14_grad/Mul_1-gradients/mul_14_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/mul_14_grad/Reshape_1Reshapegradients/mul_14_grad/Sum_1gradients/mul_14_grad/Shape_1*
T0*
Tshape0
p
&gradients/mul_14_grad/tuple/group_depsNoOp^gradients/mul_14_grad/Reshape ^gradients/mul_14_grad/Reshape_1
?
.gradients/mul_14_grad/tuple/control_dependencyIdentitygradients/mul_14_grad/Reshape'^gradients/mul_14_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_14_grad/Reshape
?
0gradients/mul_14_grad/tuple/control_dependency_1Identitygradients/mul_14_grad/Reshape_1'^gradients/mul_14_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/mul_14_grad/Reshape_1
?
gradients/mul_grad/ShapeShapeExp*
T0*
out_type0
D
gradients/mul_grad/Shape_1Shapeaction*
T0*
out_type0
?
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0
_
gradients/mul_grad/MulMul/gradients/strided_slice_4_grad/StridedSliceGradaction*
T0
?
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0
^
gradients/mul_grad/Mul_1MulExp/gradients/strided_slice_4_grad/StridedSliceGrad*
T0
?
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
t
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
?
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape
?
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
?
gradients/AddNAddN.gradients/mul_14_grad/tuple/control_dependency+gradients/mul_grad/tuple/control_dependency*
N*
T0*0
_class&
$"loc:@gradients/mul_14_grad/Reshape
;
gradients/Exp_grad/mulMulgradients/AddNExp*
T0
?
gradients/AddN_1AddN-gradients/mul_grad/tuple/control_dependency_1gradients/Exp_grad/mul*
N*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
b
(gradients/policy_1/Log_1_grad/Reciprocal
Reciprocalpolicy_1/add_2^gradients/AddN_1*
T0
m
!gradients/policy_1/Log_1_grad/mulMulgradients/AddN_1(gradients/policy_1/Log_1_grad/Reciprocal*
T0
W
#gradients/policy_1/add_2_grad/ShapeShapepolicy_1/truediv*
T0*
out_type0
Y
%gradients/policy_1/add_2_grad/Shape_1Shapepolicy_1/add_2/y*
T0*
out_type0
?
3gradients/policy_1/add_2_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/policy_1/add_2_grad/Shape%gradients/policy_1/add_2_grad/Shape_1*
T0
?
!gradients/policy_1/add_2_grad/SumSum!gradients/policy_1/Log_1_grad/mul3gradients/policy_1/add_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
%gradients/policy_1/add_2_grad/ReshapeReshape!gradients/policy_1/add_2_grad/Sum#gradients/policy_1/add_2_grad/Shape*
T0*
Tshape0
?
#gradients/policy_1/add_2_grad/Sum_1Sum!gradients/policy_1/Log_1_grad/mul5gradients/policy_1/add_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
'gradients/policy_1/add_2_grad/Reshape_1Reshape#gradients/policy_1/add_2_grad/Sum_1%gradients/policy_1/add_2_grad/Shape_1*
T0*
Tshape0
?
.gradients/policy_1/add_2_grad/tuple/group_depsNoOp&^gradients/policy_1/add_2_grad/Reshape(^gradients/policy_1/add_2_grad/Reshape_1
?
6gradients/policy_1/add_2_grad/tuple/control_dependencyIdentity%gradients/policy_1/add_2_grad/Reshape/^gradients/policy_1/add_2_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/add_2_grad/Reshape
?
8gradients/policy_1/add_2_grad/tuple/control_dependency_1Identity'gradients/policy_1/add_2_grad/Reshape_1/^gradients/policy_1/add_2_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/add_2_grad/Reshape_1
U
%gradients/policy_1/truediv_grad/ShapeShapepolicy_1/Mul*
T0*
out_type0
W
'gradients/policy_1/truediv_grad/Shape_1Shapepolicy_1/Sum*
T0*
out_type0
?
5gradients/policy_1/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/policy_1/truediv_grad/Shape'gradients/policy_1/truediv_grad/Shape_1*
T0
?
'gradients/policy_1/truediv_grad/RealDivRealDiv6gradients/policy_1/add_2_grad/tuple/control_dependencypolicy_1/Sum*
T0
?
#gradients/policy_1/truediv_grad/SumSum'gradients/policy_1/truediv_grad/RealDiv5gradients/policy_1/truediv_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
'gradients/policy_1/truediv_grad/ReshapeReshape#gradients/policy_1/truediv_grad/Sum%gradients/policy_1/truediv_grad/Shape*
T0*
Tshape0
A
#gradients/policy_1/truediv_grad/NegNegpolicy_1/Mul*
T0
p
)gradients/policy_1/truediv_grad/RealDiv_1RealDiv#gradients/policy_1/truediv_grad/Negpolicy_1/Sum*
T0
v
)gradients/policy_1/truediv_grad/RealDiv_2RealDiv)gradients/policy_1/truediv_grad/RealDiv_1policy_1/Sum*
T0
?
#gradients/policy_1/truediv_grad/mulMul6gradients/policy_1/add_2_grad/tuple/control_dependency)gradients/policy_1/truediv_grad/RealDiv_2*
T0
?
%gradients/policy_1/truediv_grad/Sum_1Sum#gradients/policy_1/truediv_grad/mul7gradients/policy_1/truediv_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
)gradients/policy_1/truediv_grad/Reshape_1Reshape%gradients/policy_1/truediv_grad/Sum_1'gradients/policy_1/truediv_grad/Shape_1*
T0*
Tshape0
?
0gradients/policy_1/truediv_grad/tuple/group_depsNoOp(^gradients/policy_1/truediv_grad/Reshape*^gradients/policy_1/truediv_grad/Reshape_1
?
8gradients/policy_1/truediv_grad/tuple/control_dependencyIdentity'gradients/policy_1/truediv_grad/Reshape1^gradients/policy_1/truediv_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/truediv_grad/Reshape
?
:gradients/policy_1/truediv_grad/tuple/control_dependency_1Identity)gradients/policy_1/truediv_grad/Reshape_11^gradients/policy_1/truediv_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/policy_1/truediv_grad/Reshape_1
Q
!gradients/policy_1/Sum_grad/ShapeShapepolicy_1/Mul*
T0*
out_type0
?
'gradients/policy_1/Sum_grad/BroadcastToBroadcastTo:gradients/policy_1/truediv_grad/tuple/control_dependency_1!gradients/policy_1/Sum_grad/Shape*
T0*

Tidx0
?
gradients/AddN_2AddN8gradients/policy_1/truediv_grad/tuple/control_dependency'gradients/policy_1/Sum_grad/BroadcastTo*
N*
T0*:
_class0
.,loc:@gradients/policy_1/truediv_grad/Reshape
Q
!gradients/policy_1/Mul_grad/ShapeShapepolicy_1/add*
T0*
out_type0
]
#gradients/policy_1/Mul_grad/Shape_1Shapepolicy_1/strided_slice*
T0*
out_type0
?
1gradients/policy_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/policy_1/Mul_grad/Shape#gradients/policy_1/Mul_grad/Shape_1*
T0
Y
gradients/policy_1/Mul_grad/MulMulgradients/AddN_2policy_1/strided_slice*
T0
?
gradients/policy_1/Mul_grad/SumSumgradients/policy_1/Mul_grad/Mul1gradients/policy_1/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
#gradients/policy_1/Mul_grad/ReshapeReshapegradients/policy_1/Mul_grad/Sum!gradients/policy_1/Mul_grad/Shape*
T0*
Tshape0
Q
!gradients/policy_1/Mul_grad/Mul_1Mulpolicy_1/addgradients/AddN_2*
T0
?
!gradients/policy_1/Mul_grad/Sum_1Sum!gradients/policy_1/Mul_grad/Mul_13gradients/policy_1/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
%gradients/policy_1/Mul_grad/Reshape_1Reshape!gradients/policy_1/Mul_grad/Sum_1#gradients/policy_1/Mul_grad/Shape_1*
T0*
Tshape0
?
,gradients/policy_1/Mul_grad/tuple/group_depsNoOp$^gradients/policy_1/Mul_grad/Reshape&^gradients/policy_1/Mul_grad/Reshape_1
?
4gradients/policy_1/Mul_grad/tuple/control_dependencyIdentity#gradients/policy_1/Mul_grad/Reshape-^gradients/policy_1/Mul_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/policy_1/Mul_grad/Reshape
?
6gradients/policy_1/Mul_grad/tuple/control_dependency_1Identity%gradients/policy_1/Mul_grad/Reshape_1-^gradients/policy_1/Mul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/Mul_grad/Reshape_1
U
!gradients/policy_1/add_grad/ShapeShapepolicy_1/Softmax*
T0*
out_type0
U
#gradients/policy_1/add_grad/Shape_1Shapepolicy_1/add/y*
T0*
out_type0
?
1gradients/policy_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/policy_1/add_grad/Shape#gradients/policy_1/add_grad/Shape_1*
T0
?
gradients/policy_1/add_grad/SumSum4gradients/policy_1/Mul_grad/tuple/control_dependency1gradients/policy_1/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
#gradients/policy_1/add_grad/ReshapeReshapegradients/policy_1/add_grad/Sum!gradients/policy_1/add_grad/Shape*
T0*
Tshape0
?
!gradients/policy_1/add_grad/Sum_1Sum4gradients/policy_1/Mul_grad/tuple/control_dependency3gradients/policy_1/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
%gradients/policy_1/add_grad/Reshape_1Reshape!gradients/policy_1/add_grad/Sum_1#gradients/policy_1/add_grad/Shape_1*
T0*
Tshape0
?
,gradients/policy_1/add_grad/tuple/group_depsNoOp$^gradients/policy_1/add_grad/Reshape&^gradients/policy_1/add_grad/Reshape_1
?
4gradients/policy_1/add_grad/tuple/control_dependencyIdentity#gradients/policy_1/add_grad/Reshape-^gradients/policy_1/add_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/policy_1/add_grad/Reshape
?
6gradients/policy_1/add_grad/tuple/control_dependency_1Identity%gradients/policy_1/add_grad/Reshape_1-^gradients/policy_1/add_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/add_grad/Reshape_1
{
#gradients/policy_1/Softmax_grad/mulMul4gradients/policy_1/add_grad/tuple/control_dependencypolicy_1/Softmax*
T0
h
5gradients/policy_1/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB :
?????????
?
#gradients/policy_1/Softmax_grad/SumSum#gradients/policy_1/Softmax_grad/mul5gradients/policy_1/Softmax_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(
?
#gradients/policy_1/Softmax_grad/subSub4gradients/policy_1/add_grad/tuple/control_dependency#gradients/policy_1/Softmax_grad/Sum*
T0
l
%gradients/policy_1/Softmax_grad/mul_1Mul#gradients/policy_1/Softmax_grad/subpolicy_1/Softmax*
T0
?
+gradients/policy_1/dense/MatMul_grad/MatMulMatMul%gradients/policy_1/Softmax_grad/mul_1policy/dense/kernel/read*
T0*
transpose_a( *
transpose_b(
?
-gradients/policy_1/dense/MatMul_grad/MatMul_1MatMul policy/main_graph_0/hidden_1/Mul%gradients/policy_1/Softmax_grad/mul_1*
T0*
transpose_a(*
transpose_b( 
?
5gradients/policy_1/dense/MatMul_grad/tuple/group_depsNoOp,^gradients/policy_1/dense/MatMul_grad/MatMul.^gradients/policy_1/dense/MatMul_grad/MatMul_1
?
=gradients/policy_1/dense/MatMul_grad/tuple/control_dependencyIdentity+gradients/policy_1/dense/MatMul_grad/MatMul6^gradients/policy_1/dense/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/policy_1/dense/MatMul_grad/MatMul
?
?gradients/policy_1/dense/MatMul_grad/tuple/control_dependency_1Identity-gradients/policy_1/dense/MatMul_grad/MatMul_16^gradients/policy_1/dense/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/policy_1/dense/MatMul_grad/MatMul_1
}
5gradients/policy/main_graph_0/hidden_1/Mul_grad/ShapeShape$policy/main_graph_0/hidden_1/BiasAdd*
T0*
out_type0

7gradients/policy/main_graph_0/hidden_1/Mul_grad/Shape_1Shape$policy/main_graph_0/hidden_1/Sigmoid*
T0*
out_type0
?
Egradients/policy/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/policy/main_graph_0/hidden_1/Mul_grad/Shape7gradients/policy/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0
?
3gradients/policy/main_graph_0/hidden_1/Mul_grad/MulMul=gradients/policy_1/dense/MatMul_grad/tuple/control_dependency$policy/main_graph_0/hidden_1/Sigmoid*
T0
?
3gradients/policy/main_graph_0/hidden_1/Mul_grad/SumSum3gradients/policy/main_graph_0/hidden_1/Mul_grad/MulEgradients/policy/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
7gradients/policy/main_graph_0/hidden_1/Mul_grad/ReshapeReshape3gradients/policy/main_graph_0/hidden_1/Mul_grad/Sum5gradients/policy/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0
?
5gradients/policy/main_graph_0/hidden_1/Mul_grad/Mul_1Mul$policy/main_graph_0/hidden_1/BiasAdd=gradients/policy_1/dense/MatMul_grad/tuple/control_dependency*
T0
?
5gradients/policy/main_graph_0/hidden_1/Mul_grad/Sum_1Sum5gradients/policy/main_graph_0/hidden_1/Mul_grad/Mul_1Ggradients/policy/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
9gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape5gradients/policy/main_graph_0/hidden_1/Mul_grad/Sum_17gradients/policy/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
?
@gradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp8^gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape:^gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape_1
?
Hgradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity7gradients/policy/main_graph_0/hidden_1/Mul_grad/ReshapeA^gradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape
?
Jgradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity9gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape_1A^gradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape_1
?
?gradients/policy/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad$policy/main_graph_0/hidden_1/SigmoidJgradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
?
gradients/AddN_3AddNHgradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency?gradients/policy/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
N*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape
?
?gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
T0*
data_formatNHWC
?
Dgradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_3@^gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
?
Lgradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_3E^gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape
?
Ngradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity?gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradE^gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
?
9gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulLgradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency(policy/main_graph_0/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b(
?
;gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMul policy/main_graph_0/hidden_0/MulLgradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Cgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp:^gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul<^gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul_1
?
Kgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity9gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMulD^gradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul
?
Mgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity;gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul_1D^gradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul_1
}
5gradients/policy/main_graph_0/hidden_0/Mul_grad/ShapeShape$policy/main_graph_0/hidden_0/BiasAdd*
T0*
out_type0

7gradients/policy/main_graph_0/hidden_0/Mul_grad/Shape_1Shape$policy/main_graph_0/hidden_0/Sigmoid*
T0*
out_type0
?
Egradients/policy/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/policy/main_graph_0/hidden_0/Mul_grad/Shape7gradients/policy/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
?
3gradients/policy/main_graph_0/hidden_0/Mul_grad/MulMulKgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency$policy/main_graph_0/hidden_0/Sigmoid*
T0
?
3gradients/policy/main_graph_0/hidden_0/Mul_grad/SumSum3gradients/policy/main_graph_0/hidden_0/Mul_grad/MulEgradients/policy/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
7gradients/policy/main_graph_0/hidden_0/Mul_grad/ReshapeReshape3gradients/policy/main_graph_0/hidden_0/Mul_grad/Sum5gradients/policy/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
?
5gradients/policy/main_graph_0/hidden_0/Mul_grad/Mul_1Mul$policy/main_graph_0/hidden_0/BiasAddKgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
?
5gradients/policy/main_graph_0/hidden_0/Mul_grad/Sum_1Sum5gradients/policy/main_graph_0/hidden_0/Mul_grad/Mul_1Ggradients/policy/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
9gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape5gradients/policy/main_graph_0/hidden_0/Mul_grad/Sum_17gradients/policy/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
?
@gradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp8^gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape:^gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape_1
?
Hgradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity7gradients/policy/main_graph_0/hidden_0/Mul_grad/ReshapeA^gradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape
?
Jgradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity9gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape_1A^gradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape_1
?
?gradients/policy/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad$policy/main_graph_0/hidden_0/SigmoidJgradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
?
gradients/AddN_4AddNHgradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency?gradients/policy/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
N*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape
?
?gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_4*
T0*
data_formatNHWC
?
Dgradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_4@^gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
?
Lgradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_4E^gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape
?
Ngradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity?gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradE^gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
?
9gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulLgradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency(policy/main_graph_0/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
?
;gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationLgradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Cgradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp:^gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul<^gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul_1
?
Kgradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity9gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMulD^gradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul
?
Mgradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity;gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul_1D^gradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul_1
n
beta1_power/initial_valueConst*&
_class
loc:@policy/dense/kernel*
dtype0*
valueB
 *fff?

beta1_power
VariableV2*&
_class
loc:@policy/dense/kernel*
	container *
dtype0*
shape: *
shared_name 
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
Z
beta1_power/readIdentitybeta1_power*
T0*&
_class
loc:@policy/dense/kernel
n
beta2_power/initial_valueConst*&
_class
loc:@policy/dense/kernel*
dtype0*
valueB
 *w??

beta2_power
VariableV2*&
_class
loc:@policy/dense/kernel*
	container *
dtype0*
shape: *
shared_name 
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
Z
beta2_power/readIdentitybeta2_power*
T0*&
_class
loc:@policy/dense/kernel
?
Tpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorConst*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
valueB"K      
?
Jpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zeros/ConstConst*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
valueB
 *    
?
Dpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zerosFillTpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorJpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zeros/Const*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*

index_type0
?
2policy/main_graph_0/hidden_0/kernel/sac_policy_opt
VariableV2*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
9policy/main_graph_0/hidden_0/kernel/sac_policy_opt/AssignAssign2policy/main_graph_0/hidden_0/kernel/sac_policy_optDpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zeros*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
use_locking(*
validate_shape(
?
7policy/main_graph_0/hidden_0/kernel/sac_policy_opt/readIdentity2policy/main_graph_0/hidden_0/kernel/sac_policy_opt*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
?
Vpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorConst*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
valueB"K      
?
Lpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zeros/ConstConst*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
valueB
 *    
?
Fpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zerosFillVpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorLpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zeros/Const*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*

index_type0
?
4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1
VariableV2*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
;policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/AssignAssign4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1Fpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zeros*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
use_locking(*
validate_shape(
?
9policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/readIdentity4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
?
Bpolicy/main_graph_0/hidden_0/bias/sac_policy_opt/Initializer/zerosConst*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
dtype0*
valueB?*    
?
0policy/main_graph_0/hidden_0/bias/sac_policy_opt
VariableV2*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
7policy/main_graph_0/hidden_0/bias/sac_policy_opt/AssignAssign0policy/main_graph_0/hidden_0/bias/sac_policy_optBpolicy/main_graph_0/hidden_0/bias/sac_policy_opt/Initializer/zeros*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
use_locking(*
validate_shape(
?
5policy/main_graph_0/hidden_0/bias/sac_policy_opt/readIdentity0policy/main_graph_0/hidden_0/bias/sac_policy_opt*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias
?
Dpolicy/main_graph_0/hidden_0/bias/sac_policy_opt_1/Initializer/zerosConst*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
dtype0*
valueB?*    
?
2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1
VariableV2*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
9policy/main_graph_0/hidden_0/bias/sac_policy_opt_1/AssignAssign2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1Dpolicy/main_graph_0/hidden_0/bias/sac_policy_opt_1/Initializer/zeros*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
use_locking(*
validate_shape(
?
7policy/main_graph_0/hidden_0/bias/sac_policy_opt_1/readIdentity2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias
?
Tpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorConst*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
valueB"      
?
Jpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zeros/ConstConst*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
valueB
 *    
?
Dpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zerosFillTpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorJpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zeros/Const*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*

index_type0
?
2policy/main_graph_0/hidden_1/kernel/sac_policy_opt
VariableV2*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
9policy/main_graph_0/hidden_1/kernel/sac_policy_opt/AssignAssign2policy/main_graph_0/hidden_1/kernel/sac_policy_optDpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zeros*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
use_locking(*
validate_shape(
?
7policy/main_graph_0/hidden_1/kernel/sac_policy_opt/readIdentity2policy/main_graph_0/hidden_1/kernel/sac_policy_opt*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
?
Vpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorConst*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
valueB"      
?
Lpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zeros/ConstConst*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
valueB
 *    
?
Fpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zerosFillVpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorLpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zeros/Const*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*

index_type0
?
4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1
VariableV2*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
;policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/AssignAssign4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1Fpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zeros*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
use_locking(*
validate_shape(
?
9policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/readIdentity4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
?
Bpolicy/main_graph_0/hidden_1/bias/sac_policy_opt/Initializer/zerosConst*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
dtype0*
valueB?*    
?
0policy/main_graph_0/hidden_1/bias/sac_policy_opt
VariableV2*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
7policy/main_graph_0/hidden_1/bias/sac_policy_opt/AssignAssign0policy/main_graph_0/hidden_1/bias/sac_policy_optBpolicy/main_graph_0/hidden_1/bias/sac_policy_opt/Initializer/zeros*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
use_locking(*
validate_shape(
?
5policy/main_graph_0/hidden_1/bias/sac_policy_opt/readIdentity0policy/main_graph_0/hidden_1/bias/sac_policy_opt*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias
?
Dpolicy/main_graph_0/hidden_1/bias/sac_policy_opt_1/Initializer/zerosConst*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
dtype0*
valueB?*    
?
2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1
VariableV2*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
9policy/main_graph_0/hidden_1/bias/sac_policy_opt_1/AssignAssign2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1Dpolicy/main_graph_0/hidden_1/bias/sac_policy_opt_1/Initializer/zeros*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
use_locking(*
validate_shape(
?
7policy/main_graph_0/hidden_1/bias/sac_policy_opt_1/readIdentity2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias
?
Dpolicy/dense/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@policy/dense/kernel*
dtype0*
valueB"      
?
:policy/dense/kernel/sac_policy_opt/Initializer/zeros/ConstConst*&
_class
loc:@policy/dense/kernel*
dtype0*
valueB
 *    
?
4policy/dense/kernel/sac_policy_opt/Initializer/zerosFillDpolicy/dense/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensor:policy/dense/kernel/sac_policy_opt/Initializer/zeros/Const*
T0*&
_class
loc:@policy/dense/kernel*

index_type0
?
"policy/dense/kernel/sac_policy_opt
VariableV2*&
_class
loc:@policy/dense/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
)policy/dense/kernel/sac_policy_opt/AssignAssign"policy/dense/kernel/sac_policy_opt4policy/dense/kernel/sac_policy_opt/Initializer/zeros*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
?
'policy/dense/kernel/sac_policy_opt/readIdentity"policy/dense/kernel/sac_policy_opt*
T0*&
_class
loc:@policy/dense/kernel
?
Fpolicy/dense/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@policy/dense/kernel*
dtype0*
valueB"      
?
<policy/dense/kernel/sac_policy_opt_1/Initializer/zeros/ConstConst*&
_class
loc:@policy/dense/kernel*
dtype0*
valueB
 *    
?
6policy/dense/kernel/sac_policy_opt_1/Initializer/zerosFillFpolicy/dense/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensor<policy/dense/kernel/sac_policy_opt_1/Initializer/zeros/Const*
T0*&
_class
loc:@policy/dense/kernel*

index_type0
?
$policy/dense/kernel/sac_policy_opt_1
VariableV2*&
_class
loc:@policy/dense/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
+policy/dense/kernel/sac_policy_opt_1/AssignAssign$policy/dense/kernel/sac_policy_opt_16policy/dense/kernel/sac_policy_opt_1/Initializer/zeros*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
?
)policy/dense/kernel/sac_policy_opt_1/readIdentity$policy/dense/kernel/sac_policy_opt_1*
T0*&
_class
loc:@policy/dense/kernel
A
sac_policy_opt/beta1Const*
dtype0*
valueB
 *fff?
A
sac_policy_opt/beta2Const*
dtype0*
valueB
 *w??
C
sac_policy_opt/epsilonConst*
dtype0*
valueB
 *w?+2
?
Csac_policy_opt/update_policy/main_graph_0/hidden_0/kernel/ApplyAdam	ApplyAdam#policy/main_graph_0/hidden_0/kernel2policy/main_graph_0/hidden_0/kernel/sac_policy_opt4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilonMgradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
use_locking( *
use_nesterov( 
?
Asac_policy_opt/update_policy/main_graph_0/hidden_0/bias/ApplyAdam	ApplyAdam!policy/main_graph_0/hidden_0/bias0policy/main_graph_0/hidden_0/bias/sac_policy_opt2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilonNgradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
use_locking( *
use_nesterov( 
?
Csac_policy_opt/update_policy/main_graph_0/hidden_1/kernel/ApplyAdam	ApplyAdam#policy/main_graph_0/hidden_1/kernel2policy/main_graph_0/hidden_1/kernel/sac_policy_opt4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilonMgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
use_locking( *
use_nesterov( 
?
Asac_policy_opt/update_policy/main_graph_0/hidden_1/bias/ApplyAdam	ApplyAdam!policy/main_graph_0/hidden_1/bias0policy/main_graph_0/hidden_1/bias/sac_policy_opt2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilonNgradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
use_locking( *
use_nesterov( 
?
3sac_policy_opt/update_policy/dense/kernel/ApplyAdam	ApplyAdampolicy/dense/kernel"policy/dense/kernel/sac_policy_opt$policy/dense/kernel/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilon?gradients/policy_1/dense/MatMul_grad/tuple/control_dependency_1*
T0*&
_class
loc:@policy/dense/kernel*
use_locking( *
use_nesterov( 
?
sac_policy_opt/mulMulbeta1_power/readsac_policy_opt/beta14^sac_policy_opt/update_policy/dense/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_0/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_0/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_1/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_1/kernel/ApplyAdam*
T0*&
_class
loc:@policy/dense/kernel
?
sac_policy_opt/AssignAssignbeta1_powersac_policy_opt/mul*
T0*&
_class
loc:@policy/dense/kernel*
use_locking( *
validate_shape(
?
sac_policy_opt/mul_1Mulbeta2_power/readsac_policy_opt/beta24^sac_policy_opt/update_policy/dense/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_0/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_0/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_1/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_1/kernel/ApplyAdam*
T0*&
_class
loc:@policy/dense/kernel
?
sac_policy_opt/Assign_1Assignbeta2_powersac_policy_opt/mul_1*
T0*&
_class
loc:@policy/dense/kernel*
use_locking( *
validate_shape(
?
sac_policy_optNoOp^sac_policy_opt/Assign^sac_policy_opt/Assign_14^sac_policy_opt/update_policy/dense/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_0/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_0/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_1/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_1/kernel/ApplyAdam
K
gradients_1/ShapeConst^sac_policy_opt*
dtype0*
valueB 
Y
gradients_1/grad_ys_0/ConstConst^sac_policy_opt*
dtype0*
valueB
 *  ??
h
gradients_1/grad_ys_0Fillgradients_1/Shapegradients_1/grad_ys_0/Const*
T0*

index_type0
X
'gradients_1/add_4_grad/tuple/group_depsNoOp^gradients_1/grad_ys_0^sac_policy_opt
?
/gradients_1/add_4_grad/tuple/control_dependencyIdentitygradients_1/grad_ys_0(^gradients_1/add_4_grad/tuple/group_deps*
T0*(
_class
loc:@gradients_1/grad_ys_0
?
1gradients_1/add_4_grad/tuple/control_dependency_1Identitygradients_1/grad_ys_0(^gradients_1/add_4_grad/tuple/group_deps*
T0*(
_class
loc:@gradients_1/grad_ys_0
r
'gradients_1/add_3_grad/tuple/group_depsNoOp0^gradients_1/add_4_grad/tuple/control_dependency^sac_policy_opt
?
/gradients_1/add_3_grad/tuple/control_dependencyIdentity/gradients_1/add_4_grad/tuple/control_dependency(^gradients_1/add_3_grad/tuple/group_deps*
T0*(
_class
loc:@gradients_1/grad_ys_0
?
1gradients_1/add_3_grad/tuple/control_dependency_1Identity/gradients_1/add_4_grad/tuple/control_dependency(^gradients_1/add_3_grad/tuple/group_deps*
T0*(
_class
loc:@gradients_1/grad_ys_0
e
&gradients_1/Mean_13_grad/Reshape/shapeConst^sac_policy_opt*
dtype0*
valueB:
?
 gradients_1/Mean_13_grad/ReshapeReshape1gradients_1/add_4_grad/tuple/control_dependency_1&gradients_1/Mean_13_grad/Reshape/shape*
T0*
Tshape0
]
gradients_1/Mean_13_grad/ConstConst^sac_policy_opt*
dtype0*
valueB:
?
gradients_1/Mean_13_grad/TileTile gradients_1/Mean_13_grad/Reshapegradients_1/Mean_13_grad/Const*
T0*

Tmultiples0
^
 gradients_1/Mean_13_grad/Const_1Const^sac_policy_opt*
dtype0*
valueB
 *  ??
u
 gradients_1/Mean_13_grad/truedivRealDivgradients_1/Mean_13_grad/Tile gradients_1/Mean_13_grad/Const_1*
T0
d
%gradients_1/Mean_6_grad/Reshape/shapeConst^sac_policy_opt*
dtype0*
valueB:
?
gradients_1/Mean_6_grad/ReshapeReshape/gradients_1/add_3_grad/tuple/control_dependency%gradients_1/Mean_6_grad/Reshape/shape*
T0*
Tshape0
\
gradients_1/Mean_6_grad/ConstConst^sac_policy_opt*
dtype0*
valueB:

gradients_1/Mean_6_grad/TileTilegradients_1/Mean_6_grad/Reshapegradients_1/Mean_6_grad/Const*
T0*

Tmultiples0
]
gradients_1/Mean_6_grad/Const_1Const^sac_policy_opt*
dtype0*
valueB
 *  ??
r
gradients_1/Mean_6_grad/truedivRealDivgradients_1/Mean_6_grad/Tilegradients_1/Mean_6_grad/Const_1*
T0
d
%gradients_1/Mean_7_grad/Reshape/shapeConst^sac_policy_opt*
dtype0*
valueB:
?
gradients_1/Mean_7_grad/ReshapeReshape1gradients_1/add_3_grad/tuple/control_dependency_1%gradients_1/Mean_7_grad/Reshape/shape*
T0*
Tshape0
\
gradients_1/Mean_7_grad/ConstConst^sac_policy_opt*
dtype0*
valueB:

gradients_1/Mean_7_grad/TileTilegradients_1/Mean_7_grad/Reshapegradients_1/Mean_7_grad/Const*
T0*

Tmultiples0
]
gradients_1/Mean_7_grad/Const_1Const^sac_policy_opt*
dtype0*
valueB
 *  ??
r
gradients_1/Mean_7_grad/truedivRealDivgradients_1/Mean_7_grad/Tilegradients_1/Mean_7_grad/Const_1*
T0
r
&gradients_1/Mean_13/input_grad/unstackUnpack gradients_1/Mean_13_grad/truediv*
T0*

axis *	
num
p
%gradients_1/Mean_6/input_grad/unstackUnpackgradients_1/Mean_6_grad/truediv*
T0*

axis *	
num
p
%gradients_1/Mean_7/input_grad/unstackUnpackgradients_1/Mean_7_grad/truediv*
T0*

axis *	
num
\
gradients_1/mul_19_grad/MulMul&gradients_1/Mean_13/input_grad/unstackMean_12*
T0
_
gradients_1/mul_19_grad/Mul_1Mul&gradients_1/Mean_13/input_grad/unstackmul_19/x*
T0

(gradients_1/mul_19_grad/tuple/group_depsNoOp^gradients_1/mul_19_grad/Mul^gradients_1/mul_19_grad/Mul_1^sac_policy_opt
?
0gradients_1/mul_19_grad/tuple/control_dependencyIdentitygradients_1/mul_19_grad/Mul)^gradients_1/mul_19_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients_1/mul_19_grad/Mul
?
2gradients_1/mul_19_grad/tuple/control_dependency_1Identitygradients_1/mul_19_grad/Mul_1)^gradients_1/mul_19_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients_1/mul_19_grad/Mul_1
Y
gradients_1/mul_9_grad/MulMul%gradients_1/Mean_6/input_grad/unstackMean_4*
T0
\
gradients_1/mul_9_grad/Mul_1Mul%gradients_1/Mean_6/input_grad/unstackmul_9/x*
T0
|
'gradients_1/mul_9_grad/tuple/group_depsNoOp^gradients_1/mul_9_grad/Mul^gradients_1/mul_9_grad/Mul_1^sac_policy_opt
?
/gradients_1/mul_9_grad/tuple/control_dependencyIdentitygradients_1/mul_9_grad/Mul(^gradients_1/mul_9_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/mul_9_grad/Mul
?
1gradients_1/mul_9_grad/tuple/control_dependency_1Identitygradients_1/mul_9_grad/Mul_1(^gradients_1/mul_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/mul_9_grad/Mul_1
Z
gradients_1/mul_11_grad/MulMul%gradients_1/Mean_7/input_grad/unstackMean_5*
T0
^
gradients_1/mul_11_grad/Mul_1Mul%gradients_1/Mean_7/input_grad/unstackmul_11/x*
T0

(gradients_1/mul_11_grad/tuple/group_depsNoOp^gradients_1/mul_11_grad/Mul^gradients_1/mul_11_grad/Mul_1^sac_policy_opt
?
0gradients_1/mul_11_grad/tuple/control_dependencyIdentitygradients_1/mul_11_grad/Mul)^gradients_1/mul_11_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients_1/mul_11_grad/Mul
?
2gradients_1/mul_11_grad/tuple/control_dependency_1Identitygradients_1/mul_11_grad/Mul_1)^gradients_1/mul_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients_1/mul_11_grad/Mul_1
l
&gradients_1/Mean_12_grad/Reshape/shapeConst^sac_policy_opt*
dtype0*
valueB"      
?
 gradients_1/Mean_12_grad/ReshapeReshape2gradients_1/mul_19_grad/tuple/control_dependency_1&gradients_1/Mean_12_grad/Reshape/shape*
T0*
Tshape0
Y
gradients_1/Mean_12_grad/ShapeShapemul_18^sac_policy_opt*
T0*
out_type0
?
gradients_1/Mean_12_grad/TileTile gradients_1/Mean_12_grad/Reshapegradients_1/Mean_12_grad/Shape*
T0*

Tmultiples0
[
 gradients_1/Mean_12_grad/Shape_1Shapemul_18^sac_policy_opt*
T0*
out_type0
Z
 gradients_1/Mean_12_grad/Shape_2Const^sac_policy_opt*
dtype0*
valueB 
]
gradients_1/Mean_12_grad/ConstConst^sac_policy_opt*
dtype0*
valueB: 
?
gradients_1/Mean_12_grad/ProdProd gradients_1/Mean_12_grad/Shape_1gradients_1/Mean_12_grad/Const*
T0*

Tidx0*
	keep_dims( 
_
 gradients_1/Mean_12_grad/Const_1Const^sac_policy_opt*
dtype0*
valueB: 
?
gradients_1/Mean_12_grad/Prod_1Prod gradients_1/Mean_12_grad/Shape_2 gradients_1/Mean_12_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
]
"gradients_1/Mean_12_grad/Maximum/yConst^sac_policy_opt*
dtype0*
value	B :
y
 gradients_1/Mean_12_grad/MaximumMaximumgradients_1/Mean_12_grad/Prod_1"gradients_1/Mean_12_grad/Maximum/y*
T0
w
!gradients_1/Mean_12_grad/floordivFloorDivgradients_1/Mean_12_grad/Prod gradients_1/Mean_12_grad/Maximum*
T0
p
gradients_1/Mean_12_grad/CastCast!gradients_1/Mean_12_grad/floordiv*

DstT0*

SrcT0*
Truncate( 
r
 gradients_1/Mean_12_grad/truedivRealDivgradients_1/Mean_12_grad/Tilegradients_1/Mean_12_grad/Cast*
T0
k
%gradients_1/Mean_4_grad/Reshape/shapeConst^sac_policy_opt*
dtype0*
valueB"      
?
gradients_1/Mean_4_grad/ReshapeReshape1gradients_1/mul_9_grad/tuple/control_dependency_1%gradients_1/Mean_4_grad/Reshape/shape*
T0*
Tshape0
W
gradients_1/Mean_4_grad/ShapeShapemul_8^sac_policy_opt*
T0*
out_type0

gradients_1/Mean_4_grad/TileTilegradients_1/Mean_4_grad/Reshapegradients_1/Mean_4_grad/Shape*
T0*

Tmultiples0
Y
gradients_1/Mean_4_grad/Shape_1Shapemul_8^sac_policy_opt*
T0*
out_type0
Y
gradients_1/Mean_4_grad/Shape_2Const^sac_policy_opt*
dtype0*
valueB 
\
gradients_1/Mean_4_grad/ConstConst^sac_policy_opt*
dtype0*
valueB: 
?
gradients_1/Mean_4_grad/ProdProdgradients_1/Mean_4_grad/Shape_1gradients_1/Mean_4_grad/Const*
T0*

Tidx0*
	keep_dims( 
^
gradients_1/Mean_4_grad/Const_1Const^sac_policy_opt*
dtype0*
valueB: 
?
gradients_1/Mean_4_grad/Prod_1Prodgradients_1/Mean_4_grad/Shape_2gradients_1/Mean_4_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
\
!gradients_1/Mean_4_grad/Maximum/yConst^sac_policy_opt*
dtype0*
value	B :
v
gradients_1/Mean_4_grad/MaximumMaximumgradients_1/Mean_4_grad/Prod_1!gradients_1/Mean_4_grad/Maximum/y*
T0
t
 gradients_1/Mean_4_grad/floordivFloorDivgradients_1/Mean_4_grad/Prodgradients_1/Mean_4_grad/Maximum*
T0
n
gradients_1/Mean_4_grad/CastCast gradients_1/Mean_4_grad/floordiv*

DstT0*

SrcT0*
Truncate( 
o
gradients_1/Mean_4_grad/truedivRealDivgradients_1/Mean_4_grad/Tilegradients_1/Mean_4_grad/Cast*
T0
k
%gradients_1/Mean_5_grad/Reshape/shapeConst^sac_policy_opt*
dtype0*
valueB"      
?
gradients_1/Mean_5_grad/ReshapeReshape2gradients_1/mul_11_grad/tuple/control_dependency_1%gradients_1/Mean_5_grad/Reshape/shape*
T0*
Tshape0
X
gradients_1/Mean_5_grad/ShapeShapemul_10^sac_policy_opt*
T0*
out_type0

gradients_1/Mean_5_grad/TileTilegradients_1/Mean_5_grad/Reshapegradients_1/Mean_5_grad/Shape*
T0*

Tmultiples0
Z
gradients_1/Mean_5_grad/Shape_1Shapemul_10^sac_policy_opt*
T0*
out_type0
Y
gradients_1/Mean_5_grad/Shape_2Const^sac_policy_opt*
dtype0*
valueB 
\
gradients_1/Mean_5_grad/ConstConst^sac_policy_opt*
dtype0*
valueB: 
?
gradients_1/Mean_5_grad/ProdProdgradients_1/Mean_5_grad/Shape_1gradients_1/Mean_5_grad/Const*
T0*

Tidx0*
	keep_dims( 
^
gradients_1/Mean_5_grad/Const_1Const^sac_policy_opt*
dtype0*
valueB: 
?
gradients_1/Mean_5_grad/Prod_1Prodgradients_1/Mean_5_grad/Shape_2gradients_1/Mean_5_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
\
!gradients_1/Mean_5_grad/Maximum/yConst^sac_policy_opt*
dtype0*
value	B :
v
gradients_1/Mean_5_grad/MaximumMaximumgradients_1/Mean_5_grad/Prod_1!gradients_1/Mean_5_grad/Maximum/y*
T0
t
 gradients_1/Mean_5_grad/floordivFloorDivgradients_1/Mean_5_grad/Prodgradients_1/Mean_5_grad/Maximum*
T0
n
gradients_1/Mean_5_grad/CastCast gradients_1/Mean_5_grad/floordiv*

DstT0*

SrcT0*
Truncate( 
o
gradients_1/Mean_5_grad/truedivRealDivgradients_1/Mean_5_grad/Tilegradients_1/Mean_5_grad/Cast*
T0
[
gradients_1/mul_18_grad/ShapeShape	ToFloat_4^sac_policy_opt*
T0*
out_type0
g
gradients_1/mul_18_grad/Shape_1ShapeSquaredDifference_2^sac_policy_opt*
T0*
out_type0
?
-gradients_1/mul_18_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_18_grad/Shapegradients_1/mul_18_grad/Shape_1*
T0
b
gradients_1/mul_18_grad/MulMul gradients_1/Mean_12_grad/truedivSquaredDifference_2*
T0
?
gradients_1/mul_18_grad/SumSumgradients_1/mul_18_grad/Mul-gradients_1/mul_18_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
}
gradients_1/mul_18_grad/ReshapeReshapegradients_1/mul_18_grad/Sumgradients_1/mul_18_grad/Shape*
T0*
Tshape0
Z
gradients_1/mul_18_grad/Mul_1Mul	ToFloat_4 gradients_1/Mean_12_grad/truediv*
T0
?
gradients_1/mul_18_grad/Sum_1Sumgradients_1/mul_18_grad/Mul_1/gradients_1/mul_18_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
!gradients_1/mul_18_grad/Reshape_1Reshapegradients_1/mul_18_grad/Sum_1gradients_1/mul_18_grad/Shape_1*
T0*
Tshape0
?
(gradients_1/mul_18_grad/tuple/group_depsNoOp ^gradients_1/mul_18_grad/Reshape"^gradients_1/mul_18_grad/Reshape_1^sac_policy_opt
?
0gradients_1/mul_18_grad/tuple/control_dependencyIdentitygradients_1/mul_18_grad/Reshape)^gradients_1/mul_18_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/mul_18_grad/Reshape
?
2gradients_1/mul_18_grad/tuple/control_dependency_1Identity!gradients_1/mul_18_grad/Reshape_1)^gradients_1/mul_18_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/mul_18_grad/Reshape_1
X
gradients_1/mul_8_grad/ShapeShapeToFloat^sac_policy_opt*
T0*
out_type0
d
gradients_1/mul_8_grad/Shape_1ShapeSquaredDifference^sac_policy_opt*
T0*
out_type0
?
,gradients_1/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_8_grad/Shapegradients_1/mul_8_grad/Shape_1*
T0
^
gradients_1/mul_8_grad/MulMulgradients_1/Mean_4_grad/truedivSquaredDifference*
T0
?
gradients_1/mul_8_grad/SumSumgradients_1/mul_8_grad/Mul,gradients_1/mul_8_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients_1/mul_8_grad/ReshapeReshapegradients_1/mul_8_grad/Sumgradients_1/mul_8_grad/Shape*
T0*
Tshape0
V
gradients_1/mul_8_grad/Mul_1MulToFloatgradients_1/Mean_4_grad/truediv*
T0
?
gradients_1/mul_8_grad/Sum_1Sumgradients_1/mul_8_grad/Mul_1.gradients_1/mul_8_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
 gradients_1/mul_8_grad/Reshape_1Reshapegradients_1/mul_8_grad/Sum_1gradients_1/mul_8_grad/Shape_1*
T0*
Tshape0
?
'gradients_1/mul_8_grad/tuple/group_depsNoOp^gradients_1/mul_8_grad/Reshape!^gradients_1/mul_8_grad/Reshape_1^sac_policy_opt
?
/gradients_1/mul_8_grad/tuple/control_dependencyIdentitygradients_1/mul_8_grad/Reshape(^gradients_1/mul_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_8_grad/Reshape
?
1gradients_1/mul_8_grad/tuple/control_dependency_1Identity gradients_1/mul_8_grad/Reshape_1(^gradients_1/mul_8_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_8_grad/Reshape_1
[
gradients_1/mul_10_grad/ShapeShape	ToFloat_1^sac_policy_opt*
T0*
out_type0
g
gradients_1/mul_10_grad/Shape_1ShapeSquaredDifference_1^sac_policy_opt*
T0*
out_type0
?
-gradients_1/mul_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_10_grad/Shapegradients_1/mul_10_grad/Shape_1*
T0
a
gradients_1/mul_10_grad/MulMulgradients_1/Mean_5_grad/truedivSquaredDifference_1*
T0
?
gradients_1/mul_10_grad/SumSumgradients_1/mul_10_grad/Mul-gradients_1/mul_10_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
}
gradients_1/mul_10_grad/ReshapeReshapegradients_1/mul_10_grad/Sumgradients_1/mul_10_grad/Shape*
T0*
Tshape0
Y
gradients_1/mul_10_grad/Mul_1Mul	ToFloat_1gradients_1/Mean_5_grad/truediv*
T0
?
gradients_1/mul_10_grad/Sum_1Sumgradients_1/mul_10_grad/Mul_1/gradients_1/mul_10_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
!gradients_1/mul_10_grad/Reshape_1Reshapegradients_1/mul_10_grad/Sum_1gradients_1/mul_10_grad/Shape_1*
T0*
Tshape0
?
(gradients_1/mul_10_grad/tuple/group_depsNoOp ^gradients_1/mul_10_grad/Reshape"^gradients_1/mul_10_grad/Reshape_1^sac_policy_opt
?
0gradients_1/mul_10_grad/tuple/control_dependencyIdentitygradients_1/mul_10_grad/Reshape)^gradients_1/mul_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/mul_10_grad/Reshape
?
2gradients_1/mul_10_grad/tuple/control_dependency_1Identity!gradients_1/mul_10_grad/Reshape_1)^gradients_1/mul_10_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/mul_10_grad/Reshape_1
?
+gradients_1/SquaredDifference_2_grad/scalarConst3^gradients_1/mul_18_grad/tuple/control_dependency_1^sac_policy_opt*
dtype0*
valueB
 *   @
?
(gradients_1/SquaredDifference_2_grad/MulMul+gradients_1/SquaredDifference_2_grad/scalar2gradients_1/mul_18_grad/tuple/control_dependency_1*
T0
?
(gradients_1/SquaredDifference_2_grad/subSub$critic/value/extrinsic_value/BiasAddStopGradient_33^gradients_1/mul_18_grad/tuple/control_dependency_1^sac_policy_opt*
T0
?
*gradients_1/SquaredDifference_2_grad/mul_1Mul(gradients_1/SquaredDifference_2_grad/Mul(gradients_1/SquaredDifference_2_grad/sub*
T0
?
*gradients_1/SquaredDifference_2_grad/ShapeShape$critic/value/extrinsic_value/BiasAdd^sac_policy_opt*
T0*
out_type0
o
,gradients_1/SquaredDifference_2_grad/Shape_1ShapeStopGradient_3^sac_policy_opt*
T0*
out_type0
?
:gradients_1/SquaredDifference_2_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients_1/SquaredDifference_2_grad/Shape,gradients_1/SquaredDifference_2_grad/Shape_1*
T0
?
(gradients_1/SquaredDifference_2_grad/SumSum*gradients_1/SquaredDifference_2_grad/mul_1:gradients_1/SquaredDifference_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
,gradients_1/SquaredDifference_2_grad/ReshapeReshape(gradients_1/SquaredDifference_2_grad/Sum*gradients_1/SquaredDifference_2_grad/Shape*
T0*
Tshape0
?
*gradients_1/SquaredDifference_2_grad/Sum_1Sum*gradients_1/SquaredDifference_2_grad/mul_1<gradients_1/SquaredDifference_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
.gradients_1/SquaredDifference_2_grad/Reshape_1Reshape*gradients_1/SquaredDifference_2_grad/Sum_1,gradients_1/SquaredDifference_2_grad/Shape_1*
T0*
Tshape0
h
(gradients_1/SquaredDifference_2_grad/NegNeg.gradients_1/SquaredDifference_2_grad/Reshape_1*
T0
?
5gradients_1/SquaredDifference_2_grad/tuple/group_depsNoOp)^gradients_1/SquaredDifference_2_grad/Neg-^gradients_1/SquaredDifference_2_grad/Reshape^sac_policy_opt
?
=gradients_1/SquaredDifference_2_grad/tuple/control_dependencyIdentity,gradients_1/SquaredDifference_2_grad/Reshape6^gradients_1/SquaredDifference_2_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/SquaredDifference_2_grad/Reshape
?
?gradients_1/SquaredDifference_2_grad/tuple/control_dependency_1Identity(gradients_1/SquaredDifference_2_grad/Neg6^gradients_1/SquaredDifference_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/SquaredDifference_2_grad/Neg
?
)gradients_1/SquaredDifference_grad/scalarConst2^gradients_1/mul_8_grad/tuple/control_dependency_1^sac_policy_opt*
dtype0*
valueB
 *   @
?
&gradients_1/SquaredDifference_grad/MulMul)gradients_1/SquaredDifference_grad/scalar1gradients_1/mul_8_grad/tuple/control_dependency_1*
T0
?
&gradients_1/SquaredDifference_grad/subSubStopGradient_1Mean_22^gradients_1/mul_8_grad/tuple/control_dependency_1^sac_policy_opt*
T0
?
(gradients_1/SquaredDifference_grad/mul_1Mul&gradients_1/SquaredDifference_grad/Mul&gradients_1/SquaredDifference_grad/sub*
T0
k
(gradients_1/SquaredDifference_grad/ShapeShapeStopGradient_1^sac_policy_opt*
T0*
out_type0
e
*gradients_1/SquaredDifference_grad/Shape_1ShapeMean_2^sac_policy_opt*
T0*
out_type0
?
8gradients_1/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients_1/SquaredDifference_grad/Shape*gradients_1/SquaredDifference_grad/Shape_1*
T0
?
&gradients_1/SquaredDifference_grad/SumSum(gradients_1/SquaredDifference_grad/mul_18gradients_1/SquaredDifference_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
*gradients_1/SquaredDifference_grad/ReshapeReshape&gradients_1/SquaredDifference_grad/Sum(gradients_1/SquaredDifference_grad/Shape*
T0*
Tshape0
?
(gradients_1/SquaredDifference_grad/Sum_1Sum(gradients_1/SquaredDifference_grad/mul_1:gradients_1/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
,gradients_1/SquaredDifference_grad/Reshape_1Reshape(gradients_1/SquaredDifference_grad/Sum_1*gradients_1/SquaredDifference_grad/Shape_1*
T0*
Tshape0
d
&gradients_1/SquaredDifference_grad/NegNeg,gradients_1/SquaredDifference_grad/Reshape_1*
T0
?
3gradients_1/SquaredDifference_grad/tuple/group_depsNoOp'^gradients_1/SquaredDifference_grad/Neg+^gradients_1/SquaredDifference_grad/Reshape^sac_policy_opt
?
;gradients_1/SquaredDifference_grad/tuple/control_dependencyIdentity*gradients_1/SquaredDifference_grad/Reshape4^gradients_1/SquaredDifference_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/SquaredDifference_grad/Reshape
?
=gradients_1/SquaredDifference_grad/tuple/control_dependency_1Identity&gradients_1/SquaredDifference_grad/Neg4^gradients_1/SquaredDifference_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/SquaredDifference_grad/Neg
?
+gradients_1/SquaredDifference_1_grad/scalarConst3^gradients_1/mul_10_grad/tuple/control_dependency_1^sac_policy_opt*
dtype0*
valueB
 *   @
?
(gradients_1/SquaredDifference_1_grad/MulMul+gradients_1/SquaredDifference_1_grad/scalar2gradients_1/mul_10_grad/tuple/control_dependency_1*
T0
?
(gradients_1/SquaredDifference_1_grad/subSubStopGradient_1Mean_33^gradients_1/mul_10_grad/tuple/control_dependency_1^sac_policy_opt*
T0
?
*gradients_1/SquaredDifference_1_grad/mul_1Mul(gradients_1/SquaredDifference_1_grad/Mul(gradients_1/SquaredDifference_1_grad/sub*
T0
m
*gradients_1/SquaredDifference_1_grad/ShapeShapeStopGradient_1^sac_policy_opt*
T0*
out_type0
g
,gradients_1/SquaredDifference_1_grad/Shape_1ShapeMean_3^sac_policy_opt*
T0*
out_type0
?
:gradients_1/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients_1/SquaredDifference_1_grad/Shape,gradients_1/SquaredDifference_1_grad/Shape_1*
T0
?
(gradients_1/SquaredDifference_1_grad/SumSum*gradients_1/SquaredDifference_1_grad/mul_1:gradients_1/SquaredDifference_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
,gradients_1/SquaredDifference_1_grad/ReshapeReshape(gradients_1/SquaredDifference_1_grad/Sum*gradients_1/SquaredDifference_1_grad/Shape*
T0*
Tshape0
?
*gradients_1/SquaredDifference_1_grad/Sum_1Sum*gradients_1/SquaredDifference_1_grad/mul_1<gradients_1/SquaredDifference_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
.gradients_1/SquaredDifference_1_grad/Reshape_1Reshape*gradients_1/SquaredDifference_1_grad/Sum_1,gradients_1/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
h
(gradients_1/SquaredDifference_1_grad/NegNeg.gradients_1/SquaredDifference_1_grad/Reshape_1*
T0
?
5gradients_1/SquaredDifference_1_grad/tuple/group_depsNoOp)^gradients_1/SquaredDifference_1_grad/Neg-^gradients_1/SquaredDifference_1_grad/Reshape^sac_policy_opt
?
=gradients_1/SquaredDifference_1_grad/tuple/control_dependencyIdentity,gradients_1/SquaredDifference_1_grad/Reshape6^gradients_1/SquaredDifference_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/SquaredDifference_1_grad/Reshape
?
?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1Identity(gradients_1/SquaredDifference_1_grad/Neg6^gradients_1/SquaredDifference_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/SquaredDifference_1_grad/Neg
?
Agradients_1/critic/value/extrinsic_value/BiasAdd_grad/BiasAddGradBiasAddGrad=gradients_1/SquaredDifference_2_grad/tuple/control_dependency*
T0*
data_formatNHWC
?
Fgradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/group_depsNoOp>^gradients_1/SquaredDifference_2_grad/tuple/control_dependencyB^gradients_1/critic/value/extrinsic_value/BiasAdd_grad/BiasAddGrad^sac_policy_opt
?
Ngradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/control_dependencyIdentity=gradients_1/SquaredDifference_2_grad/tuple/control_dependencyG^gradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/SquaredDifference_2_grad/Reshape
?
Pgradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1IdentityAgradients_1/critic/value/extrinsic_value/BiasAdd_grad/BiasAddGradG^gradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients_1/critic/value/extrinsic_value/BiasAdd_grad/BiasAddGrad
^
gradients_1/Mean_2_grad/ShapeShapeMean_2/input^sac_policy_opt*
T0*
out_type0
?
gradients_1/Mean_2_grad/SizeConst^sac_policy_opt*0
_class&
$"loc:@gradients_1/Mean_2_grad/Shape*
dtype0*
value	B :
?
gradients_1/Mean_2_grad/addAddV2Mean_2/reduction_indicesgradients_1/Mean_2_grad/Size*
T0*0
_class&
$"loc:@gradients_1/Mean_2_grad/Shape
?
gradients_1/Mean_2_grad/modFloorModgradients_1/Mean_2_grad/addgradients_1/Mean_2_grad/Size*
T0*0
_class&
$"loc:@gradients_1/Mean_2_grad/Shape
?
gradients_1/Mean_2_grad/Shape_1Const^sac_policy_opt*0
_class&
$"loc:@gradients_1/Mean_2_grad/Shape*
dtype0*
valueB 
?
#gradients_1/Mean_2_grad/range/startConst^sac_policy_opt*0
_class&
$"loc:@gradients_1/Mean_2_grad/Shape*
dtype0*
value	B : 
?
#gradients_1/Mean_2_grad/range/deltaConst^sac_policy_opt*0
_class&
$"loc:@gradients_1/Mean_2_grad/Shape*
dtype0*
value	B :
?
gradients_1/Mean_2_grad/rangeRange#gradients_1/Mean_2_grad/range/startgradients_1/Mean_2_grad/Size#gradients_1/Mean_2_grad/range/delta*

Tidx0*0
_class&
$"loc:@gradients_1/Mean_2_grad/Shape
?
"gradients_1/Mean_2_grad/ones/ConstConst^sac_policy_opt*0
_class&
$"loc:@gradients_1/Mean_2_grad/Shape*
dtype0*
value	B :
?
gradients_1/Mean_2_grad/onesFillgradients_1/Mean_2_grad/Shape_1"gradients_1/Mean_2_grad/ones/Const*
T0*0
_class&
$"loc:@gradients_1/Mean_2_grad/Shape*

index_type0
?
%gradients_1/Mean_2_grad/DynamicStitchDynamicStitchgradients_1/Mean_2_grad/rangegradients_1/Mean_2_grad/modgradients_1/Mean_2_grad/Shapegradients_1/Mean_2_grad/ones*
N*
T0*0
_class&
$"loc:@gradients_1/Mean_2_grad/Shape
?
gradients_1/Mean_2_grad/ReshapeReshape=gradients_1/SquaredDifference_grad/tuple/control_dependency_1%gradients_1/Mean_2_grad/DynamicStitch*
T0*
Tshape0
?
#gradients_1/Mean_2_grad/BroadcastToBroadcastTogradients_1/Mean_2_grad/Reshapegradients_1/Mean_2_grad/Shape*
T0*

Tidx0
`
gradients_1/Mean_2_grad/Shape_2ShapeMean_2/input^sac_policy_opt*
T0*
out_type0
Z
gradients_1/Mean_2_grad/Shape_3ShapeMean_2^sac_policy_opt*
T0*
out_type0
\
gradients_1/Mean_2_grad/ConstConst^sac_policy_opt*
dtype0*
valueB: 
?
gradients_1/Mean_2_grad/ProdProdgradients_1/Mean_2_grad/Shape_2gradients_1/Mean_2_grad/Const*
T0*

Tidx0*
	keep_dims( 
^
gradients_1/Mean_2_grad/Const_1Const^sac_policy_opt*
dtype0*
valueB: 
?
gradients_1/Mean_2_grad/Prod_1Prodgradients_1/Mean_2_grad/Shape_3gradients_1/Mean_2_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
\
!gradients_1/Mean_2_grad/Maximum/yConst^sac_policy_opt*
dtype0*
value	B :
v
gradients_1/Mean_2_grad/MaximumMaximumgradients_1/Mean_2_grad/Prod_1!gradients_1/Mean_2_grad/Maximum/y*
T0
t
 gradients_1/Mean_2_grad/floordivFloorDivgradients_1/Mean_2_grad/Prodgradients_1/Mean_2_grad/Maximum*
T0
n
gradients_1/Mean_2_grad/CastCast gradients_1/Mean_2_grad/floordiv*

DstT0*

SrcT0*
Truncate( 
v
gradients_1/Mean_2_grad/truedivRealDiv#gradients_1/Mean_2_grad/BroadcastTogradients_1/Mean_2_grad/Cast*
T0
^
gradients_1/Mean_3_grad/ShapeShapeMean_3/input^sac_policy_opt*
T0*
out_type0
?
gradients_1/Mean_3_grad/SizeConst^sac_policy_opt*0
_class&
$"loc:@gradients_1/Mean_3_grad/Shape*
dtype0*
value	B :
?
gradients_1/Mean_3_grad/addAddV2Mean_3/reduction_indicesgradients_1/Mean_3_grad/Size*
T0*0
_class&
$"loc:@gradients_1/Mean_3_grad/Shape
?
gradients_1/Mean_3_grad/modFloorModgradients_1/Mean_3_grad/addgradients_1/Mean_3_grad/Size*
T0*0
_class&
$"loc:@gradients_1/Mean_3_grad/Shape
?
gradients_1/Mean_3_grad/Shape_1Const^sac_policy_opt*0
_class&
$"loc:@gradients_1/Mean_3_grad/Shape*
dtype0*
valueB 
?
#gradients_1/Mean_3_grad/range/startConst^sac_policy_opt*0
_class&
$"loc:@gradients_1/Mean_3_grad/Shape*
dtype0*
value	B : 
?
#gradients_1/Mean_3_grad/range/deltaConst^sac_policy_opt*0
_class&
$"loc:@gradients_1/Mean_3_grad/Shape*
dtype0*
value	B :
?
gradients_1/Mean_3_grad/rangeRange#gradients_1/Mean_3_grad/range/startgradients_1/Mean_3_grad/Size#gradients_1/Mean_3_grad/range/delta*

Tidx0*0
_class&
$"loc:@gradients_1/Mean_3_grad/Shape
?
"gradients_1/Mean_3_grad/ones/ConstConst^sac_policy_opt*0
_class&
$"loc:@gradients_1/Mean_3_grad/Shape*
dtype0*
value	B :
?
gradients_1/Mean_3_grad/onesFillgradients_1/Mean_3_grad/Shape_1"gradients_1/Mean_3_grad/ones/Const*
T0*0
_class&
$"loc:@gradients_1/Mean_3_grad/Shape*

index_type0
?
%gradients_1/Mean_3_grad/DynamicStitchDynamicStitchgradients_1/Mean_3_grad/rangegradients_1/Mean_3_grad/modgradients_1/Mean_3_grad/Shapegradients_1/Mean_3_grad/ones*
N*
T0*0
_class&
$"loc:@gradients_1/Mean_3_grad/Shape
?
gradients_1/Mean_3_grad/ReshapeReshape?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1%gradients_1/Mean_3_grad/DynamicStitch*
T0*
Tshape0
?
#gradients_1/Mean_3_grad/BroadcastToBroadcastTogradients_1/Mean_3_grad/Reshapegradients_1/Mean_3_grad/Shape*
T0*

Tidx0
`
gradients_1/Mean_3_grad/Shape_2ShapeMean_3/input^sac_policy_opt*
T0*
out_type0
Z
gradients_1/Mean_3_grad/Shape_3ShapeMean_3^sac_policy_opt*
T0*
out_type0
\
gradients_1/Mean_3_grad/ConstConst^sac_policy_opt*
dtype0*
valueB: 
?
gradients_1/Mean_3_grad/ProdProdgradients_1/Mean_3_grad/Shape_2gradients_1/Mean_3_grad/Const*
T0*

Tidx0*
	keep_dims( 
^
gradients_1/Mean_3_grad/Const_1Const^sac_policy_opt*
dtype0*
valueB: 
?
gradients_1/Mean_3_grad/Prod_1Prodgradients_1/Mean_3_grad/Shape_3gradients_1/Mean_3_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
\
!gradients_1/Mean_3_grad/Maximum/yConst^sac_policy_opt*
dtype0*
value	B :
v
gradients_1/Mean_3_grad/MaximumMaximumgradients_1/Mean_3_grad/Prod_1!gradients_1/Mean_3_grad/Maximum/y*
T0
t
 gradients_1/Mean_3_grad/floordivFloorDivgradients_1/Mean_3_grad/Prodgradients_1/Mean_3_grad/Maximum*
T0
n
gradients_1/Mean_3_grad/CastCast gradients_1/Mean_3_grad/floordiv*

DstT0*

SrcT0*
Truncate( 
v
gradients_1/Mean_3_grad/truedivRealDiv#gradients_1/Mean_3_grad/BroadcastTogradients_1/Mean_3_grad/Cast*
T0
?
;gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMulMatMulNgradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/control_dependency(critic/value/extrinsic_value/kernel/read*
T0*
transpose_a( *
transpose_b(
?
=gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul_1MatMul!critic/value/encoder/hidden_1/MulNgradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Egradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/group_depsNoOp<^gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul>^gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul_1^sac_policy_opt
?
Mgradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/control_dependencyIdentity;gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMulF^gradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul
?
Ogradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/control_dependency_1Identity=gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul_1F^gradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul_1
p
%gradients_1/Mean_2/input_grad/unstackUnpackgradients_1/Mean_2_grad/truediv*
T0*

axis *	
num
p
%gradients_1/Mean_3/input_grad/unstackUnpackgradients_1/Mean_3_grad/truediv*
T0*

axis *	
num
?
8gradients_1/critic/value/encoder/hidden_1/Mul_grad/ShapeShape%critic/value/encoder/hidden_1/BiasAdd^sac_policy_opt*
T0*
out_type0
?
:gradients_1/critic/value/encoder/hidden_1/Mul_grad/Shape_1Shape%critic/value/encoder/hidden_1/Sigmoid^sac_policy_opt*
T0*
out_type0
?
Hgradients_1/critic/value/encoder/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Shape:gradients_1/critic/value/encoder/hidden_1/Mul_grad/Shape_1*
T0
?
6gradients_1/critic/value/encoder/hidden_1/Mul_grad/MulMulMgradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/control_dependency%critic/value/encoder/hidden_1/Sigmoid*
T0
?
6gradients_1/critic/value/encoder/hidden_1/Mul_grad/SumSum6gradients_1/critic/value/encoder/hidden_1/Mul_grad/MulHgradients_1/critic/value/encoder/hidden_1/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
:gradients_1/critic/value/encoder/hidden_1/Mul_grad/ReshapeReshape6gradients_1/critic/value/encoder/hidden_1/Mul_grad/Sum8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Shape*
T0*
Tshape0
?
8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Mul_1Mul%critic/value/encoder/hidden_1/BiasAddMgradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/control_dependency*
T0
?
8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Sum_1Sum8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Mul_1Jgradients_1/critic/value/encoder/hidden_1/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
<gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape_1Reshape8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Sum_1:gradients_1/critic/value/encoder/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
?
Cgradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/group_depsNoOp;^gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape=^gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape_1^sac_policy_opt
?
Kgradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/control_dependencyIdentity:gradients_1/critic/value/encoder/hidden_1/Mul_grad/ReshapeD^gradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape
?
Mgradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/control_dependency_1Identity<gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape_1D^gradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape_1
`
gradients_1/Sum_2_grad/ShapeShapestrided_slice_2^sac_policy_opt*
T0*
out_type0
?
"gradients_1/Sum_2_grad/BroadcastToBroadcastTo%gradients_1/Mean_2/input_grad/unstackgradients_1/Sum_2_grad/Shape*
T0*

Tidx0
`
gradients_1/Sum_3_grad/ShapeShapestrided_slice_3^sac_policy_opt*
T0*
out_type0
?
"gradients_1/Sum_3_grad/BroadcastToBroadcastTo%gradients_1/Mean_3/input_grad/unstackgradients_1/Sum_3_grad/Shape*
T0*

Tidx0
?
Bgradients_1/critic/value/encoder/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad%critic/value/encoder/hidden_1/SigmoidMgradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
`
&gradients_1/strided_slice_2_grad/ShapeShapemul_6^sac_policy_opt*
T0*
out_type0
}
7gradients_1/strided_slice_2_grad/StridedSliceGrad/beginConst^sac_policy_opt*
dtype0*
valueB"        
{
5gradients_1/strided_slice_2_grad/StridedSliceGrad/endConst^sac_policy_opt*
dtype0*
valueB"       

9gradients_1/strided_slice_2_grad/StridedSliceGrad/stridesConst^sac_policy_opt*
dtype0*
valueB"      
?
1gradients_1/strided_slice_2_grad/StridedSliceGradStridedSliceGrad&gradients_1/strided_slice_2_grad/Shape7gradients_1/strided_slice_2_grad/StridedSliceGrad/begin5gradients_1/strided_slice_2_grad/StridedSliceGrad/end9gradients_1/strided_slice_2_grad/StridedSliceGrad/strides"gradients_1/Sum_2_grad/BroadcastTo*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
`
&gradients_1/strided_slice_3_grad/ShapeShapemul_7^sac_policy_opt*
T0*
out_type0
}
7gradients_1/strided_slice_3_grad/StridedSliceGrad/beginConst^sac_policy_opt*
dtype0*
valueB"        
{
5gradients_1/strided_slice_3_grad/StridedSliceGrad/endConst^sac_policy_opt*
dtype0*
valueB"       

9gradients_1/strided_slice_3_grad/StridedSliceGrad/stridesConst^sac_policy_opt*
dtype0*
valueB"      
?
1gradients_1/strided_slice_3_grad/StridedSliceGradStridedSliceGrad&gradients_1/strided_slice_3_grad/Shape7gradients_1/strided_slice_3_grad/StridedSliceGrad/begin5gradients_1/strided_slice_3_grad/StridedSliceGrad/end9gradients_1/strided_slice_3_grad/StridedSliceGrad/strides"gradients_1/Sum_3_grad/BroadcastTo*
Index0*
T0*

begin_mask*
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
?
gradients_1/AddNAddNKgradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/control_dependencyBgradients_1/critic/value/encoder/hidden_1/Sigmoid_grad/SigmoidGrad*
N*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape
?
Bgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN*
T0*
data_formatNHWC
?
Ggradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddNC^gradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/BiasAddGrad^sac_policy_opt
?
Ogradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddNH^gradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape
?
Qgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1IdentityBgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/BiasAddGradH^gradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/BiasAddGrad
]
gradients_1/mul_6_grad/ShapeShapeStopGradient^sac_policy_opt*
T0*
out_type0
|
gradients_1/mul_6_grad/Shape_1Shape)critic/q/q1_encoding/extrinsic_q1/BiasAdd^sac_policy_opt*
T0*
out_type0
?
,gradients_1/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_6_grad/Shapegradients_1/mul_6_grad/Shape_1*
T0
?
gradients_1/mul_6_grad/MulMul1gradients_1/strided_slice_2_grad/StridedSliceGrad)critic/q/q1_encoding/extrinsic_q1/BiasAdd*
T0
?
gradients_1/mul_6_grad/SumSumgradients_1/mul_6_grad/Mul,gradients_1/mul_6_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients_1/mul_6_grad/ReshapeReshapegradients_1/mul_6_grad/Sumgradients_1/mul_6_grad/Shape*
T0*
Tshape0
m
gradients_1/mul_6_grad/Mul_1MulStopGradient1gradients_1/strided_slice_2_grad/StridedSliceGrad*
T0
?
gradients_1/mul_6_grad/Sum_1Sumgradients_1/mul_6_grad/Mul_1.gradients_1/mul_6_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
 gradients_1/mul_6_grad/Reshape_1Reshapegradients_1/mul_6_grad/Sum_1gradients_1/mul_6_grad/Shape_1*
T0*
Tshape0
?
'gradients_1/mul_6_grad/tuple/group_depsNoOp^gradients_1/mul_6_grad/Reshape!^gradients_1/mul_6_grad/Reshape_1^sac_policy_opt
?
/gradients_1/mul_6_grad/tuple/control_dependencyIdentitygradients_1/mul_6_grad/Reshape(^gradients_1/mul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_6_grad/Reshape
?
1gradients_1/mul_6_grad/tuple/control_dependency_1Identity gradients_1/mul_6_grad/Reshape_1(^gradients_1/mul_6_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_6_grad/Reshape_1
]
gradients_1/mul_7_grad/ShapeShapeStopGradient^sac_policy_opt*
T0*
out_type0
|
gradients_1/mul_7_grad/Shape_1Shape)critic/q/q2_encoding/extrinsic_q2/BiasAdd^sac_policy_opt*
T0*
out_type0
?
,gradients_1/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_7_grad/Shapegradients_1/mul_7_grad/Shape_1*
T0
?
gradients_1/mul_7_grad/MulMul1gradients_1/strided_slice_3_grad/StridedSliceGrad)critic/q/q2_encoding/extrinsic_q2/BiasAdd*
T0
?
gradients_1/mul_7_grad/SumSumgradients_1/mul_7_grad/Mul,gradients_1/mul_7_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients_1/mul_7_grad/ReshapeReshapegradients_1/mul_7_grad/Sumgradients_1/mul_7_grad/Shape*
T0*
Tshape0
m
gradients_1/mul_7_grad/Mul_1MulStopGradient1gradients_1/strided_slice_3_grad/StridedSliceGrad*
T0
?
gradients_1/mul_7_grad/Sum_1Sumgradients_1/mul_7_grad/Mul_1.gradients_1/mul_7_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
 gradients_1/mul_7_grad/Reshape_1Reshapegradients_1/mul_7_grad/Sum_1gradients_1/mul_7_grad/Shape_1*
T0*
Tshape0
?
'gradients_1/mul_7_grad/tuple/group_depsNoOp^gradients_1/mul_7_grad/Reshape!^gradients_1/mul_7_grad/Reshape_1^sac_policy_opt
?
/gradients_1/mul_7_grad/tuple/control_dependencyIdentitygradients_1/mul_7_grad/Reshape(^gradients_1/mul_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_7_grad/Reshape
?
1gradients_1/mul_7_grad/tuple/control_dependency_1Identity gradients_1/mul_7_grad/Reshape_1(^gradients_1/mul_7_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_7_grad/Reshape_1
?
<gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMulMatMulOgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/control_dependency)critic/value/encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b(
?
>gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul_1MatMul!critic/value/encoder/hidden_0/MulOgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Fgradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/group_depsNoOp=^gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul?^gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul_1^sac_policy_opt
?
Ngradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/control_dependencyIdentity<gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMulG^gradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul
?
Pgradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/control_dependency_1Identity>gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul_1G^gradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul_1
?
Fgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients_1/mul_6_grad/tuple/control_dependency_1*
T0*
data_formatNHWC
?
Kgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/group_depsNoOpG^gradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/BiasAddGrad2^gradients_1/mul_6_grad/tuple/control_dependency_1^sac_policy_opt
?
Sgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/control_dependencyIdentity1gradients_1/mul_6_grad/tuple/control_dependency_1L^gradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_6_grad/Reshape_1
?
Ugradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/BiasAddGradL^gradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/BiasAddGrad
?
Fgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients_1/mul_7_grad/tuple/control_dependency_1*
T0*
data_formatNHWC
?
Kgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/group_depsNoOpG^gradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/BiasAddGrad2^gradients_1/mul_7_grad/tuple/control_dependency_1^sac_policy_opt
?
Sgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/control_dependencyIdentity1gradients_1/mul_7_grad/tuple/control_dependency_1L^gradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_7_grad/Reshape_1
?
Ugradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/BiasAddGradL^gradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/BiasAddGrad
?
8gradients_1/critic/value/encoder/hidden_0/Mul_grad/ShapeShape%critic/value/encoder/hidden_0/BiasAdd^sac_policy_opt*
T0*
out_type0
?
:gradients_1/critic/value/encoder/hidden_0/Mul_grad/Shape_1Shape%critic/value/encoder/hidden_0/Sigmoid^sac_policy_opt*
T0*
out_type0
?
Hgradients_1/critic/value/encoder/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Shape:gradients_1/critic/value/encoder/hidden_0/Mul_grad/Shape_1*
T0
?
6gradients_1/critic/value/encoder/hidden_0/Mul_grad/MulMulNgradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/control_dependency%critic/value/encoder/hidden_0/Sigmoid*
T0
?
6gradients_1/critic/value/encoder/hidden_0/Mul_grad/SumSum6gradients_1/critic/value/encoder/hidden_0/Mul_grad/MulHgradients_1/critic/value/encoder/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
:gradients_1/critic/value/encoder/hidden_0/Mul_grad/ReshapeReshape6gradients_1/critic/value/encoder/hidden_0/Mul_grad/Sum8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Shape*
T0*
Tshape0
?
8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Mul_1Mul%critic/value/encoder/hidden_0/BiasAddNgradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/control_dependency*
T0
?
8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Sum_1Sum8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Mul_1Jgradients_1/critic/value/encoder/hidden_0/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
<gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape_1Reshape8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Sum_1:gradients_1/critic/value/encoder/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
?
Cgradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/group_depsNoOp;^gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape=^gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape_1^sac_policy_opt
?
Kgradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/control_dependencyIdentity:gradients_1/critic/value/encoder/hidden_0/Mul_grad/ReshapeD^gradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape
?
Mgradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/control_dependency_1Identity<gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape_1D^gradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape_1
?
@gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMulMatMulSgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/control_dependency-critic/q/q1_encoding/extrinsic_q1/kernel/read*
T0*
transpose_a( *
transpose_b(
?
Bgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMul_1MatMul,critic/q/q1_encoding/q1_encoder/hidden_1/MulSgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Jgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/group_depsNoOpA^gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMulC^gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMul_1^sac_policy_opt
?
Rgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/control_dependencyIdentity@gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMulK^gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMul
?
Tgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/control_dependency_1IdentityBgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMul_1K^gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMul_1
?
@gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMulMatMulSgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/control_dependency-critic/q/q2_encoding/extrinsic_q2/kernel/read*
T0*
transpose_a( *
transpose_b(
?
Bgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMul_1MatMul,critic/q/q2_encoding/q2_encoder/hidden_1/MulSgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Jgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/group_depsNoOpA^gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMulC^gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMul_1^sac_policy_opt
?
Rgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/control_dependencyIdentity@gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMulK^gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMul
?
Tgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/control_dependency_1IdentityBgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMul_1K^gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMul_1
?
Bgradients_1/critic/value/encoder/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad%critic/value/encoder/hidden_0/SigmoidMgradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
?
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/ShapeShape0critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd^sac_policy_opt*
T0*
out_type0
?
Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Shape_1Shape0critic/q/q1_encoding/q1_encoder/hidden_1/Sigmoid^sac_policy_opt*
T0*
out_type0
?
Sgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/ShapeEgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Shape_1*
T0
?
Agradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/MulMulRgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/control_dependency0critic/q/q1_encoding/q1_encoder/hidden_1/Sigmoid*
T0
?
Agradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/SumSumAgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/MulSgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/ReshapeReshapeAgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/SumCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Shape*
T0*
Tshape0
?
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Mul_1Mul0critic/q/q1_encoding/q1_encoder/hidden_1/BiasAddRgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/control_dependency*
T0
?
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Sum_1SumCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Mul_1Ugradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
Ggradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape_1ReshapeCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Sum_1Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
?
Ngradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/group_depsNoOpF^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/ReshapeH^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape_1^sac_policy_opt
?
Vgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/control_dependencyIdentityEgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/ReshapeO^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape
?
Xgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/control_dependency_1IdentityGgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape_1O^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape_1
?
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/ShapeShape0critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd^sac_policy_opt*
T0*
out_type0
?
Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Shape_1Shape0critic/q/q2_encoding/q2_encoder/hidden_1/Sigmoid^sac_policy_opt*
T0*
out_type0
?
Sgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/ShapeEgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Shape_1*
T0
?
Agradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/MulMulRgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/control_dependency0critic/q/q2_encoding/q2_encoder/hidden_1/Sigmoid*
T0
?
Agradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/SumSumAgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/MulSgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/ReshapeReshapeAgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/SumCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Shape*
T0*
Tshape0
?
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Mul_1Mul0critic/q/q2_encoding/q2_encoder/hidden_1/BiasAddRgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/control_dependency*
T0
?
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Sum_1SumCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Mul_1Ugradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
Ggradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape_1ReshapeCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Sum_1Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
?
Ngradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/group_depsNoOpF^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/ReshapeH^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape_1^sac_policy_opt
?
Vgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/control_dependencyIdentityEgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/ReshapeO^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape
?
Xgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/control_dependency_1IdentityGgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape_1O^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape_1
?
gradients_1/AddN_1AddNKgradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/control_dependencyBgradients_1/critic/value/encoder/hidden_0/Sigmoid_grad/SigmoidGrad*
N*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape
?
Bgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_1*
T0*
data_formatNHWC
?
Ggradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_1C^gradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/BiasAddGrad^sac_policy_opt
?
Ogradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_1H^gradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape
?
Qgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1IdentityBgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/BiasAddGradH^gradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/BiasAddGrad
?
Mgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad0critic/q/q1_encoding/q1_encoder/hidden_1/SigmoidXgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
?
Mgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad0critic/q/q2_encoding/q2_encoder/hidden_1/SigmoidXgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
?
<gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMulMatMulOgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/control_dependency)critic/value/encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
?
>gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationOgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Fgradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/group_depsNoOp=^gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul?^gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul_1^sac_policy_opt
?
Ngradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/control_dependencyIdentity<gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMulG^gradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul
?
Pgradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/control_dependency_1Identity>gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul_1G^gradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul_1
?
gradients_1/AddN_2AddNVgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/control_dependencyMgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Sigmoid_grad/SigmoidGrad*
N*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape
?
Mgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_2*
T0*
data_formatNHWC
?
Rgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_2N^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGrad^sac_policy_opt
?
Zgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_2S^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape
?
\gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1IdentityMgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGradS^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGrad
?
gradients_1/AddN_3AddNVgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/control_dependencyMgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Sigmoid_grad/SigmoidGrad*
N*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape
?
Mgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_3*
T0*
data_formatNHWC
?
Rgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_3N^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/BiasAddGrad^sac_policy_opt
?
Zgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_3S^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape
?
\gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1IdentityMgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/BiasAddGradS^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/BiasAddGrad
?
Ggradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMulMatMulZgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency4critic/q/q1_encoding/q1_encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b(
?
Igradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMul_1MatMul,critic/q/q1_encoding/q1_encoder/hidden_0/MulZgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Qgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/group_depsNoOpH^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMulJ^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMul_1^sac_policy_opt
?
Ygradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependencyIdentityGgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMulR^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMul
?
[gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityIgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMul_1R^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMul_1
?
Ggradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMulMatMulZgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency4critic/q/q2_encoding/q2_encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b(
?
Igradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMul_1MatMul,critic/q/q2_encoding/q2_encoder/hidden_0/MulZgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Qgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/group_depsNoOpH^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMulJ^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMul_1^sac_policy_opt
?
Ygradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/control_dependencyIdentityGgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMulR^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMul
?
[gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityIgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMul_1R^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMul_1
?
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/ShapeShape0critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd^sac_policy_opt*
T0*
out_type0
?
Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Shape_1Shape0critic/q/q1_encoding/q1_encoder/hidden_0/Sigmoid^sac_policy_opt*
T0*
out_type0
?
Sgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/ShapeEgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Shape_1*
T0
?
Agradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/MulMulYgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency0critic/q/q1_encoding/q1_encoder/hidden_0/Sigmoid*
T0
?
Agradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/SumSumAgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/MulSgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/ReshapeReshapeAgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/SumCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Shape*
T0*
Tshape0
?
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Mul_1Mul0critic/q/q1_encoding/q1_encoder/hidden_0/BiasAddYgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency*
T0
?
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Sum_1SumCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Mul_1Ugradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
Ggradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape_1ReshapeCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Sum_1Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
?
Ngradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/group_depsNoOpF^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/ReshapeH^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape_1^sac_policy_opt
?
Vgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/control_dependencyIdentityEgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/ReshapeO^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape
?
Xgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/control_dependency_1IdentityGgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape_1O^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape_1
?
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/ShapeShape0critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd^sac_policy_opt*
T0*
out_type0
?
Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Shape_1Shape0critic/q/q2_encoding/q2_encoder/hidden_0/Sigmoid^sac_policy_opt*
T0*
out_type0
?
Sgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/ShapeEgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Shape_1*
T0
?
Agradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/MulMulYgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/control_dependency0critic/q/q2_encoding/q2_encoder/hidden_0/Sigmoid*
T0
?
Agradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/SumSumAgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/MulSgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/ReshapeReshapeAgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/SumCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Shape*
T0*
Tshape0
?
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Mul_1Mul0critic/q/q2_encoding/q2_encoder/hidden_0/BiasAddYgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/control_dependency*
T0
?
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Sum_1SumCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Mul_1Ugradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
Ggradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape_1ReshapeCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Sum_1Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
?
Ngradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/group_depsNoOpF^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/ReshapeH^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape_1^sac_policy_opt
?
Vgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/control_dependencyIdentityEgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/ReshapeO^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape
?
Xgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/control_dependency_1IdentityGgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape_1O^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape_1
?
Mgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad0critic/q/q1_encoding/q1_encoder/hidden_0/SigmoidXgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
?
Mgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad0critic/q/q2_encoding/q2_encoder/hidden_0/SigmoidXgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
?
gradients_1/AddN_4AddNVgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/control_dependencyMgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Sigmoid_grad/SigmoidGrad*
N*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape
?
Mgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_4*
T0*
data_formatNHWC
?
Rgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_4N^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGrad^sac_policy_opt
?
Zgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_4S^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape
?
\gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1IdentityMgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGradS^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGrad
?
gradients_1/AddN_5AddNVgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/control_dependencyMgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Sigmoid_grad/SigmoidGrad*
N*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape
?
Mgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_5*
T0*
data_formatNHWC
?
Rgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_5N^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/BiasAddGrad^sac_policy_opt
?
Zgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_5S^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape
?
\gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1IdentityMgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/BiasAddGradS^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/BiasAddGrad
?
Ggradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMulMatMulZgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency4critic/q/q1_encoding/q1_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
?
Igradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationZgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Qgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/group_depsNoOpH^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMulJ^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMul_1^sac_policy_opt
?
Ygradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/control_dependencyIdentityGgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMulR^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMul
?
[gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1IdentityIgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMul_1R^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMul_1
?
Ggradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMulMatMulZgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency4critic/q/q2_encoding/q2_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
?
Igradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationZgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
?
Qgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/group_depsNoOpH^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMulJ^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMul_1^sac_policy_opt
?
Ygradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/control_dependencyIdentityGgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMulR^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMul
?
[gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1IdentityIgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMul_1R^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMul_1
?
beta1_power_1/initial_valueConst*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0*
valueB
 *fff?
?
beta1_power_1
VariableV2*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
	container *
dtype0*
shape: *
shared_name 
?
beta1_power_1/AssignAssignbeta1_power_1beta1_power_1/initial_value*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking(*
validate_shape(
q
beta1_power_1/readIdentitybeta1_power_1*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
?
beta2_power_1/initial_valueConst*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0*
valueB
 *w??
?
beta2_power_1
VariableV2*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
	container *
dtype0*
shape: *
shared_name 
?
beta2_power_1/AssignAssignbeta2_power_1beta2_power_1/initial_value*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking(*
validate_shape(
q
beta2_power_1/readIdentitybeta2_power_1*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
?
Tcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
valueB"K      
?
Jcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/ConstConst*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
valueB
 *    
?
Dcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zerosFillTcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorJcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/Const*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*

index_type0
?
2critic/value/encoder/hidden_0/kernel/sac_value_opt
VariableV2*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
9critic/value/encoder/hidden_0/kernel/sac_value_opt/AssignAssign2critic/value/encoder/hidden_0/kernel/sac_value_optDcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
7critic/value/encoder/hidden_0/kernel/sac_value_opt/readIdentity2critic/value/encoder/hidden_0/kernel/sac_value_opt*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
?
Vcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
valueB"K      
?
Lcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
valueB
 *    
?
Fcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zerosFillVcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorLcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*

index_type0
?
4critic/value/encoder/hidden_0/kernel/sac_value_opt_1
VariableV2*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
;critic/value/encoder/hidden_0/kernel/sac_value_opt_1/AssignAssign4critic/value/encoder/hidden_0/kernel/sac_value_opt_1Fcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
9critic/value/encoder/hidden_0/kernel/sac_value_opt_1/readIdentity4critic/value/encoder/hidden_0/kernel/sac_value_opt_1*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
?
Bcritic/value/encoder/hidden_0/bias/sac_value_opt/Initializer/zerosConst*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
dtype0*
valueB?*    
?
0critic/value/encoder/hidden_0/bias/sac_value_opt
VariableV2*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
7critic/value/encoder/hidden_0/bias/sac_value_opt/AssignAssign0critic/value/encoder/hidden_0/bias/sac_value_optBcritic/value/encoder/hidden_0/bias/sac_value_opt/Initializer/zeros*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
5critic/value/encoder/hidden_0/bias/sac_value_opt/readIdentity0critic/value/encoder/hidden_0/bias/sac_value_opt*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias
?
Dcritic/value/encoder/hidden_0/bias/sac_value_opt_1/Initializer/zerosConst*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
dtype0*
valueB?*    
?
2critic/value/encoder/hidden_0/bias/sac_value_opt_1
VariableV2*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
9critic/value/encoder/hidden_0/bias/sac_value_opt_1/AssignAssign2critic/value/encoder/hidden_0/bias/sac_value_opt_1Dcritic/value/encoder/hidden_0/bias/sac_value_opt_1/Initializer/zeros*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
7critic/value/encoder/hidden_0/bias/sac_value_opt_1/readIdentity2critic/value/encoder/hidden_0/bias/sac_value_opt_1*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias
?
Tcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
valueB"      
?
Jcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/ConstConst*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
valueB
 *    
?
Dcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zerosFillTcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorJcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/Const*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*

index_type0
?
2critic/value/encoder/hidden_1/kernel/sac_value_opt
VariableV2*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
9critic/value/encoder/hidden_1/kernel/sac_value_opt/AssignAssign2critic/value/encoder/hidden_1/kernel/sac_value_optDcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
7critic/value/encoder/hidden_1/kernel/sac_value_opt/readIdentity2critic/value/encoder/hidden_1/kernel/sac_value_opt*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
?
Vcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
valueB"      
?
Lcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
valueB
 *    
?
Fcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zerosFillVcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorLcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*

index_type0
?
4critic/value/encoder/hidden_1/kernel/sac_value_opt_1
VariableV2*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
;critic/value/encoder/hidden_1/kernel/sac_value_opt_1/AssignAssign4critic/value/encoder/hidden_1/kernel/sac_value_opt_1Fcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
9critic/value/encoder/hidden_1/kernel/sac_value_opt_1/readIdentity4critic/value/encoder/hidden_1/kernel/sac_value_opt_1*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
?
Bcritic/value/encoder/hidden_1/bias/sac_value_opt/Initializer/zerosConst*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
dtype0*
valueB?*    
?
0critic/value/encoder/hidden_1/bias/sac_value_opt
VariableV2*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
7critic/value/encoder/hidden_1/bias/sac_value_opt/AssignAssign0critic/value/encoder/hidden_1/bias/sac_value_optBcritic/value/encoder/hidden_1/bias/sac_value_opt/Initializer/zeros*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
5critic/value/encoder/hidden_1/bias/sac_value_opt/readIdentity0critic/value/encoder/hidden_1/bias/sac_value_opt*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias
?
Dcritic/value/encoder/hidden_1/bias/sac_value_opt_1/Initializer/zerosConst*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
dtype0*
valueB?*    
?
2critic/value/encoder/hidden_1/bias/sac_value_opt_1
VariableV2*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
9critic/value/encoder/hidden_1/bias/sac_value_opt_1/AssignAssign2critic/value/encoder/hidden_1/bias/sac_value_opt_1Dcritic/value/encoder/hidden_1/bias/sac_value_opt_1/Initializer/zeros*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
7critic/value/encoder/hidden_1/bias/sac_value_opt_1/readIdentity2critic/value/encoder/hidden_1/bias/sac_value_opt_1*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias
?
Ccritic/value/extrinsic_value/kernel/sac_value_opt/Initializer/zerosConst*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0*
valueB	?*    
?
1critic/value/extrinsic_value/kernel/sac_value_opt
VariableV2*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
8critic/value/extrinsic_value/kernel/sac_value_opt/AssignAssign1critic/value/extrinsic_value/kernel/sac_value_optCcritic/value/extrinsic_value/kernel/sac_value_opt/Initializer/zeros*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
use_locking(*
validate_shape(
?
6critic/value/extrinsic_value/kernel/sac_value_opt/readIdentity1critic/value/extrinsic_value/kernel/sac_value_opt*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
?
Ecritic/value/extrinsic_value/kernel/sac_value_opt_1/Initializer/zerosConst*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0*
valueB	?*    
?
3critic/value/extrinsic_value/kernel/sac_value_opt_1
VariableV2*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
:critic/value/extrinsic_value/kernel/sac_value_opt_1/AssignAssign3critic/value/extrinsic_value/kernel/sac_value_opt_1Ecritic/value/extrinsic_value/kernel/sac_value_opt_1/Initializer/zeros*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
use_locking(*
validate_shape(
?
8critic/value/extrinsic_value/kernel/sac_value_opt_1/readIdentity3critic/value/extrinsic_value/kernel/sac_value_opt_1*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
?
Acritic/value/extrinsic_value/bias/sac_value_opt/Initializer/zerosConst*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
dtype0*
valueB*    
?
/critic/value/extrinsic_value/bias/sac_value_opt
VariableV2*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
	container *
dtype0*
shape:*
shared_name 
?
6critic/value/extrinsic_value/bias/sac_value_opt/AssignAssign/critic/value/extrinsic_value/bias/sac_value_optAcritic/value/extrinsic_value/bias/sac_value_opt/Initializer/zeros*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
use_locking(*
validate_shape(
?
4critic/value/extrinsic_value/bias/sac_value_opt/readIdentity/critic/value/extrinsic_value/bias/sac_value_opt*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias
?
Ccritic/value/extrinsic_value/bias/sac_value_opt_1/Initializer/zerosConst*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
dtype0*
valueB*    
?
1critic/value/extrinsic_value/bias/sac_value_opt_1
VariableV2*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
	container *
dtype0*
shape:*
shared_name 
?
8critic/value/extrinsic_value/bias/sac_value_opt_1/AssignAssign1critic/value/extrinsic_value/bias/sac_value_opt_1Ccritic/value/extrinsic_value/bias/sac_value_opt_1/Initializer/zeros*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
use_locking(*
validate_shape(
?
6critic/value/extrinsic_value/bias/sac_value_opt_1/readIdentity1critic/value/extrinsic_value/bias/sac_value_opt_1*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias
?
_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
valueB"K      
?
Ucritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/ConstConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
valueB
 *    
?
Ocritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zerosFill_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorUcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/Const*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*

index_type0
?
=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt
VariableV2*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
Dcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/AssignAssign=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_optOcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
Bcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/readIdentity=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
?
acritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
valueB"K      
?
Wcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
valueB
 *    
?
Qcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zerosFillacritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorWcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*

index_type0
?
?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1
VariableV2*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
Fcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/AssignAssign?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1Qcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
Dcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/readIdentity?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
?
Mcritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt/Initializer/zerosConst*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
dtype0*
valueB?*    
?
;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt
VariableV2*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
Bcritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt/AssignAssign;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_optMcritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
@critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt/readIdentity;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias
?
Ocritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/Initializer/zerosConst*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
dtype0*
valueB?*    
?
=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1
VariableV2*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
Dcritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/AssignAssign=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1Ocritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
Bcritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/readIdentity=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias
?
_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
valueB"      
?
Ucritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/ConstConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
valueB
 *    
?
Ocritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zerosFill_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorUcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/Const*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*

index_type0
?
=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt
VariableV2*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
Dcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/AssignAssign=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_optOcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
Bcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/readIdentity=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
?
acritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
valueB"      
?
Wcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
valueB
 *    
?
Qcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zerosFillacritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorWcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*

index_type0
?
?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1
VariableV2*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
Fcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/AssignAssign?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1Qcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
Dcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/readIdentity?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
?
Mcritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt/Initializer/zerosConst*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
dtype0*
valueB?*    
?
;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt
VariableV2*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
Bcritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt/AssignAssign;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_optMcritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
@critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt/readIdentity;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias
?
Ocritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/Initializer/zerosConst*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
dtype0*
valueB?*    
?
=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1
VariableV2*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
Dcritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/AssignAssign=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1Ocritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
Bcritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/readIdentity=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias
?
Xcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
valueB"      
?
Ncritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/Initializer/zeros/ConstConst*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
valueB
 *    
?
Hcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/Initializer/zerosFillXcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorNcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/Initializer/zeros/Const*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*

index_type0
?
6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt
VariableV2*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
=critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/AssignAssign6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_optHcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/Initializer/zeros*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
use_locking(*
validate_shape(
?
;critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/readIdentity6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
?
Zcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
valueB"      
?
Pcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
valueB
 *    
?
Jcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/Initializer/zerosFillZcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorPcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*

index_type0
?
8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1
VariableV2*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
?critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/AssignAssign8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1Jcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/Initializer/zeros*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
use_locking(*
validate_shape(
?
=critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/readIdentity8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
?
Fcritic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt/Initializer/zerosConst*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0*
valueB*    
?
4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt
VariableV2*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
	container *
dtype0*
shape:*
shared_name 
?
;critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt/AssignAssign4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_optFcritic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt/Initializer/zeros*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking(*
validate_shape(
?
9critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt/readIdentity4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
?
Hcritic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1/Initializer/zerosConst*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0*
valueB*    
?
6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1
VariableV2*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
	container *
dtype0*
shape:*
shared_name 
?
=critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1/AssignAssign6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1Hcritic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1/Initializer/zeros*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking(*
validate_shape(
?
;critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1/readIdentity6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
?
_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
valueB"K      
?
Ucritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/ConstConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
valueB
 *    
?
Ocritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zerosFill_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorUcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/Const*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*

index_type0
?
=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt
VariableV2*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
Dcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/AssignAssign=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_optOcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
Bcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/readIdentity=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
?
acritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
valueB"K      
?
Wcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
valueB
 *    
?
Qcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zerosFillacritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorWcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*

index_type0
?
?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1
VariableV2*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
	container *
dtype0*
shape:	K?*
shared_name 
?
Fcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/AssignAssign?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1Qcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
Dcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/readIdentity?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
?
Mcritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt/Initializer/zerosConst*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
dtype0*
valueB?*    
?
;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt
VariableV2*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
Bcritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt/AssignAssign;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_optMcritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
@critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt/readIdentity;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias
?
Ocritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/Initializer/zerosConst*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
dtype0*
valueB?*    
?
=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1
VariableV2*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
	container *
dtype0*
shape:?*
shared_name 
?
Dcritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/AssignAssign=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1Ocritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
Bcritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/readIdentity=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias
?
_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
valueB"      
?
Ucritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/ConstConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
valueB
 *    
?
Ocritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zerosFill_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorUcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/Const*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*

index_type0
?
=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt
VariableV2*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
Dcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/AssignAssign=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_optOcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
Bcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/readIdentity=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
?
acritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
valueB"      
?
Wcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
valueB
 *    
?
Qcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zerosFillacritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorWcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*

index_type0
?
?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1
VariableV2*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
	container *
dtype0*
shape:
??*
shared_name 
?
Fcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/AssignAssign?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1Qcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
Dcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/readIdentity?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
?
Mcritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt/Initializer/zerosConst*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
dtype0*
valueB?*    
?
;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt
VariableV2*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
Bcritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt/AssignAssign;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_optMcritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
@critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt/readIdentity;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias
?
Ocritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/Initializer/zerosConst*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
dtype0*
valueB?*    
?
=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1
VariableV2*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
	container *
dtype0*
shape:?*
shared_name 
?
Dcritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/AssignAssign=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1Ocritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/Initializer/zeros*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
Bcritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/readIdentity=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias
?
Xcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
valueB"      
?
Ncritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/Initializer/zeros/ConstConst*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
valueB
 *    
?
Hcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/Initializer/zerosFillXcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorNcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/Initializer/zeros/Const*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*

index_type0
?
6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt
VariableV2*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
=critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/AssignAssign6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_optHcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/Initializer/zeros*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
use_locking(*
validate_shape(
?
;critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/readIdentity6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
?
Zcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
valueB"      
?
Pcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
valueB
 *    
?
Jcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/Initializer/zerosFillZcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorPcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*

index_type0
?
8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1
VariableV2*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
	container *
dtype0*
shape:	?*
shared_name 
?
?critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/AssignAssign8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1Jcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/Initializer/zeros*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
use_locking(*
validate_shape(
?
=critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/readIdentity8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
?
Fcritic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt/Initializer/zerosConst*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
dtype0*
valueB*    
?
4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt
VariableV2*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
	container *
dtype0*
shape:*
shared_name 
?
;critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt/AssignAssign4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_optFcritic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt/Initializer/zeros*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
use_locking(*
validate_shape(
?
9critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt/readIdentity4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias
?
Hcritic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1/Initializer/zerosConst*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
dtype0*
valueB*    
?
6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1
VariableV2*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
	container *
dtype0*
shape:*
shared_name 
?
=critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1/AssignAssign6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1Hcritic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1/Initializer/zeros*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
use_locking(*
validate_shape(
?
;critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1/readIdentity6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias
Q
sac_value_opt/beta1Const^sac_policy_opt*
dtype0*
valueB
 *fff?
Q
sac_value_opt/beta2Const^sac_policy_opt*
dtype0*
valueB
 *w??
S
sac_value_opt/epsilonConst^sac_policy_opt*
dtype0*
valueB
 *w?+2
?
Csac_value_opt/update_critic/value/encoder/hidden_0/kernel/ApplyAdam	ApplyAdam$critic/value/encoder/hidden_0/kernel2critic/value/encoder/hidden_0/kernel/sac_value_opt4critic/value/encoder/hidden_0/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonPgradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/control_dependency_1*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
use_locking( *
use_nesterov( 
?
Asac_value_opt/update_critic/value/encoder/hidden_0/bias/ApplyAdam	ApplyAdam"critic/value/encoder/hidden_0/bias0critic/value/encoder/hidden_0/bias/sac_value_opt2critic/value/encoder/hidden_0/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonQgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
use_locking( *
use_nesterov( 
?
Csac_value_opt/update_critic/value/encoder/hidden_1/kernel/ApplyAdam	ApplyAdam$critic/value/encoder/hidden_1/kernel2critic/value/encoder/hidden_1/kernel/sac_value_opt4critic/value/encoder/hidden_1/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonPgradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
use_locking( *
use_nesterov( 
?
Asac_value_opt/update_critic/value/encoder/hidden_1/bias/ApplyAdam	ApplyAdam"critic/value/encoder/hidden_1/bias0critic/value/encoder/hidden_1/bias/sac_value_opt2critic/value/encoder/hidden_1/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonQgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
use_locking( *
use_nesterov( 
?
Bsac_value_opt/update_critic/value/extrinsic_value/kernel/ApplyAdam	ApplyAdam#critic/value/extrinsic_value/kernel1critic/value/extrinsic_value/kernel/sac_value_opt3critic/value/extrinsic_value/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonOgradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/control_dependency_1*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
use_locking( *
use_nesterov( 
?
@sac_value_opt/update_critic/value/extrinsic_value/bias/ApplyAdam	ApplyAdam!critic/value/extrinsic_value/bias/critic/value/extrinsic_value/bias/sac_value_opt1critic/value/extrinsic_value/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonPgradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
use_locking( *
use_nesterov( 
?
Nsac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/ApplyAdam	ApplyAdam/critic/q/q1_encoding/q1_encoder/hidden_0/kernel=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon[gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
use_locking( *
use_nesterov( 
?
Lsac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/bias/ApplyAdam	ApplyAdam-critic/q/q1_encoding/q1_encoder/hidden_0/bias;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon\gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
use_locking( *
use_nesterov( 
?
Nsac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/ApplyAdam	ApplyAdam/critic/q/q1_encoding/q1_encoder/hidden_1/kernel=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon[gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
use_locking( *
use_nesterov( 
?
Lsac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/bias/ApplyAdam	ApplyAdam-critic/q/q1_encoding/q1_encoder/hidden_1/bias;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon\gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
use_locking( *
use_nesterov( 
?
Gsac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/kernel/ApplyAdam	ApplyAdam(critic/q/q1_encoding/extrinsic_q1/kernel6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonTgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/control_dependency_1*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
use_locking( *
use_nesterov( 
?
Esac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/bias/ApplyAdam	ApplyAdam&critic/q/q1_encoding/extrinsic_q1/bias4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonUgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/control_dependency_1*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking( *
use_nesterov( 
?
Nsac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/ApplyAdam	ApplyAdam/critic/q/q2_encoding/q2_encoder/hidden_0/kernel=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon[gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
use_locking( *
use_nesterov( 
?
Lsac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/bias/ApplyAdam	ApplyAdam-critic/q/q2_encoding/q2_encoder/hidden_0/bias;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon\gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
use_locking( *
use_nesterov( 
?
Nsac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/ApplyAdam	ApplyAdam/critic/q/q2_encoding/q2_encoder/hidden_1/kernel=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon[gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
use_locking( *
use_nesterov( 
?
Lsac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/bias/ApplyAdam	ApplyAdam-critic/q/q2_encoding/q2_encoder/hidden_1/bias;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon\gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
use_locking( *
use_nesterov( 
?
Gsac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/kernel/ApplyAdam	ApplyAdam(critic/q/q2_encoding/extrinsic_q2/kernel6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonTgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/control_dependency_1*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
use_locking( *
use_nesterov( 
?
Esac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/bias/ApplyAdam	ApplyAdam&critic/q/q2_encoding/extrinsic_q2/bias4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonUgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/control_dependency_1*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
use_locking( *
use_nesterov( 
?
sac_value_opt/mulMulbeta1_power_1/readsac_value_opt/beta1F^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/bias/ApplyAdamH^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/ApplyAdamF^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/bias/ApplyAdamH^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_0/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_0/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_1/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_1/kernel/ApplyAdamA^sac_value_opt/update_critic/value/extrinsic_value/bias/ApplyAdamC^sac_value_opt/update_critic/value/extrinsic_value/kernel/ApplyAdam*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
?
sac_value_opt/AssignAssignbeta1_power_1sac_value_opt/mul*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking( *
validate_shape(
?
sac_value_opt/mul_1Mulbeta2_power_1/readsac_value_opt/beta2F^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/bias/ApplyAdamH^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/ApplyAdamF^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/bias/ApplyAdamH^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_0/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_0/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_1/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_1/kernel/ApplyAdamA^sac_value_opt/update_critic/value/extrinsic_value/bias/ApplyAdamC^sac_value_opt/update_critic/value/extrinsic_value/kernel/ApplyAdam*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
?
sac_value_opt/Assign_1Assignbeta2_power_1sac_value_opt/mul_1*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking( *
validate_shape(
?
sac_value_optNoOp^sac_policy_opt^sac_value_opt/Assign^sac_value_opt/Assign_1F^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/bias/ApplyAdamH^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/ApplyAdamF^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/bias/ApplyAdamH^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_0/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_0/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_1/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_1/kernel/ApplyAdamA^sac_value_opt/update_critic/value/extrinsic_value/bias/ApplyAdamC^sac_value_opt/update_critic/value/extrinsic_value/kernel/ApplyAdam
[
gradients_2/ShapeConst^sac_policy_opt^sac_value_opt*
dtype0*
valueB 
i
gradients_2/grad_ys_0/ConstConst^sac_policy_opt^sac_value_opt*
dtype0*
valueB
 *  ??
h
gradients_2/grad_ys_0Fillgradients_2/Shapegradients_2/grad_ys_0/Const*
T0*

index_type0
?
gradients_2/Neg_grad/NegNeggradients_2/grad_ys_0*
T0
t
%gradients_2/Mean_9_grad/Reshape/shapeConst^sac_policy_opt^sac_value_opt*
dtype0*
valueB:
?
gradients_2/Mean_9_grad/ReshapeReshapegradients_2/Neg_grad/Neg%gradients_2/Mean_9_grad/Reshape/shape*
T0*
Tshape0
h
gradients_2/Mean_9_grad/ShapeShapemul_13^sac_policy_opt^sac_value_opt*
T0*
out_type0

gradients_2/Mean_9_grad/TileTilegradients_2/Mean_9_grad/Reshapegradients_2/Mean_9_grad/Shape*
T0*

Tmultiples0
j
gradients_2/Mean_9_grad/Shape_1Shapemul_13^sac_policy_opt^sac_value_opt*
T0*
out_type0
i
gradients_2/Mean_9_grad/Shape_2Const^sac_policy_opt^sac_value_opt*
dtype0*
valueB 
l
gradients_2/Mean_9_grad/ConstConst^sac_policy_opt^sac_value_opt*
dtype0*
valueB: 
?
gradients_2/Mean_9_grad/ProdProdgradients_2/Mean_9_grad/Shape_1gradients_2/Mean_9_grad/Const*
T0*

Tidx0*
	keep_dims( 
n
gradients_2/Mean_9_grad/Const_1Const^sac_policy_opt^sac_value_opt*
dtype0*
valueB: 
?
gradients_2/Mean_9_grad/Prod_1Prodgradients_2/Mean_9_grad/Shape_2gradients_2/Mean_9_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
l
!gradients_2/Mean_9_grad/Maximum/yConst^sac_policy_opt^sac_value_opt*
dtype0*
value	B :
v
gradients_2/Mean_9_grad/MaximumMaximumgradients_2/Mean_9_grad/Prod_1!gradients_2/Mean_9_grad/Maximum/y*
T0
t
 gradients_2/Mean_9_grad/floordivFloorDivgradients_2/Mean_9_grad/Prodgradients_2/Mean_9_grad/Maximum*
T0
n
gradients_2/Mean_9_grad/CastCast gradients_2/Mean_9_grad/floordiv*

DstT0*

SrcT0*
Truncate( 
o
gradients_2/Mean_9_grad/truedivRealDivgradients_2/Mean_9_grad/Tilegradients_2/Mean_9_grad/Cast*
T0
k
gradients_2/mul_13_grad/ShapeShape	ToFloat_2^sac_policy_opt^sac_value_opt*
T0*
out_type0
j
gradients_2/mul_13_grad/Shape_1ShapeMean_8^sac_policy_opt^sac_value_opt*
T0*
out_type0
?
-gradients_2/mul_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/mul_13_grad/Shapegradients_2/mul_13_grad/Shape_1*
T0
T
gradients_2/mul_13_grad/MulMulgradients_2/Mean_9_grad/truedivMean_8*
T0
?
gradients_2/mul_13_grad/SumSumgradients_2/mul_13_grad/Mul-gradients_2/mul_13_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
}
gradients_2/mul_13_grad/ReshapeReshapegradients_2/mul_13_grad/Sumgradients_2/mul_13_grad/Shape*
T0*
Tshape0
Y
gradients_2/mul_13_grad/Mul_1Mul	ToFloat_2gradients_2/Mean_9_grad/truediv*
T0
?
gradients_2/mul_13_grad/Sum_1Sumgradients_2/mul_13_grad/Mul_1/gradients_2/mul_13_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
!gradients_2/mul_13_grad/Reshape_1Reshapegradients_2/mul_13_grad/Sum_1gradients_2/mul_13_grad/Shape_1*
T0*
Tshape0
?
(gradients_2/mul_13_grad/tuple/group_depsNoOp ^gradients_2/mul_13_grad/Reshape"^gradients_2/mul_13_grad/Reshape_1^sac_policy_opt^sac_value_opt
?
0gradients_2/mul_13_grad/tuple/control_dependencyIdentitygradients_2/mul_13_grad/Reshape)^gradients_2/mul_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_2/mul_13_grad/Reshape
?
2gradients_2/mul_13_grad/tuple/control_dependency_1Identity!gradients_2/mul_13_grad/Reshape_1)^gradients_2/mul_13_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_2/mul_13_grad/Reshape_1
h
gradients_2/Mean_8_grad/ShapeShapemul_12^sac_policy_opt^sac_value_opt*
T0*
out_type0
?
gradients_2/Mean_8_grad/SizeConst^sac_policy_opt^sac_value_opt*0
_class&
$"loc:@gradients_2/Mean_8_grad/Shape*
dtype0*
value	B :
?
gradients_2/Mean_8_grad/addAddV2Mean_8/reduction_indicesgradients_2/Mean_8_grad/Size*
T0*0
_class&
$"loc:@gradients_2/Mean_8_grad/Shape
?
gradients_2/Mean_8_grad/modFloorModgradients_2/Mean_8_grad/addgradients_2/Mean_8_grad/Size*
T0*0
_class&
$"loc:@gradients_2/Mean_8_grad/Shape
?
gradients_2/Mean_8_grad/Shape_1Const^sac_policy_opt^sac_value_opt*0
_class&
$"loc:@gradients_2/Mean_8_grad/Shape*
dtype0*
valueB 
?
#gradients_2/Mean_8_grad/range/startConst^sac_policy_opt^sac_value_opt*0
_class&
$"loc:@gradients_2/Mean_8_grad/Shape*
dtype0*
value	B : 
?
#gradients_2/Mean_8_grad/range/deltaConst^sac_policy_opt^sac_value_opt*0
_class&
$"loc:@gradients_2/Mean_8_grad/Shape*
dtype0*
value	B :
?
gradients_2/Mean_8_grad/rangeRange#gradients_2/Mean_8_grad/range/startgradients_2/Mean_8_grad/Size#gradients_2/Mean_8_grad/range/delta*

Tidx0*0
_class&
$"loc:@gradients_2/Mean_8_grad/Shape
?
"gradients_2/Mean_8_grad/ones/ConstConst^sac_policy_opt^sac_value_opt*0
_class&
$"loc:@gradients_2/Mean_8_grad/Shape*
dtype0*
value	B :
?
gradients_2/Mean_8_grad/onesFillgradients_2/Mean_8_grad/Shape_1"gradients_2/Mean_8_grad/ones/Const*
T0*0
_class&
$"loc:@gradients_2/Mean_8_grad/Shape*

index_type0
?
%gradients_2/Mean_8_grad/DynamicStitchDynamicStitchgradients_2/Mean_8_grad/rangegradients_2/Mean_8_grad/modgradients_2/Mean_8_grad/Shapegradients_2/Mean_8_grad/ones*
N*
T0*0
_class&
$"loc:@gradients_2/Mean_8_grad/Shape
?
gradients_2/Mean_8_grad/ReshapeReshape2gradients_2/mul_13_grad/tuple/control_dependency_1%gradients_2/Mean_8_grad/DynamicStitch*
T0*
Tshape0
?
#gradients_2/Mean_8_grad/BroadcastToBroadcastTogradients_2/Mean_8_grad/Reshapegradients_2/Mean_8_grad/Shape*
T0*

Tidx0
j
gradients_2/Mean_8_grad/Shape_2Shapemul_12^sac_policy_opt^sac_value_opt*
T0*
out_type0
j
gradients_2/Mean_8_grad/Shape_3ShapeMean_8^sac_policy_opt^sac_value_opt*
T0*
out_type0
l
gradients_2/Mean_8_grad/ConstConst^sac_policy_opt^sac_value_opt*
dtype0*
valueB: 
?
gradients_2/Mean_8_grad/ProdProdgradients_2/Mean_8_grad/Shape_2gradients_2/Mean_8_grad/Const*
T0*

Tidx0*
	keep_dims( 
n
gradients_2/Mean_8_grad/Const_1Const^sac_policy_opt^sac_value_opt*
dtype0*
valueB: 
?
gradients_2/Mean_8_grad/Prod_1Prodgradients_2/Mean_8_grad/Shape_3gradients_2/Mean_8_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
l
!gradients_2/Mean_8_grad/Maximum/yConst^sac_policy_opt^sac_value_opt*
dtype0*
value	B :
v
gradients_2/Mean_8_grad/MaximumMaximumgradients_2/Mean_8_grad/Prod_1!gradients_2/Mean_8_grad/Maximum/y*
T0
t
 gradients_2/Mean_8_grad/floordivFloorDivgradients_2/Mean_8_grad/Prodgradients_2/Mean_8_grad/Maximum*
T0
n
gradients_2/Mean_8_grad/CastCast gradients_2/Mean_8_grad/floordiv*

DstT0*

SrcT0*
Truncate( 
v
gradients_2/Mean_8_grad/truedivRealDiv#gradients_2/Mean_8_grad/BroadcastTogradients_2/Mean_8_grad/Cast*
T0
s
gradients_2/mul_12_grad/ShapeShapelog_ent_coef/read^sac_policy_opt^sac_value_opt*
T0*
out_type0
k
gradients_2/mul_12_grad/Shape_1ShapeSqueeze^sac_policy_opt^sac_value_opt*
T0*
out_type0
?
-gradients_2/mul_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/mul_12_grad/Shapegradients_2/mul_12_grad/Shape_1*
T0
U
gradients_2/mul_12_grad/MulMulgradients_2/Mean_8_grad/truedivSqueeze*
T0
?
gradients_2/mul_12_grad/SumSumgradients_2/mul_12_grad/Mul-gradients_2/mul_12_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
}
gradients_2/mul_12_grad/ReshapeReshapegradients_2/mul_12_grad/Sumgradients_2/mul_12_grad/Shape*
T0*
Tshape0
a
gradients_2/mul_12_grad/Mul_1Mullog_ent_coef/readgradients_2/Mean_8_grad/truediv*
T0
?
gradients_2/mul_12_grad/Sum_1Sumgradients_2/mul_12_grad/Mul_1/gradients_2/mul_12_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
!gradients_2/mul_12_grad/Reshape_1Reshapegradients_2/mul_12_grad/Sum_1gradients_2/mul_12_grad/Shape_1*
T0*
Tshape0
?
(gradients_2/mul_12_grad/tuple/group_depsNoOp ^gradients_2/mul_12_grad/Reshape"^gradients_2/mul_12_grad/Reshape_1^sac_policy_opt^sac_value_opt
?
0gradients_2/mul_12_grad/tuple/control_dependencyIdentitygradients_2/mul_12_grad/Reshape)^gradients_2/mul_12_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_2/mul_12_grad/Reshape
?
2gradients_2/mul_12_grad/tuple/control_dependency_1Identity!gradients_2/mul_12_grad/Reshape_1)^gradients_2/mul_12_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_2/mul_12_grad/Reshape_1
i
beta1_power_2/initial_valueConst*
_class
loc:@log_ent_coef*
dtype0*
valueB
 *fff?
z
beta1_power_2
VariableV2*
_class
loc:@log_ent_coef*
	container *
dtype0*
shape: *
shared_name 
?
beta1_power_2/AssignAssignbeta1_power_2beta1_power_2/initial_value*
T0*
_class
loc:@log_ent_coef*
use_locking(*
validate_shape(
W
beta1_power_2/readIdentitybeta1_power_2*
T0*
_class
loc:@log_ent_coef
i
beta2_power_2/initial_valueConst*
_class
loc:@log_ent_coef*
dtype0*
valueB
 *w??
z
beta2_power_2
VariableV2*
_class
loc:@log_ent_coef*
	container *
dtype0*
shape: *
shared_name 
?
beta2_power_2/AssignAssignbeta2_power_2beta2_power_2/initial_value*
T0*
_class
loc:@log_ent_coef*
use_locking(*
validate_shape(
W
beta2_power_2/readIdentitybeta2_power_2*
T0*
_class
loc:@log_ent_coef
?
.log_ent_coef/sac_entropy_opt/Initializer/zerosConst*
_class
loc:@log_ent_coef*
dtype0*
valueB*    
?
log_ent_coef/sac_entropy_opt
VariableV2*
_class
loc:@log_ent_coef*
	container *
dtype0*
shape:*
shared_name 
?
#log_ent_coef/sac_entropy_opt/AssignAssignlog_ent_coef/sac_entropy_opt.log_ent_coef/sac_entropy_opt/Initializer/zeros*
T0*
_class
loc:@log_ent_coef*
use_locking(*
validate_shape(
u
!log_ent_coef/sac_entropy_opt/readIdentitylog_ent_coef/sac_entropy_opt*
T0*
_class
loc:@log_ent_coef
?
0log_ent_coef/sac_entropy_opt_1/Initializer/zerosConst*
_class
loc:@log_ent_coef*
dtype0*
valueB*    
?
log_ent_coef/sac_entropy_opt_1
VariableV2*
_class
loc:@log_ent_coef*
	container *
dtype0*
shape:*
shared_name 
?
%log_ent_coef/sac_entropy_opt_1/AssignAssignlog_ent_coef/sac_entropy_opt_10log_ent_coef/sac_entropy_opt_1/Initializer/zeros*
T0*
_class
loc:@log_ent_coef*
use_locking(*
validate_shape(
y
#log_ent_coef/sac_entropy_opt_1/readIdentitylog_ent_coef/sac_entropy_opt_1*
T0*
_class
loc:@log_ent_coef
c
sac_entropy_opt/beta1Const^sac_policy_opt^sac_value_opt*
dtype0*
valueB
 *fff?
c
sac_entropy_opt/beta2Const^sac_policy_opt^sac_value_opt*
dtype0*
valueB
 *w??
e
sac_entropy_opt/epsilonConst^sac_policy_opt^sac_value_opt*
dtype0*
valueB
 *w?+2
?
-sac_entropy_opt/update_log_ent_coef/ApplyAdam	ApplyAdamlog_ent_coeflog_ent_coef/sac_entropy_optlog_ent_coef/sac_entropy_opt_1beta1_power_2/readbeta2_power_2/readVariable_1/readsac_entropy_opt/beta1sac_entropy_opt/beta2sac_entropy_opt/epsilon0gradients_2/mul_12_grad/tuple/control_dependency*
T0*
_class
loc:@log_ent_coef*
use_locking( *
use_nesterov( 
?
sac_entropy_opt/mulMulbeta1_power_2/readsac_entropy_opt/beta1.^sac_entropy_opt/update_log_ent_coef/ApplyAdam*
T0*
_class
loc:@log_ent_coef
?
sac_entropy_opt/AssignAssignbeta1_power_2sac_entropy_opt/mul*
T0*
_class
loc:@log_ent_coef*
use_locking( *
validate_shape(
?
sac_entropy_opt/mul_1Mulbeta2_power_2/readsac_entropy_opt/beta2.^sac_entropy_opt/update_log_ent_coef/ApplyAdam*
T0*
_class
loc:@log_ent_coef
?
sac_entropy_opt/Assign_1Assignbeta2_power_2sac_entropy_opt/mul_1*
T0*
_class
loc:@log_ent_coef*
use_locking( *
validate_shape(
?
sac_entropy_optNoOp^sac_entropy_opt/Assign^sac_entropy_opt/Assign_1.^sac_entropy_opt/update_log_ent_coef/ApplyAdam^sac_policy_opt^sac_value_opt
A
save/filename/inputConst*
dtype0*
valueB Bmodel
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: 
? 
save/SaveV2/tensor_namesConst*
dtype0*? 
value? B? ^BVariableB
Variable_1Baction_output_shapeBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta2_powerBbeta2_power_1Bbeta2_power_2B&critic/q/q1_encoding/extrinsic_q1/biasB4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_optB6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1B(critic/q/q1_encoding/extrinsic_q1/kernelB6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_optB8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1B-critic/q/q1_encoding/q1_encoder/hidden_0/biasB;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_optB=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1B/critic/q/q1_encoding/q1_encoder/hidden_0/kernelB=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_optB?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1B-critic/q/q1_encoding/q1_encoder/hidden_1/biasB;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_optB=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1B/critic/q/q1_encoding/q1_encoder/hidden_1/kernelB=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_optB?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1B&critic/q/q2_encoding/extrinsic_q2/biasB4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_optB6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1B(critic/q/q2_encoding/extrinsic_q2/kernelB6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_optB8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1B-critic/q/q2_encoding/q2_encoder/hidden_0/biasB;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_optB=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1B/critic/q/q2_encoding/q2_encoder/hidden_0/kernelB=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_optB?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1B-critic/q/q2_encoding/q2_encoder/hidden_1/biasB;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_optB=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1B/critic/q/q2_encoding/q2_encoder/hidden_1/kernelB=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_optB?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1B"critic/value/encoder/hidden_0/biasB0critic/value/encoder/hidden_0/bias/sac_value_optB2critic/value/encoder/hidden_0/bias/sac_value_opt_1B$critic/value/encoder/hidden_0/kernelB2critic/value/encoder/hidden_0/kernel/sac_value_optB4critic/value/encoder/hidden_0/kernel/sac_value_opt_1B"critic/value/encoder/hidden_1/biasB0critic/value/encoder/hidden_1/bias/sac_value_optB2critic/value/encoder/hidden_1/bias/sac_value_opt_1B$critic/value/encoder/hidden_1/kernelB2critic/value/encoder/hidden_1/kernel/sac_value_optB4critic/value/encoder/hidden_1/kernel/sac_value_opt_1B!critic/value/extrinsic_value/biasB/critic/value/extrinsic_value/bias/sac_value_optB1critic/value/extrinsic_value/bias/sac_value_opt_1B#critic/value/extrinsic_value/kernelB1critic/value/extrinsic_value/kernel/sac_value_optB3critic/value/extrinsic_value/kernel/sac_value_opt_1Bglobal_stepBis_continuous_controlBlog_ent_coefBlog_ent_coef/sac_entropy_optBlog_ent_coef/sac_entropy_opt_1Bmemory_sizeBpolicy/dense/kernelB"policy/dense/kernel/sac_policy_optB$policy/dense/kernel/sac_policy_opt_1B!policy/main_graph_0/hidden_0/biasB0policy/main_graph_0/hidden_0/bias/sac_policy_optB2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1B#policy/main_graph_0/hidden_0/kernelB2policy/main_graph_0/hidden_0/kernel/sac_policy_optB4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1B!policy/main_graph_0/hidden_1/biasB0policy/main_graph_0/hidden_1/bias/sac_policy_optB2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1B#policy/main_graph_0/hidden_1/kernelB2policy/main_graph_0/hidden_1/kernel/sac_policy_optB4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1B1target_network/critic/value/encoder/hidden_0/biasB3target_network/critic/value/encoder/hidden_0/kernelB1target_network/critic/value/encoder/hidden_1/biasB3target_network/critic/value/encoder/hidden_1/kernelB0target_network/critic/value/extrinsic_value/biasB2target_network/critic/value/extrinsic_value/kernelBtrainer_major_versionBtrainer_minor_versionBtrainer_patch_versionBversion_number
?
save/SaveV2/shape_and_slicesConst*
dtype0*?
value?B?^B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?!
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1action_output_shapebeta1_powerbeta1_power_1beta1_power_2beta2_powerbeta2_power_1beta2_power_2&critic/q/q1_encoding/extrinsic_q1/bias4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1(critic/q/q1_encoding/extrinsic_q1/kernel6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1-critic/q/q1_encoding/q1_encoder/hidden_0/bias;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/critic/q/q1_encoding/q1_encoder/hidden_0/kernel=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1-critic/q/q1_encoding/q1_encoder/hidden_1/bias;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/critic/q/q1_encoding/q1_encoder/hidden_1/kernel=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1&critic/q/q2_encoding/extrinsic_q2/bias4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1(critic/q/q2_encoding/extrinsic_q2/kernel6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1-critic/q/q2_encoding/q2_encoder/hidden_0/bias;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/critic/q/q2_encoding/q2_encoder/hidden_0/kernel=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1-critic/q/q2_encoding/q2_encoder/hidden_1/bias;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/critic/q/q2_encoding/q2_encoder/hidden_1/kernel=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1"critic/value/encoder/hidden_0/bias0critic/value/encoder/hidden_0/bias/sac_value_opt2critic/value/encoder/hidden_0/bias/sac_value_opt_1$critic/value/encoder/hidden_0/kernel2critic/value/encoder/hidden_0/kernel/sac_value_opt4critic/value/encoder/hidden_0/kernel/sac_value_opt_1"critic/value/encoder/hidden_1/bias0critic/value/encoder/hidden_1/bias/sac_value_opt2critic/value/encoder/hidden_1/bias/sac_value_opt_1$critic/value/encoder/hidden_1/kernel2critic/value/encoder/hidden_1/kernel/sac_value_opt4critic/value/encoder/hidden_1/kernel/sac_value_opt_1!critic/value/extrinsic_value/bias/critic/value/extrinsic_value/bias/sac_value_opt1critic/value/extrinsic_value/bias/sac_value_opt_1#critic/value/extrinsic_value/kernel1critic/value/extrinsic_value/kernel/sac_value_opt3critic/value/extrinsic_value/kernel/sac_value_opt_1global_stepis_continuous_controllog_ent_coeflog_ent_coef/sac_entropy_optlog_ent_coef/sac_entropy_opt_1memory_sizepolicy/dense/kernel"policy/dense/kernel/sac_policy_opt$policy/dense/kernel/sac_policy_opt_1!policy/main_graph_0/hidden_0/bias0policy/main_graph_0/hidden_0/bias/sac_policy_opt2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1#policy/main_graph_0/hidden_0/kernel2policy/main_graph_0/hidden_0/kernel/sac_policy_opt4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1!policy/main_graph_0/hidden_1/bias0policy/main_graph_0/hidden_1/bias/sac_policy_opt2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1#policy/main_graph_0/hidden_1/kernel2policy/main_graph_0/hidden_1/kernel/sac_policy_opt4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_11target_network/critic/value/encoder/hidden_0/bias3target_network/critic/value/encoder/hidden_0/kernel1target_network/critic/value/encoder/hidden_1/bias3target_network/critic/value/encoder/hidden_1/kernel0target_network/critic/value/extrinsic_value/bias2target_network/critic/value/extrinsic_value/kerneltrainer_major_versiontrainer_minor_versiontrainer_patch_versionversion_number*l
dtypesb
`2^
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
?!
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*? 
value? B? ^BVariableB
Variable_1Baction_output_shapeBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta2_powerBbeta2_power_1Bbeta2_power_2B&critic/q/q1_encoding/extrinsic_q1/biasB4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_optB6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1B(critic/q/q1_encoding/extrinsic_q1/kernelB6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_optB8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1B-critic/q/q1_encoding/q1_encoder/hidden_0/biasB;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_optB=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1B/critic/q/q1_encoding/q1_encoder/hidden_0/kernelB=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_optB?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1B-critic/q/q1_encoding/q1_encoder/hidden_1/biasB;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_optB=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1B/critic/q/q1_encoding/q1_encoder/hidden_1/kernelB=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_optB?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1B&critic/q/q2_encoding/extrinsic_q2/biasB4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_optB6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1B(critic/q/q2_encoding/extrinsic_q2/kernelB6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_optB8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1B-critic/q/q2_encoding/q2_encoder/hidden_0/biasB;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_optB=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1B/critic/q/q2_encoding/q2_encoder/hidden_0/kernelB=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_optB?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1B-critic/q/q2_encoding/q2_encoder/hidden_1/biasB;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_optB=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1B/critic/q/q2_encoding/q2_encoder/hidden_1/kernelB=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_optB?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1B"critic/value/encoder/hidden_0/biasB0critic/value/encoder/hidden_0/bias/sac_value_optB2critic/value/encoder/hidden_0/bias/sac_value_opt_1B$critic/value/encoder/hidden_0/kernelB2critic/value/encoder/hidden_0/kernel/sac_value_optB4critic/value/encoder/hidden_0/kernel/sac_value_opt_1B"critic/value/encoder/hidden_1/biasB0critic/value/encoder/hidden_1/bias/sac_value_optB2critic/value/encoder/hidden_1/bias/sac_value_opt_1B$critic/value/encoder/hidden_1/kernelB2critic/value/encoder/hidden_1/kernel/sac_value_optB4critic/value/encoder/hidden_1/kernel/sac_value_opt_1B!critic/value/extrinsic_value/biasB/critic/value/extrinsic_value/bias/sac_value_optB1critic/value/extrinsic_value/bias/sac_value_opt_1B#critic/value/extrinsic_value/kernelB1critic/value/extrinsic_value/kernel/sac_value_optB3critic/value/extrinsic_value/kernel/sac_value_opt_1Bglobal_stepBis_continuous_controlBlog_ent_coefBlog_ent_coef/sac_entropy_optBlog_ent_coef/sac_entropy_opt_1Bmemory_sizeBpolicy/dense/kernelB"policy/dense/kernel/sac_policy_optB$policy/dense/kernel/sac_policy_opt_1B!policy/main_graph_0/hidden_0/biasB0policy/main_graph_0/hidden_0/bias/sac_policy_optB2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1B#policy/main_graph_0/hidden_0/kernelB2policy/main_graph_0/hidden_0/kernel/sac_policy_optB4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1B!policy/main_graph_0/hidden_1/biasB0policy/main_graph_0/hidden_1/bias/sac_policy_optB2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1B#policy/main_graph_0/hidden_1/kernelB2policy/main_graph_0/hidden_1/kernel/sac_policy_optB4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1B1target_network/critic/value/encoder/hidden_0/biasB3target_network/critic/value/encoder/hidden_0/kernelB1target_network/critic/value/encoder/hidden_1/biasB3target_network/critic/value/encoder/hidden_1/kernelB0target_network/critic/value/extrinsic_value/biasB2target_network/critic/value/extrinsic_value/kernelBtrainer_major_versionBtrainer_minor_versionBtrainer_patch_versionBversion_number
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*?
value?B?^B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*l
dtypesb
`2^
~
save/AssignAssignVariablesave/RestoreV2*
T0*
_class
loc:@Variable*
use_locking(*
validate_shape(
?
save/Assign_1Assign
Variable_1save/RestoreV2:1*
T0*
_class
loc:@Variable_1*
use_locking(*
validate_shape(
?
save/Assign_2Assignaction_output_shapesave/RestoreV2:2*
T0*&
_class
loc:@action_output_shape*
use_locking(*
validate_shape(
?
save/Assign_3Assignbeta1_powersave/RestoreV2:3*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
?
save/Assign_4Assignbeta1_power_1save/RestoreV2:4*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking(*
validate_shape(
?
save/Assign_5Assignbeta1_power_2save/RestoreV2:5*
T0*
_class
loc:@log_ent_coef*
use_locking(*
validate_shape(
?
save/Assign_6Assignbeta2_powersave/RestoreV2:6*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
?
save/Assign_7Assignbeta2_power_1save/RestoreV2:7*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking(*
validate_shape(
?
save/Assign_8Assignbeta2_power_2save/RestoreV2:8*
T0*
_class
loc:@log_ent_coef*
use_locking(*
validate_shape(
?
save/Assign_9Assign&critic/q/q1_encoding/extrinsic_q1/biassave/RestoreV2:9*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking(*
validate_shape(
?
save/Assign_10Assign4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_optsave/RestoreV2:10*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking(*
validate_shape(
?
save/Assign_11Assign6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1save/RestoreV2:11*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_locking(*
validate_shape(
?
save/Assign_12Assign(critic/q/q1_encoding/extrinsic_q1/kernelsave/RestoreV2:12*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
use_locking(*
validate_shape(
?
save/Assign_13Assign6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_optsave/RestoreV2:13*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
use_locking(*
validate_shape(
?
save/Assign_14Assign8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1save/RestoreV2:14*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
use_locking(*
validate_shape(
?
save/Assign_15Assign-critic/q/q1_encoding/q1_encoder/hidden_0/biassave/RestoreV2:15*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_16Assign;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_optsave/RestoreV2:16*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_17Assign=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1save/RestoreV2:17*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_18Assign/critic/q/q1_encoding/q1_encoder/hidden_0/kernelsave/RestoreV2:18*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_19Assign=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_optsave/RestoreV2:19*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_20Assign?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1save/RestoreV2:20*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_21Assign-critic/q/q1_encoding/q1_encoder/hidden_1/biassave/RestoreV2:21*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_22Assign;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_optsave/RestoreV2:22*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_23Assign=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1save/RestoreV2:23*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_24Assign/critic/q/q1_encoding/q1_encoder/hidden_1/kernelsave/RestoreV2:24*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_25Assign=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_optsave/RestoreV2:25*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_26Assign?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1save/RestoreV2:26*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_27Assign&critic/q/q2_encoding/extrinsic_q2/biassave/RestoreV2:27*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
use_locking(*
validate_shape(
?
save/Assign_28Assign4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_optsave/RestoreV2:28*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
use_locking(*
validate_shape(
?
save/Assign_29Assign6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1save/RestoreV2:29*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
use_locking(*
validate_shape(
?
save/Assign_30Assign(critic/q/q2_encoding/extrinsic_q2/kernelsave/RestoreV2:30*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
use_locking(*
validate_shape(
?
save/Assign_31Assign6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_optsave/RestoreV2:31*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
use_locking(*
validate_shape(
?
save/Assign_32Assign8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1save/RestoreV2:32*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
use_locking(*
validate_shape(
?
save/Assign_33Assign-critic/q/q2_encoding/q2_encoder/hidden_0/biassave/RestoreV2:33*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_34Assign;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_optsave/RestoreV2:34*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_35Assign=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1save/RestoreV2:35*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_36Assign/critic/q/q2_encoding/q2_encoder/hidden_0/kernelsave/RestoreV2:36*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_37Assign=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_optsave/RestoreV2:37*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_38Assign?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1save/RestoreV2:38*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_39Assign-critic/q/q2_encoding/q2_encoder/hidden_1/biassave/RestoreV2:39*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_40Assign;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_optsave/RestoreV2:40*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_41Assign=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1save/RestoreV2:41*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_42Assign/critic/q/q2_encoding/q2_encoder/hidden_1/kernelsave/RestoreV2:42*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_43Assign=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_optsave/RestoreV2:43*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_44Assign?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1save/RestoreV2:44*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_45Assign"critic/value/encoder/hidden_0/biassave/RestoreV2:45*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_46Assign0critic/value/encoder/hidden_0/bias/sac_value_optsave/RestoreV2:46*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_47Assign2critic/value/encoder/hidden_0/bias/sac_value_opt_1save/RestoreV2:47*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_48Assign$critic/value/encoder/hidden_0/kernelsave/RestoreV2:48*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_49Assign2critic/value/encoder/hidden_0/kernel/sac_value_optsave/RestoreV2:49*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_50Assign4critic/value/encoder/hidden_0/kernel/sac_value_opt_1save/RestoreV2:50*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_51Assign"critic/value/encoder/hidden_1/biassave/RestoreV2:51*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_52Assign0critic/value/encoder/hidden_1/bias/sac_value_optsave/RestoreV2:52*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_53Assign2critic/value/encoder/hidden_1/bias/sac_value_opt_1save/RestoreV2:53*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_54Assign$critic/value/encoder/hidden_1/kernelsave/RestoreV2:54*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_55Assign2critic/value/encoder/hidden_1/kernel/sac_value_optsave/RestoreV2:55*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_56Assign4critic/value/encoder/hidden_1/kernel/sac_value_opt_1save/RestoreV2:56*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_57Assign!critic/value/extrinsic_value/biassave/RestoreV2:57*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
use_locking(*
validate_shape(
?
save/Assign_58Assign/critic/value/extrinsic_value/bias/sac_value_optsave/RestoreV2:58*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
use_locking(*
validate_shape(
?
save/Assign_59Assign1critic/value/extrinsic_value/bias/sac_value_opt_1save/RestoreV2:59*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
use_locking(*
validate_shape(
?
save/Assign_60Assign#critic/value/extrinsic_value/kernelsave/RestoreV2:60*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
use_locking(*
validate_shape(
?
save/Assign_61Assign1critic/value/extrinsic_value/kernel/sac_value_optsave/RestoreV2:61*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
use_locking(*
validate_shape(
?
save/Assign_62Assign3critic/value/extrinsic_value/kernel/sac_value_opt_1save/RestoreV2:62*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
use_locking(*
validate_shape(
?
save/Assign_63Assignglobal_stepsave/RestoreV2:63*
T0*
_class
loc:@global_step*
use_locking(*
validate_shape(
?
save/Assign_64Assignis_continuous_controlsave/RestoreV2:64*
T0*(
_class
loc:@is_continuous_control*
use_locking(*
validate_shape(
?
save/Assign_65Assignlog_ent_coefsave/RestoreV2:65*
T0*
_class
loc:@log_ent_coef*
use_locking(*
validate_shape(
?
save/Assign_66Assignlog_ent_coef/sac_entropy_optsave/RestoreV2:66*
T0*
_class
loc:@log_ent_coef*
use_locking(*
validate_shape(
?
save/Assign_67Assignlog_ent_coef/sac_entropy_opt_1save/RestoreV2:67*
T0*
_class
loc:@log_ent_coef*
use_locking(*
validate_shape(
?
save/Assign_68Assignmemory_sizesave/RestoreV2:68*
T0*
_class
loc:@memory_size*
use_locking(*
validate_shape(
?
save/Assign_69Assignpolicy/dense/kernelsave/RestoreV2:69*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
?
save/Assign_70Assign"policy/dense/kernel/sac_policy_optsave/RestoreV2:70*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
?
save/Assign_71Assign$policy/dense/kernel/sac_policy_opt_1save/RestoreV2:71*
T0*&
_class
loc:@policy/dense/kernel*
use_locking(*
validate_shape(
?
save/Assign_72Assign!policy/main_graph_0/hidden_0/biassave/RestoreV2:72*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_73Assign0policy/main_graph_0/hidden_0/bias/sac_policy_optsave/RestoreV2:73*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_74Assign2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1save/RestoreV2:74*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_75Assign#policy/main_graph_0/hidden_0/kernelsave/RestoreV2:75*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_76Assign2policy/main_graph_0/hidden_0/kernel/sac_policy_optsave/RestoreV2:76*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_77Assign4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1save/RestoreV2:77*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_78Assign!policy/main_graph_0/hidden_1/biassave/RestoreV2:78*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_79Assign0policy/main_graph_0/hidden_1/bias/sac_policy_optsave/RestoreV2:79*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_80Assign2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1save/RestoreV2:80*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_81Assign#policy/main_graph_0/hidden_1/kernelsave/RestoreV2:81*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_82Assign2policy/main_graph_0/hidden_1/kernel/sac_policy_optsave/RestoreV2:82*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_83Assign4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1save/RestoreV2:83*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_84Assign1target_network/critic/value/encoder/hidden_0/biassave/RestoreV2:84*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
use_locking(*
validate_shape(
?
save/Assign_85Assign3target_network/critic/value/encoder/hidden_0/kernelsave/RestoreV2:85*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
use_locking(*
validate_shape(
?
save/Assign_86Assign1target_network/critic/value/encoder/hidden_1/biassave/RestoreV2:86*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
use_locking(*
validate_shape(
?
save/Assign_87Assign3target_network/critic/value/encoder/hidden_1/kernelsave/RestoreV2:87*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
use_locking(*
validate_shape(
?
save/Assign_88Assign0target_network/critic/value/extrinsic_value/biassave/RestoreV2:88*
T0*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
use_locking(*
validate_shape(
?
save/Assign_89Assign2target_network/critic/value/extrinsic_value/kernelsave/RestoreV2:89*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
use_locking(*
validate_shape(
?
save/Assign_90Assigntrainer_major_versionsave/RestoreV2:90*
T0*(
_class
loc:@trainer_major_version*
use_locking(*
validate_shape(
?
save/Assign_91Assigntrainer_minor_versionsave/RestoreV2:91*
T0*(
_class
loc:@trainer_minor_version*
use_locking(*
validate_shape(
?
save/Assign_92Assigntrainer_patch_versionsave/RestoreV2:92*
T0*(
_class
loc:@trainer_patch_version*
use_locking(*
validate_shape(
?
save/Assign_93Assignversion_numbersave/RestoreV2:93*
T0*!
_class
loc:@version_number*
use_locking(*
validate_shape(
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93
?&
init_1NoOp^Variable/Assign^Variable_1/Assign^action_output_shape/Assign^beta1_power/Assign^beta1_power_1/Assign^beta1_power_2/Assign^beta2_power/Assign^beta2_power_1/Assign^beta2_power_2/Assign.^critic/q/q1_encoding/extrinsic_q1/bias/Assign<^critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt/Assign>^critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1/Assign0^critic/q/q1_encoding/extrinsic_q1/kernel/Assign>^critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/Assign@^critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/Assign5^critic/q/q1_encoding/q1_encoder/hidden_0/bias/AssignC^critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt/AssignE^critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/Assign7^critic/q/q1_encoding/q1_encoder/hidden_0/kernel/AssignE^critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/AssignG^critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Assign5^critic/q/q1_encoding/q1_encoder/hidden_1/bias/AssignC^critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt/AssignE^critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/Assign7^critic/q/q1_encoding/q1_encoder/hidden_1/kernel/AssignE^critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/AssignG^critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Assign.^critic/q/q2_encoding/extrinsic_q2/bias/Assign<^critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt/Assign>^critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1/Assign0^critic/q/q2_encoding/extrinsic_q2/kernel/Assign>^critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/Assign@^critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/Assign5^critic/q/q2_encoding/q2_encoder/hidden_0/bias/AssignC^critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt/AssignE^critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/Assign7^critic/q/q2_encoding/q2_encoder/hidden_0/kernel/AssignE^critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/AssignG^critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Assign5^critic/q/q2_encoding/q2_encoder/hidden_1/bias/AssignC^critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt/AssignE^critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/Assign7^critic/q/q2_encoding/q2_encoder/hidden_1/kernel/AssignE^critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/AssignG^critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Assign*^critic/value/encoder/hidden_0/bias/Assign8^critic/value/encoder/hidden_0/bias/sac_value_opt/Assign:^critic/value/encoder/hidden_0/bias/sac_value_opt_1/Assign,^critic/value/encoder/hidden_0/kernel/Assign:^critic/value/encoder/hidden_0/kernel/sac_value_opt/Assign<^critic/value/encoder/hidden_0/kernel/sac_value_opt_1/Assign*^critic/value/encoder/hidden_1/bias/Assign8^critic/value/encoder/hidden_1/bias/sac_value_opt/Assign:^critic/value/encoder/hidden_1/bias/sac_value_opt_1/Assign,^critic/value/encoder/hidden_1/kernel/Assign:^critic/value/encoder/hidden_1/kernel/sac_value_opt/Assign<^critic/value/encoder/hidden_1/kernel/sac_value_opt_1/Assign)^critic/value/extrinsic_value/bias/Assign7^critic/value/extrinsic_value/bias/sac_value_opt/Assign9^critic/value/extrinsic_value/bias/sac_value_opt_1/Assign+^critic/value/extrinsic_value/kernel/Assign9^critic/value/extrinsic_value/kernel/sac_value_opt/Assign;^critic/value/extrinsic_value/kernel/sac_value_opt_1/Assign^global_step/Assign^is_continuous_control/Assign^log_ent_coef/Assign$^log_ent_coef/sac_entropy_opt/Assign&^log_ent_coef/sac_entropy_opt_1/Assign^memory_size/Assign^policy/dense/kernel/Assign*^policy/dense/kernel/sac_policy_opt/Assign,^policy/dense/kernel/sac_policy_opt_1/Assign)^policy/main_graph_0/hidden_0/bias/Assign8^policy/main_graph_0/hidden_0/bias/sac_policy_opt/Assign:^policy/main_graph_0/hidden_0/bias/sac_policy_opt_1/Assign+^policy/main_graph_0/hidden_0/kernel/Assign:^policy/main_graph_0/hidden_0/kernel/sac_policy_opt/Assign<^policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Assign)^policy/main_graph_0/hidden_1/bias/Assign8^policy/main_graph_0/hidden_1/bias/sac_policy_opt/Assign:^policy/main_graph_0/hidden_1/bias/sac_policy_opt_1/Assign+^policy/main_graph_0/hidden_1/kernel/Assign:^policy/main_graph_0/hidden_1/kernel/sac_policy_opt/Assign<^policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Assign9^target_network/critic/value/encoder/hidden_0/bias/Assign;^target_network/critic/value/encoder/hidden_0/kernel/Assign9^target_network/critic/value/encoder/hidden_1/bias/Assign;^target_network/critic/value/encoder/hidden_1/kernel/Assign8^target_network/critic/value/extrinsic_value/bias/Assign:^target_network/critic/value/extrinsic_value/kernel/Assign^trainer_major_version/Assign^trainer_minor_version/Assign^trainer_patch_version/Assign^version_number/Assign"?