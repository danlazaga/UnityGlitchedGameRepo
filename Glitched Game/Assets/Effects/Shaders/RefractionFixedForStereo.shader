Shader "Shader Forge/RefractForStereo" {
Properties {
_Amplitude ("Amplitude", Range(0, 1)) = 0
_Frequency ("Frequency", Range(0, 100)) = 0
[HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
}
SubShader {
Tags {
"IgnoreProjector"="True"
"Queue"="Transparent"
"RenderType"="Transparent"
}
GrabPass{ }
Pass {
Name "FORWARD"
Tags {
"LightMode"="ForwardBase"
}
Blend SrcAlpha OneMinusSrcAlpha
ZWrite Off

CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#define UNITY_PASS_FORWARDBASE
#include "UnityCG.cginc"
#pragma multi_compile_fwdbase
#pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
#pragma target 3.0
uniform sampler2D _GrabTexture;
uniform float _Amplitude;
uniform float _Frequency;
struct VertexInput {
float4 vertex : POSITION;
float2 texcoord0 : TEXCOORD0;
};
struct VertexOutput {
float4 pos : SV_POSITION;
float2 uv0 : TEXCOORD0;
float4 screenPos : TEXCOORD1;
};
VertexOutput vert (VertexInput v) {
VertexOutput o = (VertexOutput)0;
o.uv0 = v.texcoord0;
o.pos = UnityObjectToClipPos(v.vertex );

#if UNITY_UV_STARTS_AT_TOP
float scale = -1.0;
#else
float scale = 1.0;
#endif
o.screenPos.xy = (float2(o.pos.x, o.pos.y*scale) + o.pos.w) * 0.5;
o.screenPos.zw = o.pos.zw;
return o;
}
float4 frag(VertexOutput i) : COLOR {
#if UNITY_SINGLE_PASS_STEREO
i.screenPos.xy = TransformStereoScreenSpaceTex(i.screenPos.xy, i.screenPos.w);
#endif
float node_4241 = (_Frequency*i.uv0.r);
float node_2277 = cos((node_4241*2.0+-1.0));
float2 sceneUVs = UNITY_PROJ_COORD(i.screenPos.xy) + float2(0.0,(node_2277*_Amplitude));
i.screenPos.xy = sceneUVs.xy;
float4 sceneColor = tex2Dproj(_GrabTexture, i.screenPos);
////// Lighting:
float3 finalColor = 0;
return fixed4(lerp(sceneColor.rgb, finalColor,0.0),1);
}
ENDCG
}
}
FallBack "Diffuse"
CustomEditor "ShaderForgeMaterialInspector"
}