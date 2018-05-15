// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33129,y:33428,varname:node_2865,prsc:2|diff-4772-OUT,spec-3622-OUT,gloss-3584-OUT,normal-1139-RGB,emission-8597-OUT,difocc-5059-OUT,clip-7705-OUT;n:type:ShaderForge.SFN_Multiply,id:4772,x:30824,y:32335,varname:node_4772,prsc:2|A-6536-RGB,B-6453-OUT;n:type:ShaderForge.SFN_Tex2d,id:6536,x:30117,y:32207,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:61d687ff60e527f49836193096195ca8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:4596,x:31018,y:32667,ptovrint:False,ptlb:Metallic Intensity,ptin:_MetallicIntensity,varname:_MetallicIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Slider,id:3584,x:31011,y:32840,ptovrint:False,ptlb:Gloss Intensity,ptin:_GlossIntensity,varname:_GlossIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Fresnel,id:5629,x:29743,y:33312,varname:node_5629,prsc:2|EXP-6759-OUT;n:type:ShaderForge.SFN_Slider,id:6759,x:29149,y:33449,ptovrint:False,ptlb:FresnelValue,ptin:_FresnelValue,varname:_FresnelValue,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.920527,max:3;n:type:ShaderForge.SFN_Multiply,id:8516,x:30294,y:33495,varname:node_8516,prsc:2|A-3288-OUT,B-5629-OUT,C-2033-OUT,D-7742-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3288,x:29693,y:33070,ptovrint:False,ptlb:GlowToggle,ptin:_GlowToggle,varname:_GlowToggle,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7712-OUT,B-6069-OUT;n:type:ShaderForge.SFN_Vector1,id:7712,x:29205,y:33016,varname:node_7712,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6069,x:29205,y:33147,varname:node_6069,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:8709,x:29717,y:34025,ptovrint:False,ptlb:DamageColor,ptin:_DamageColor,varname:_DamageColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.1985294,c3:0.1985294,c4:1;n:type:ShaderForge.SFN_Color,id:4605,x:29717,y:34199,ptovrint:False,ptlb:StunColor,ptin:_StunColor,varname:_StunColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.988641,c2:1,c3:0.1764706,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:2033,x:29923,y:34096,ptovrint:False,ptlb:Damage or Stun,ptin:_DamageorStun,varname:_DamageorStun,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8709-RGB,B-4605-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:9741,x:29224,y:33945,ptovrint:False,ptlb:DamageNoiseTex,ptin:_DamageNoiseTex,varname:_DamageNoiseTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:8764,x:29245,y:33675,varname:node_8764,prsc:2,spu:0.5,spv:1|UVIN-2903-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2903,x:28947,y:33521,varname:node_2903,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:2250,x:29862,y:33789,varname:node_483,prsc:2,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False|UVIN-8764-UVOUT,TEX-9741-TEX;n:type:ShaderForge.SFN_Slider,id:9867,x:29384,y:33989,ptovrint:False,ptlb:NoiseIntensity,ptin:_NoiseIntensity,varname:_NoiseIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Multiply,id:7742,x:30361,y:33710,varname:node_7742,prsc:2|A-2250-R,B-9867-OUT;n:type:ShaderForge.SFN_Time,id:7497,x:28860,y:34076,varname:node_7497,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7244,x:29136,y:33848,varname:node_7244,prsc:2|A-7207-OUT,B-7497-T;n:type:ShaderForge.SFN_Slider,id:7207,x:28720,y:33798,ptovrint:False,ptlb:NoisePanSpeed,ptin:_NoisePanSpeed,varname:_NoisePanSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.014065,max:3;n:type:ShaderForge.SFN_Add,id:1347,x:31015,y:33199,varname:node_1347,prsc:2|A-4813-OUT,B-8516-OUT;n:type:ShaderForge.SFN_Tex2d,id:6801,x:30004,y:32994,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:_Emission,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ea27c133265bdcb40a65a0b25ecd70e6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4813,x:30643,y:32992,varname:node_4813,prsc:2|A-3826-OUT,B-6801-RGB;n:type:ShaderForge.SFN_Slider,id:3826,x:29934,y:32724,ptovrint:False,ptlb:EmissionIntensity,ptin:_EmissionIntensity,varname:_EmissionIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Tex2d,id:1139,x:31522,y:32925,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ddb0d502a41ab9b4c9de7fee938edc75,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8470,x:31774,y:33184,ptovrint:False,ptlb:Occlusion,ptin:_Occlusion,varname:_Occlusion,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:edfc42f1cb2677b40b7df2296641d810,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5059,x:31864,y:33427,varname:node_5059,prsc:2|A-8470-R,B-4524-OUT;n:type:ShaderForge.SFN_Slider,id:4524,x:31445,y:33486,ptovrint:False,ptlb:OcclusionIntensity,ptin:_OcclusionIntensity,varname:_OcclusionIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.953,max:10;n:type:ShaderForge.SFN_Slider,id:6453,x:30306,y:32566,ptovrint:False,ptlb:AlbedoIntensity,ptin:_AlbedoIntensity,varname:_AlbedoIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Tex2d,id:49,x:31143,y:32434,ptovrint:False,ptlb:MetallicMap,ptin:_MetallicMap,varname:_MetallicMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ad4d155eeb40b0243b626a9b5b19af87,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3622,x:31517,y:32574,varname:node_3622,prsc:2|A-49-R,B-4596-OUT;n:type:ShaderForge.SFN_Tex2d,id:5924,x:30465,y:33997,ptovrint:False,ptlb:node_7077,ptin:_node_7077,varname:_node_7077,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbe85db2f82fe604084455e03c6794c3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:7705,x:30827,y:33948,varname:node_7705,prsc:2|A-2819-OUT,B-5924-R;n:type:ShaderForge.SFN_Slider,id:559,x:29603,y:34344,ptovrint:False,ptlb:DissolveAmount,ptin:_DissolveAmount,varname:_DissolveAmount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:2819,x:29865,y:33855,varname:node_2819,prsc:2,frmn:0,frmx:1,tomn:-0.6,tomx:0.6|IN-559-OUT;n:type:ShaderForge.SFN_RemapRange,id:2664,x:31047,y:33597,varname:node_2664,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7705-OUT;n:type:ShaderForge.SFN_Clamp01,id:9439,x:31389,y:33613,varname:node_9439,prsc:2|IN-2664-OUT;n:type:ShaderForge.SFN_Append,id:7127,x:31656,y:33601,varname:node_7127,prsc:2|A-9439-OUT,B-3620-OUT;n:type:ShaderForge.SFN_Vector1,id:3620,x:31378,y:33766,varname:node_3620,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:2363,x:31899,y:33718,varname:node_2363,prsc:2,tex:271f5ee3273dd7f4fae6e204d4f8c4bf,ntxv:0,isnm:False|UVIN-7127-OUT,TEX-4382-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4382,x:31455,y:33901,ptovrint:False,ptlb:node_4382,ptin:_node_4382,varname:node_4382,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:271f5ee3273dd7f4fae6e204d4f8c4bf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:8597,x:32691,y:33614,varname:node_8597,prsc:2|A-1347-OUT,B-5649-OUT;n:type:ShaderForge.SFN_Multiply,id:5649,x:32255,y:33920,varname:node_5649,prsc:2|A-2363-RGB,B-8753-OUT;n:type:ShaderForge.SFN_OneMinus,id:8753,x:30350,y:34299,varname:node_8753,prsc:2|IN-559-OUT;proporder:6536-6453-1139-6801-3826-49-4596-3584-8470-4524-3288-6759-9741-9867-8709-4605-2033-5924-559-4382;pass:END;sub:END;*/

Shader "Shader Forge/EnemyShaderv2" {
    Properties {
        _MainTex ("Base Color", 2D) = "white" {}
        _AlbedoIntensity ("AlbedoIntensity", Range(0, 5)) = 1
        _NormalMap ("NormalMap", 2D) = "black" {}
        _Emission ("Emission", 2D) = "white" {}
        _EmissionIntensity ("EmissionIntensity", Range(0, 1)) = 1
        _MetallicMap ("MetallicMap", 2D) = "white" {}
        _MetallicIntensity ("Metallic Intensity", Range(0, 5)) = 5
        _GlossIntensity ("Gloss Intensity", Range(0, 5)) = 1
        _Occlusion ("Occlusion", 2D) = "white" {}
        _OcclusionIntensity ("OcclusionIntensity", Range(0, 10)) = 1.953
        [MaterialToggle] _GlowToggle ("GlowToggle", Float ) = 0
        _FresnelValue ("FresnelValue", Range(-1, 3)) = 0.920527
        _DamageNoiseTex ("DamageNoiseTex", 2D) = "white" {}
        _NoiseIntensity ("NoiseIntensity", Range(0, 5)) = 5
        _DamageColor ("DamageColor", Color) = (1,0.1985294,0.1985294,1)
        _StunColor ("StunColor", Color) = (0.988641,1,0.1764706,1)
        [MaterialToggle] _DamageorStun ("Damage or Stun", Float ) = 1
        _node_7077 ("node_7077", 2D) = "white" {}
        _DissolveAmount ("DissolveAmount", Range(0, 1)) = 1
        _node_4382 ("node_4382", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _MetallicIntensity;
            uniform float _GlossIntensity;
            uniform float _FresnelValue;
            uniform fixed _GlowToggle;
            uniform float4 _DamageColor;
            uniform float4 _StunColor;
            uniform fixed _DamageorStun;
            uniform sampler2D _DamageNoiseTex; uniform float4 _DamageNoiseTex_ST;
            uniform float _NoiseIntensity;
            uniform sampler2D _Emission; uniform float4 _Emission_ST;
            uniform float _EmissionIntensity;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Occlusion; uniform float4 _Occlusion_ST;
            uniform float _OcclusionIntensity;
            uniform float _AlbedoIntensity;
            uniform sampler2D _MetallicMap; uniform float4 _MetallicMap_ST;
            uniform sampler2D _node_7077; uniform float4 _node_7077_ST;
            uniform float _DissolveAmount;
            uniform sampler2D _node_4382; uniform float4 _node_4382_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _NormalMap_var = tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _node_7077_var = tex2D(_node_7077,TRANSFORM_TEX(i.uv0, _node_7077));
                float node_7705 = ((_DissolveAmount*1.2+-0.6)+_node_7077_var.r);
                clip(node_7705 - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _GlossIntensity;
                float perceptualRoughness = 1.0 - _GlossIntensity;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float4 _MetallicMap_var = tex2D(_MetallicMap,TRANSFORM_TEX(i.uv0, _MetallicMap));
                float3 specularColor = (_MetallicMap_var.r*_MetallicIntensity);
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = (_MainTex_var.rgb*_AlbedoIntensity); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _Occlusion_var = tex2D(_Occlusion,TRANSFORM_TEX(i.uv0, _Occlusion));
                indirectDiffuse *= (_Occlusion_var.r*_OcclusionIntensity); // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 _Emission_var = tex2D(_Emission,TRANSFORM_TEX(i.uv0, _Emission));
                float4 node_3030 = _Time;
                float2 node_8764 = (i.uv0+node_3030.g*float2(0.5,1));
                float4 node_483 = tex2D(_DamageNoiseTex,TRANSFORM_TEX(node_8764, _DamageNoiseTex));
                float2 node_7127 = float2(saturate((node_7705*2.0+-1.0)),0.0);
                float4 node_2363 = tex2D(_node_4382,TRANSFORM_TEX(node_7127, _node_4382));
                float3 emissive = (((_EmissionIntensity*_Emission_var.rgb)+(lerp( 0.0, 1.0, _GlowToggle )*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelValue)*lerp( _DamageColor.rgb, _StunColor.rgb, _DamageorStun )*(node_483.r*_NoiseIntensity)))+(node_2363.rgb*(1.0 - _DissolveAmount)));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _MetallicIntensity;
            uniform float _GlossIntensity;
            uniform float _FresnelValue;
            uniform fixed _GlowToggle;
            uniform float4 _DamageColor;
            uniform float4 _StunColor;
            uniform fixed _DamageorStun;
            uniform sampler2D _DamageNoiseTex; uniform float4 _DamageNoiseTex_ST;
            uniform float _NoiseIntensity;
            uniform sampler2D _Emission; uniform float4 _Emission_ST;
            uniform float _EmissionIntensity;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _AlbedoIntensity;
            uniform sampler2D _MetallicMap; uniform float4 _MetallicMap_ST;
            uniform sampler2D _node_7077; uniform float4 _node_7077_ST;
            uniform float _DissolveAmount;
            uniform sampler2D _node_4382; uniform float4 _node_4382_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _NormalMap_var = tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _node_7077_var = tex2D(_node_7077,TRANSFORM_TEX(i.uv0, _node_7077));
                float node_7705 = ((_DissolveAmount*1.2+-0.6)+_node_7077_var.r);
                clip(node_7705 - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _GlossIntensity;
                float perceptualRoughness = 1.0 - _GlossIntensity;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float4 _MetallicMap_var = tex2D(_MetallicMap,TRANSFORM_TEX(i.uv0, _MetallicMap));
                float3 specularColor = (_MetallicMap_var.r*_MetallicIntensity);
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = (_MainTex_var.rgb*_AlbedoIntensity); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_7077; uniform float4 _node_7077_ST;
            uniform float _DissolveAmount;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _node_7077_var = tex2D(_node_7077,TRANSFORM_TEX(i.uv0, _node_7077));
                float node_7705 = ((_DissolveAmount*1.2+-0.6)+_node_7077_var.r);
                clip(node_7705 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _MetallicIntensity;
            uniform float _GlossIntensity;
            uniform float _FresnelValue;
            uniform fixed _GlowToggle;
            uniform float4 _DamageColor;
            uniform float4 _StunColor;
            uniform fixed _DamageorStun;
            uniform sampler2D _DamageNoiseTex; uniform float4 _DamageNoiseTex_ST;
            uniform float _NoiseIntensity;
            uniform sampler2D _Emission; uniform float4 _Emission_ST;
            uniform float _EmissionIntensity;
            uniform float _AlbedoIntensity;
            uniform sampler2D _MetallicMap; uniform float4 _MetallicMap_ST;
            uniform sampler2D _node_7077; uniform float4 _node_7077_ST;
            uniform float _DissolveAmount;
            uniform sampler2D _node_4382; uniform float4 _node_4382_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _Emission_var = tex2D(_Emission,TRANSFORM_TEX(i.uv0, _Emission));
                float4 node_3888 = _Time;
                float2 node_8764 = (i.uv0+node_3888.g*float2(0.5,1));
                float4 node_483 = tex2D(_DamageNoiseTex,TRANSFORM_TEX(node_8764, _DamageNoiseTex));
                float4 _node_7077_var = tex2D(_node_7077,TRANSFORM_TEX(i.uv0, _node_7077));
                float node_7705 = ((_DissolveAmount*1.2+-0.6)+_node_7077_var.r);
                float2 node_7127 = float2(saturate((node_7705*2.0+-1.0)),0.0);
                float4 node_2363 = tex2D(_node_4382,TRANSFORM_TEX(node_7127, _node_4382));
                o.Emission = (((_EmissionIntensity*_Emission_var.rgb)+(lerp( 0.0, 1.0, _GlowToggle )*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelValue)*lerp( _DamageColor.rgb, _StunColor.rgb, _DamageorStun )*(node_483.r*_NoiseIntensity)))+(node_2363.rgb*(1.0 - _DissolveAmount)));
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffColor = (_MainTex_var.rgb*_AlbedoIntensity);
                float specularMonochrome;
                float3 specColor;
                float4 _MetallicMap_var = tex2D(_MetallicMap,TRANSFORM_TEX(i.uv0, _MetallicMap));
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, (_MetallicMap_var.r*_MetallicIntensity), specColor, specularMonochrome );
                float roughness = 1.0 - _GlossIntensity;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
