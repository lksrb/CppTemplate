
-- Dependencies

VULKAN_SDK = os.getenv("VULKAN_SDK")

IncludeDir = {}
IncludeDir["glm"] =								"%{wks.location}/Dependencies/glm"
IncludeDir["spdlog"] = 							"%{wks.location}/Dependencies/spdlog/include"
IncludeDir["ImGui"] = 							"%{wks.location}/Dependencies/imgui"
IncludeDir["VulkanSDK"] =						"%{VULKAN_SDK}/Include"
IncludeDir["Assimp"] =							"%{wks.location}/Dependencies/assimp/include"
IncludeDir["entt"] =							"%{wks.location}/Dependencies/entt/include"
IncludeDir["stb"] =								"%{wks.location}/Dependencies/stb"
IncludeDir["JoltPhysics"] = 					"%{wks.location}/Dependencies/JoltPhysics/include"
IncludeDir["yaml_cpp"] = 						"%{wks.location}/Dependencies/yaml-cpp/include"

LibraryDir = {}
LibraryDir["VulkanSDK"] =						"%{VULKAN_SDK}/Lib"
LibraryDir["VulkanSDK_DLL"] =					"%{VULKAN_SDK}/Bin"
LibraryDir["Assimp_DebugDLL"] =					"%{wks.location}/Dependencies/assimp/bin/Debug"
LibraryDir["Assimp_ReleaseDLL"] =				"%{wks.location}/Dependencies/assimp/bin/Release"

Library = {}
Library["Assimp_Debug"] =						"%{wks.location}/Dependencies/assimp/bin/Debug/assimp-vc143-mtd.lib"
Library["Assimp_Release"] =						"%{wks.location}/Dependencies/assimp/bin/Release/assimp-vc143-mt.lib"

Library["Vulkan"] =								"%{LibraryDir.VulkanSDK}/vulkan-1.lib"
Library["VulkanUtils"] =						"%{LibraryDir.VulkanSDK}/VkLayer_utils.lib"

Library["ShaderC_Debug"] =						"%{LibraryDir.VulkanSDK}/shaderc_sharedd.lib"
Library["ShaderC_Release"] =					"%{LibraryDir.VulkanSDK}/shaderc_shared.lib"

Library["SPIRV_Cross_Debug"] =					"%{LibraryDir.VulkanSDK}/spirv-cross-cored.lib"
Library["SPIRV_Cross_Release"] =				"%{LibraryDir.VulkanSDK}/spirv-cross-core.lib"

Library["SPIRV_Cross_GLSL_Debug"] =				"%{LibraryDir.VulkanSDK}/spirv-cross-glsld.lib"
Library["SPIRV_Cross_GLSL_Release"]=			"%{LibraryDir.VulkanSDK}/spirv-cross-glsl.lib"

