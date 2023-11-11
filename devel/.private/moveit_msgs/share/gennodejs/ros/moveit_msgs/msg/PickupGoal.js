// Auto-generated. Do not edit!

// (in-package moveit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Grasp = require('./Grasp.js');
let Constraints = require('./Constraints.js');
let PlanningOptions = require('./PlanningOptions.js');

//-----------------------------------------------------------

class PickupGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_name = null;
      this.group_name = null;
      this.end_effector = null;
      this.possible_grasps = null;
      this.support_surface_name = null;
      this.allow_gripper_support_collision = null;
      this.attached_object_touch_links = null;
      this.minimize_object_distance = null;
      this.path_constraints = null;
      this.planner_id = null;
      this.allowed_touch_objects = null;
      this.allowed_planning_time = null;
      this.planning_options = null;
    }
    else {
      if (initObj.hasOwnProperty('target_name')) {
        this.target_name = initObj.target_name
      }
      else {
        this.target_name = '';
      }
      if (initObj.hasOwnProperty('group_name')) {
        this.group_name = initObj.group_name
      }
      else {
        this.group_name = '';
      }
      if (initObj.hasOwnProperty('end_effector')) {
        this.end_effector = initObj.end_effector
      }
      else {
        this.end_effector = '';
      }
      if (initObj.hasOwnProperty('possible_grasps')) {
        this.possible_grasps = initObj.possible_grasps
      }
      else {
        this.possible_grasps = [];
      }
      if (initObj.hasOwnProperty('support_surface_name')) {
        this.support_surface_name = initObj.support_surface_name
      }
      else {
        this.support_surface_name = '';
      }
      if (initObj.hasOwnProperty('allow_gripper_support_collision')) {
        this.allow_gripper_support_collision = initObj.allow_gripper_support_collision
      }
      else {
        this.allow_gripper_support_collision = false;
      }
      if (initObj.hasOwnProperty('attached_object_touch_links')) {
        this.attached_object_touch_links = initObj.attached_object_touch_links
      }
      else {
        this.attached_object_touch_links = [];
      }
      if (initObj.hasOwnProperty('minimize_object_distance')) {
        this.minimize_object_distance = initObj.minimize_object_distance
      }
      else {
        this.minimize_object_distance = false;
      }
      if (initObj.hasOwnProperty('path_constraints')) {
        this.path_constraints = initObj.path_constraints
      }
      else {
        this.path_constraints = new Constraints();
      }
      if (initObj.hasOwnProperty('planner_id')) {
        this.planner_id = initObj.planner_id
      }
      else {
        this.planner_id = '';
      }
      if (initObj.hasOwnProperty('allowed_touch_objects')) {
        this.allowed_touch_objects = initObj.allowed_touch_objects
      }
      else {
        this.allowed_touch_objects = [];
      }
      if (initObj.hasOwnProperty('allowed_planning_time')) {
        this.allowed_planning_time = initObj.allowed_planning_time
      }
      else {
        this.allowed_planning_time = 0.0;
      }
      if (initObj.hasOwnProperty('planning_options')) {
        this.planning_options = initObj.planning_options
      }
      else {
        this.planning_options = new PlanningOptions();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickupGoal
    // Serialize message field [target_name]
    bufferOffset = _serializer.string(obj.target_name, buffer, bufferOffset);
    // Serialize message field [group_name]
    bufferOffset = _serializer.string(obj.group_name, buffer, bufferOffset);
    // Serialize message field [end_effector]
    bufferOffset = _serializer.string(obj.end_effector, buffer, bufferOffset);
    // Serialize message field [possible_grasps]
    // Serialize the length for message field [possible_grasps]
    bufferOffset = _serializer.uint32(obj.possible_grasps.length, buffer, bufferOffset);
    obj.possible_grasps.forEach((val) => {
      bufferOffset = Grasp.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [support_surface_name]
    bufferOffset = _serializer.string(obj.support_surface_name, buffer, bufferOffset);
    // Serialize message field [allow_gripper_support_collision]
    bufferOffset = _serializer.bool(obj.allow_gripper_support_collision, buffer, bufferOffset);
    // Serialize message field [attached_object_touch_links]
    bufferOffset = _arraySerializer.string(obj.attached_object_touch_links, buffer, bufferOffset, null);
    // Serialize message field [minimize_object_distance]
    bufferOffset = _serializer.bool(obj.minimize_object_distance, buffer, bufferOffset);
    // Serialize message field [path_constraints]
    bufferOffset = Constraints.serialize(obj.path_constraints, buffer, bufferOffset);
    // Serialize message field [planner_id]
    bufferOffset = _serializer.string(obj.planner_id, buffer, bufferOffset);
    // Serialize message field [allowed_touch_objects]
    bufferOffset = _arraySerializer.string(obj.allowed_touch_objects, buffer, bufferOffset, null);
    // Serialize message field [allowed_planning_time]
    bufferOffset = _serializer.float64(obj.allowed_planning_time, buffer, bufferOffset);
    // Serialize message field [planning_options]
    bufferOffset = PlanningOptions.serialize(obj.planning_options, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickupGoal
    let len;
    let data = new PickupGoal(null);
    // Deserialize message field [target_name]
    data.target_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [group_name]
    data.group_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_effector]
    data.end_effector = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [possible_grasps]
    // Deserialize array length for message field [possible_grasps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.possible_grasps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.possible_grasps[i] = Grasp.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [support_surface_name]
    data.support_surface_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [allow_gripper_support_collision]
    data.allow_gripper_support_collision = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [attached_object_touch_links]
    data.attached_object_touch_links = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [minimize_object_distance]
    data.minimize_object_distance = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [path_constraints]
    data.path_constraints = Constraints.deserialize(buffer, bufferOffset);
    // Deserialize message field [planner_id]
    data.planner_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [allowed_touch_objects]
    data.allowed_touch_objects = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [allowed_planning_time]
    data.allowed_planning_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [planning_options]
    data.planning_options = PlanningOptions.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.target_name);
    length += _getByteLength(object.group_name);
    length += _getByteLength(object.end_effector);
    object.possible_grasps.forEach((val) => {
      length += Grasp.getMessageSize(val);
    });
    length += _getByteLength(object.support_surface_name);
    object.attached_object_touch_links.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += Constraints.getMessageSize(object.path_constraints);
    length += _getByteLength(object.planner_id);
    object.allowed_touch_objects.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += PlanningOptions.getMessageSize(object.planning_options);
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'moveit_msgs/PickupGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a71f6f9bc6e640594ce6a411ccfe764';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # An action for picking up an object
    
    # The name of the object to pick up (as known in the planning scene)
    string target_name
    
    # which group should be used to plan for pickup
    string group_name
    
    # which end-effector to be used for pickup (ideally descending from the group above)
    string end_effector
    
    # a list of possible grasps to be used. At least one grasp must be filled in
    Grasp[] possible_grasps
    
    # the name that the support surface (e.g. table) has in the collision map
    # can be left empty if no name is available
    string support_surface_name
    
    # whether collisions between the gripper and the support surface should be acceptable
    # during move from pre-grasp to grasp and during lift. Collisions when moving to the
    # pre-grasp location are still not allowed even if this is set to true.
    bool allow_gripper_support_collision
    
    # The names of the links the object to be attached is allowed to touch;
    # If this is left empty, it defaults to the links in the used end-effector
    string[] attached_object_touch_links
    
    # Optionally notify the pick action that it should approach the object further,
    # as much as possible (this minimizing the distance to the object before the grasp)
    # along the approach direction; Note: this option changes the grasping poses
    # supplied in possible_grasps[] such that they are closer to the object when possible.
    bool minimize_object_distance
    
    # Optional constraints to be imposed on every point in the motion plan
    Constraints path_constraints
    
    # The name of the motion planner to use. If no name is specified,
    # a default motion planner will be used
    string planner_id
    
    # an optional list of obstacles that we have semantic information about
    # and that can be touched/pushed/moved in the course of grasping
    string[] allowed_touch_objects
    
    # The maximum amount of time the motion planner is allowed to plan for
    float64 allowed_planning_time
    
    # Planning options
    PlanningOptions planning_options
    
    
    ================================================================================
    MSG: moveit_msgs/Grasp
    # This message contains a description of a grasp that would be used
    # with a particular end-effector to grasp an object, including how to
    # approach it, grip it, etc.  This message does not contain any
    # information about a "grasp point" (a position ON the object).
    # Whatever generates this message should have already combined
    # information about grasp points with information about the geometry
    # of the end-effector to compute the grasp_pose in this message.
    
    # A name for this grasp
    string id
    
    # The internal posture of the hand for the pre-grasp
    # only positions are used
    trajectory_msgs/JointTrajectory pre_grasp_posture
    
    # The internal posture of the hand for the grasp
    # positions and efforts are used
    trajectory_msgs/JointTrajectory grasp_posture
    
    # The position of the end-effector for the grasp.  This is the pose of
    # the "parent_link" of the end-effector, not actually the pose of any
    # link *in* the end-effector.  Typically this would be the pose of the
    # most distal wrist link before the hand (end-effector) links began.
    geometry_msgs/PoseStamped grasp_pose
    
    # The estimated probability of success for this grasp, or some other
    # measure of how "good" it is.
    float64 grasp_quality
    
    # The approach direction to take before picking an object
    GripperTranslation pre_grasp_approach
    
    # The retreat direction to take after a grasp has been completed (object is attached)
    GripperTranslation post_grasp_retreat
    
    # The retreat motion to perform when releasing the object; this information
    # is not necessary for the grasp itself, but when releasing the object,
    # the information will be necessary. The grasp used to perform a pickup
    # is returned as part of the result, so this information is available for
    # later use.
    GripperTranslation post_place_retreat
    
    # the maximum contact force to use while grasping (<=0 to disable)
    float32 max_contact_force
    
    # an optional list of obstacles that we have semantic information about
    # and that can be touched/pushed/moved in the course of grasping
    string[] allowed_touch_objects
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: moveit_msgs/GripperTranslation
    # defines a translation for the gripper, used in pickup or place tasks
    # for example for lifting an object off a table or approaching the table for placing
    
    # the direction of the translation
    geometry_msgs/Vector3Stamped direction
    
    # the desired translation distance
    float32 desired_distance
    
    # the min distance that must be considered feasible before the
    # grasp is even attempted
    float32 min_distance
    
    ================================================================================
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: moveit_msgs/Constraints
    # This message contains a list of motion planning constraints.
    # All constraints must be satisfied for a goal to be considered valid
    
    string name
    
    JointConstraint[] joint_constraints
    
    PositionConstraint[] position_constraints
    
    OrientationConstraint[] orientation_constraints
    
    VisibilityConstraint[] visibility_constraints
    
    ================================================================================
    MSG: moveit_msgs/JointConstraint
    # Constrain the position of a joint to be within a certain bound
    string joint_name
    
    # the bound to be achieved is [position - tolerance_below, position + tolerance_above]
    float64 position
    float64 tolerance_above
    float64 tolerance_below
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    ================================================================================
    MSG: moveit_msgs/PositionConstraint
    # This message contains the definition of a position constraint.
    
    Header header
    
    # The robot link this constraint refers to
    string link_name
    
    # The offset (in the link frame) for the target point on the link we are planning for
    geometry_msgs/Vector3 target_point_offset
    
    # The volume this constraint refers to
    BoundingVolume constraint_region
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    ================================================================================
    MSG: moveit_msgs/BoundingVolume
    # Define a volume in 3D
    
    # A set of solid geometric primitives that make up the volume to define (as a union)
    shape_msgs/SolidPrimitive[] primitives
    
    # The poses at which the primitives are located
    geometry_msgs/Pose[] primitive_poses
    
    # In addition to primitives, meshes can be specified to add to the bounding volume (again, as union)
    shape_msgs/Mesh[] meshes
    
    # The poses at which the meshes are located
    geometry_msgs/Pose[] mesh_poses
    
    ================================================================================
    MSG: shape_msgs/SolidPrimitive
    # Define box, sphere, cylinder, cone 
    # All shapes are defined to have their bounding boxes centered around 0,0,0.
    
    uint8 BOX=1
    uint8 SPHERE=2
    uint8 CYLINDER=3
    uint8 CONE=4
    
    # The type of the shape
    uint8 type
    
    
    # The dimensions of the shape
    float64[] dimensions
    
    # The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array
    
    # For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
    # sides of the box.
    uint8 BOX_X=0
    uint8 BOX_Y=1
    uint8 BOX_Z=2
    
    
    # For the SPHERE type, only one component is used, and it gives the radius of
    # the sphere.
    uint8 SPHERE_RADIUS=0
    
    
    # For the CYLINDER and CONE types, the center line is oriented along
    # the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
    # of dimensions gives the height of the cylinder (cone).  The
    # CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
    # radius of the base of the cylinder (cone).  Cone and cylinder
    # primitives are defined to be circular. The tip of the cone is
    # pointing up, along +Z axis.
    
    uint8 CYLINDER_HEIGHT=0
    uint8 CYLINDER_RADIUS=1
    
    uint8 CONE_HEIGHT=0
    uint8 CONE_RADIUS=1
    
    ================================================================================
    MSG: shape_msgs/Mesh
    # Definition of a mesh
    
    # list of triangles; the index values refer to positions in vertices[]
    MeshTriangle[] triangles
    
    # the actual vertices that make up the mesh
    geometry_msgs/Point[] vertices
    
    ================================================================================
    MSG: shape_msgs/MeshTriangle
    # Definition of a triangle's vertices
    uint32[3] vertex_indices
    
    ================================================================================
    MSG: moveit_msgs/OrientationConstraint
    # This message contains the definition of an orientation constraint.
    
    Header header
    
    # The desired orientation of the robot link specified as a quaternion
    geometry_msgs/Quaternion orientation
    
    # The robot link this constraint refers to
    string link_name
    
    # Tolerance on the three vector components of the orientation error (optional)
    float64 absolute_x_axis_tolerance
    float64 absolute_y_axis_tolerance
    float64 absolute_z_axis_tolerance
    
    # Defines how the orientation error is calculated
    # The error is compared to the tolerance defined above
    uint8 parameterization
    
    # The different options for the orientation error parameterization
    # - Intrinsic xyz Euler angles (default value)
    uint8 XYZ_EULER_ANGLES=0
    # - A rotation vector. This is similar to the angle-axis representation,
    # but the magnitude of the vector represents the rotation angle.
    uint8 ROTATION_VECTOR=1
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    ================================================================================
    MSG: moveit_msgs/VisibilityConstraint
    # The constraint is useful to maintain visibility to a disc (the target) in a particular frame.
    # This disc forms the base of a visibiliy cone whose tip is at the origin of the sensor.
    # Maintaining visibility is done by ensuring the robot does not obstruct the visibility cone.
    # Note:
    # This constraint does NOT enforce minimum or maximum distances between the sensor
    # and the target, nor does it enforce the target to be in the field of view of
    # the sensor. A PositionConstraint can (and probably should) be used for such purposes.
    
    # The radius of the disc that should be maintained visible
    float64 target_radius
    
    # The pose of the disc; as the robot moves, the pose of the disc may change as well
    # This can be in the frame of a particular robot link, for example
    geometry_msgs/PoseStamped target_pose
    
    # From the sensor origin towards the target, the disc forms a visibility cone
    # This cone is approximated using many sides. For example, when using 4 sides,
    # that in fact makes the visibility region be a pyramid.
    # This value should always be 3 or more.
    int32 cone_sides
    
    # The pose in which visibility is to be maintained.
    # The frame id should represent the robot link to which the sensor is attached.
    # It is assumed the sensor can look directly at the target, in any direction.
    # This assumption is usually not true, but additional PositionConstraints
    # can resolve this issue.
    geometry_msgs/PoseStamped sensor_pose
    
    # Even though the disc is maintained visible, the visibility cone can be very small
    # because of the orientation of the disc with respect to the sensor. It is possible
    # for example to view the disk almost from a side, in which case the visibility cone
    # can end up having close to 0 volume. The view angle is defined to be the angle between
    # the normal to the visibility disc and the direction vector from the sensor origin.
    # The value below represents the minimum desired view angle. For a perfect view,
    # this value will be 0 (the two vectors are exact opposites). For a completely obstructed view
    # this value will be Pi/2 (the vectors are perpendicular). This value defined below
    # is the maximum view angle to be maintained. This should be a value in the open interval
    # (0, Pi/2). If 0 is set, the view angle is NOT enforced.
    float64 max_view_angle
    
    # This angle is used similarly to max_view_angle but limits the maximum angle
    # between the sensor origin direction vector and the axis that connects the
    # sensor origin to the target frame origin. The value is again in the range (0, Pi/2)
    # and is NOT enforced if set to 0.
    float64 max_range_angle
    
    # The axis that is assumed to indicate the direction of view for the sensor
    # X = 2, Y = 1, Z = 0
    uint8 SENSOR_Z=0
    uint8 SENSOR_Y=1
    uint8 SENSOR_X=2
    uint8 sensor_view_direction
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    ================================================================================
    MSG: moveit_msgs/PlanningOptions
    
    # The diff to consider for the planning scene (optional)
    PlanningScene planning_scene_diff
    
    # If this flag is set to true, the action
    # returns an executable plan in the response but does not attempt execution
    bool plan_only
    
    # If this flag is set to true, the action of planning &
    # executing is allowed to look around  (move sensors) if
    # it seems that not enough information is available about
    # the environment
    bool look_around
    
    # If this value is positive, the action of planning & executing
    # is allowed to look around for a maximum number of attempts;
    # If the value is left as 0, the default value is used, as set
    # with dynamic_reconfigure
    int32 look_around_attempts
    
    # If set and if look_around is true, this value is used as
    # the maximum cost allowed for a path to be considered executable.
    # If the cost of a path is higher than this value, more sensing or
    # a new plan needed. If left as 0.0 but look_around is true, then
    # the default value set via dynamic_reconfigure is used
    float64 max_safe_execution_cost
    
    # If the plan becomes invalidated during execution, it is possible to have
    # that plan recomputed and execution restarted. This flag enables this
    # functionality
    bool replan
    
    # The maximum number of replanning attempts
    int32 replan_attempts
    
    # The amount of time to wait in between replanning attempts (in seconds)
    float64 replan_delay
    
    ================================================================================
    MSG: moveit_msgs/PlanningScene
    # name of planning scene
    string name
    
    # full robot state
    RobotState robot_state
    
    # The name of the robot model this scene is for
    string robot_model_name
    
    #additional frames for duplicating tf (with respect to the planning frame)
    geometry_msgs/TransformStamped[] fixed_frame_transforms
    
    #full allowed collision matrix
    AllowedCollisionMatrix allowed_collision_matrix
    
    # all link paddings
    LinkPadding[] link_padding
    
    # all link scales
    LinkScale[] link_scale
    
    # Attached objects, collision objects, even the octomap or collision map can have
    # colors associated to them. This array specifies them.
    ObjectColor[] object_colors
    
    # the collision map
    PlanningSceneWorld world
    
    # Flag indicating whether this scene is to be interpreted as a diff with respect to some other scene
    bool is_diff
    
    ================================================================================
    MSG: moveit_msgs/RobotState
    # This message contains information about the robot state, i.e. the positions of its joints and links
    sensor_msgs/JointState joint_state
    
    # Joints that may have multiple DOF are specified here
    sensor_msgs/MultiDOFJointState multi_dof_joint_state
    
    # Attached collision objects (attached to some link on the robot)
    AttachedCollisionObject[] attached_collision_objects
    
    # Flag indicating whether this scene is to be interpreted as a diff with respect to some other scene
    # This is mostly important for handling the attached bodies (whether or not to clear the attached bodies
    # of a moveit::core::RobotState before updating it with this message)
    bool is_diff
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
    ================================================================================
    MSG: sensor_msgs/MultiDOFJointState
    # Representation of state for joints with multiple degrees of freedom, 
    # following the structure of JointState.
    #
    # It is assumed that a joint in a system corresponds to a transform that gets applied 
    # along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)
    # and those 3DOF can be expressed as a transformation matrix, and that transformation
    # matrix can be converted back to (x, y, yaw)
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # wrench associated with them, you can leave the wrench array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    Header header
    
    string[] joint_names
    geometry_msgs/Transform[] transforms
    geometry_msgs/Twist[] twist
    geometry_msgs/Wrench[] wrench
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
    ================================================================================
    MSG: moveit_msgs/AttachedCollisionObject
    # The CollisionObject will be attached with a fixed joint to this link
    string link_name
    
    #This contains the actual shapes and poses for the CollisionObject
    #to be attached to the link
    #If action is remove and no object.id is set, all objects
    #attached to the link indicated by link_name will be removed
    CollisionObject object
    
    # The set of links that the attached objects are allowed to touch
    # by default - the link_name is already considered by default
    string[] touch_links
    
    # If certain links were placed in a particular posture for this object to remain attached
    # (e.g., an end effector closing around an object), the posture necessary for releasing
    # the object is stored here
    trajectory_msgs/JointTrajectory detach_posture
    
    # The weight of the attached object, if known
    float64 weight
    
    ================================================================================
    MSG: moveit_msgs/CollisionObject
    # A header, used for interpreting the poses
    Header header
    
    # The object's pose relative to the header frame.
    # The shapes and subframe poses are defined relative to this pose.
    geometry_msgs/Pose pose
    
    # The id of the object (name used in MoveIt)
    string id
    
    # The object type in a database of known objects
    object_recognition_msgs/ObjectType type
    
    # The collision geometries associated with the object.
    # Their poses are with respect to the object's pose
    
    # Solid geometric primitives
    shape_msgs/SolidPrimitive[] primitives
    geometry_msgs/Pose[] primitive_poses
    
    # Meshes
    shape_msgs/Mesh[] meshes
    geometry_msgs/Pose[] mesh_poses
    
    # Bounding planes (equation is specified, but the plane can be oriented using an additional pose)
    shape_msgs/Plane[] planes
    geometry_msgs/Pose[] plane_poses
    
    # Named subframes on the object. Use these to define points of interest on the object that you want
    # to plan with (e.g. "tip", "spout", "handle"). The id of the object will be prepended to the subframe.
    # If an object with the id "screwdriver" and a subframe "tip" is in the scene, you can use the frame
    # "screwdriver/tip" for planning.
    # The length of the subframe_names and subframe_poses has to be identical.
    string[] subframe_names
    geometry_msgs/Pose[] subframe_poses
    
    # Adds the object to the planning scene. If the object previously existed, it is replaced.
    byte ADD=0
    
    # Removes the object from the environment entirely (everything that matches the specified id)
    byte REMOVE=1
    
    # Append to an object that already exists in the planning scene. If the object does not exist, it is added.
    byte APPEND=2
    
    # If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)
    # if solely moving the object is desired
    byte MOVE=3
    
    # Operation to be performed
    byte operation
    
    ================================================================================
    MSG: object_recognition_msgs/ObjectType
    ################################################## OBJECT ID #########################################################
    
    # Contains information about the type of a found object. Those two sets of parameters together uniquely define an
    # object
    
    # The key of the found object: the unique identifier in the given db
    string key
    
    # The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding
    # database. E.g., in object_recognition, it can look like: "{'type':'CouchDB', 'root':'http://localhost'}"
    # There is no conventional format for those parameters and it's nice to keep that flexibility.
    # The object_recognition_core as a generic DB type that can read those fields
    # Current examples:
    # For CouchDB:
    #   type: 'CouchDB'
    #   root: 'http://localhost:5984'
    #   collection: 'object_recognition'
    # For SQL household database:
    #   type: 'SqlHousehold'
    #   host: 'wgs36'
    #   port: 5432
    #   user: 'willow'
    #   password: 'willow'
    #   name: 'household_objects'
    #   module: 'tabletop'
    string db
    
    ================================================================================
    MSG: shape_msgs/Plane
    # Representation of a plane, using the plane equation ax + by + cz + d = 0
    
    # a := coef[0]
    # b := coef[1]
    # c := coef[2]
    # d := coef[3]
    
    float64[4] coef
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
    ================================================================================
    MSG: moveit_msgs/AllowedCollisionMatrix
    # The list of entry names in the matrix
    string[] entry_names
    
    # The individual entries in the allowed collision matrix
    # square, symmetric, with same order as entry_names
    AllowedCollisionEntry[] entry_values
    
    # In addition to the collision matrix itself, we also have
    # the default entry value for each entry name.
    
    # If the allowed collision flag is queried for a pair of names (n1, n2)
    # that is not found in the collision matrix itself, the value of
    # the collision flag is considered to be that of the entry (n1 or n2)
    # specified in the list below. If both n1 and n2 are found in the list
    # of defaults, the result is computed with an AND operation
    
    string[] default_entry_names
    bool[] default_entry_values
    
    ================================================================================
    MSG: moveit_msgs/AllowedCollisionEntry
    # whether or not collision checking is enabled
    bool[] enabled
    
    ================================================================================
    MSG: moveit_msgs/LinkPadding
    #name for the link
    string link_name
    
    # padding to apply to the link
    float64 padding
    
    ================================================================================
    MSG: moveit_msgs/LinkScale
    #name for the link
    string link_name
    
    # scaling to apply to the link
    float64 scale
    
    ================================================================================
    MSG: moveit_msgs/ObjectColor
    # The object id for which we specify color
    string id
    
    # The value of the color
    std_msgs/ColorRGBA color
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    ================================================================================
    MSG: moveit_msgs/PlanningSceneWorld
    # collision objects
    CollisionObject[] collision_objects
    
    # The octomap that represents additional collision data
    octomap_msgs/OctomapWithPose octomap
    
    ================================================================================
    MSG: octomap_msgs/OctomapWithPose
    # A 3D map in binary format, as Octree
    Header header
    
    # The pose of the octree with respect to the header frame 
    geometry_msgs/Pose origin
    
    # The actual octree msg
    octomap_msgs/Octomap octomap
    
    ================================================================================
    MSG: octomap_msgs/Octomap
    # A 3D map in binary format, as Octree
    Header header
    
    # Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)
    bool binary
    
    # Class id of the contained octree 
    string id
    
    # Resolution (in m) of the smallest octree nodes
    float64 resolution
    
    # binary serialization of octree, use conversions.h to read and write octrees
    int8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PickupGoal(null);
    if (msg.target_name !== undefined) {
      resolved.target_name = msg.target_name;
    }
    else {
      resolved.target_name = ''
    }

    if (msg.group_name !== undefined) {
      resolved.group_name = msg.group_name;
    }
    else {
      resolved.group_name = ''
    }

    if (msg.end_effector !== undefined) {
      resolved.end_effector = msg.end_effector;
    }
    else {
      resolved.end_effector = ''
    }

    if (msg.possible_grasps !== undefined) {
      resolved.possible_grasps = new Array(msg.possible_grasps.length);
      for (let i = 0; i < resolved.possible_grasps.length; ++i) {
        resolved.possible_grasps[i] = Grasp.Resolve(msg.possible_grasps[i]);
      }
    }
    else {
      resolved.possible_grasps = []
    }

    if (msg.support_surface_name !== undefined) {
      resolved.support_surface_name = msg.support_surface_name;
    }
    else {
      resolved.support_surface_name = ''
    }

    if (msg.allow_gripper_support_collision !== undefined) {
      resolved.allow_gripper_support_collision = msg.allow_gripper_support_collision;
    }
    else {
      resolved.allow_gripper_support_collision = false
    }

    if (msg.attached_object_touch_links !== undefined) {
      resolved.attached_object_touch_links = msg.attached_object_touch_links;
    }
    else {
      resolved.attached_object_touch_links = []
    }

    if (msg.minimize_object_distance !== undefined) {
      resolved.minimize_object_distance = msg.minimize_object_distance;
    }
    else {
      resolved.minimize_object_distance = false
    }

    if (msg.path_constraints !== undefined) {
      resolved.path_constraints = Constraints.Resolve(msg.path_constraints)
    }
    else {
      resolved.path_constraints = new Constraints()
    }

    if (msg.planner_id !== undefined) {
      resolved.planner_id = msg.planner_id;
    }
    else {
      resolved.planner_id = ''
    }

    if (msg.allowed_touch_objects !== undefined) {
      resolved.allowed_touch_objects = msg.allowed_touch_objects;
    }
    else {
      resolved.allowed_touch_objects = []
    }

    if (msg.allowed_planning_time !== undefined) {
      resolved.allowed_planning_time = msg.allowed_planning_time;
    }
    else {
      resolved.allowed_planning_time = 0.0
    }

    if (msg.planning_options !== undefined) {
      resolved.planning_options = PlanningOptions.Resolve(msg.planning_options)
    }
    else {
      resolved.planning_options = new PlanningOptions()
    }

    return resolved;
    }
};

module.exports = PickupGoal;
