FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/pr2_joint_trajectory_bridge/msg"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/pr2_joint_trajectory_bridge/JointTrajectoryPointBridge.h"
  "../msg_gen/cpp/include/pr2_joint_trajectory_bridge/JointTrajectoryBridge.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
