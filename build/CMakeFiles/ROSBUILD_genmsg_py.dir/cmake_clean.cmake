FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/pr2_joint_trajectory_bridge/msg"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/pr2_joint_trajectory_bridge/msg/__init__.py"
  "../src/pr2_joint_trajectory_bridge/msg/_JointTrajectoryPointBridge.py"
  "../src/pr2_joint_trajectory_bridge/msg/_JointTrajectoryBridge.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
