// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-8234-OUT,spec-6418-OUT,gloss-884-OUT,normal-9810-RGB,emission-3135-OUT,difocc-5288-OUT;n:type:ShaderForge.SFN_Multiply,id:8234,x:30888,y:32399,varname:node_8234,prsc:2|A-6457-RGB,B-9048-OUT;n:type:ShaderForge.SFN_Tex2d,id:6457,x:30181,y:32271,ptovrint:True,ptlb:Base Color_copy,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:61d687ff60e527f49836193096195ca8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7712,x:31082,y:32731,ptovrint:False,ptlb:Metallic Intensity,ptin:_MetallicIntensity,varname:_MetallicIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Slider,id:884,x:31075,y:32904,ptovrint:False,ptlb:Gloss Intensity,ptin:_GlossIntensity,varname:_GlossIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Fresnel,id:9046,x:27733,y:32000,varname:node_9046,prsc:2|EXP-4584-OUT;n:type:ShaderForge.SFN_Slider,id:4584,x:27139,y:32137,ptovrint:False,ptlb:FresnelValue,ptin:_FresnelValue,varname:_FresnelValue,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.920527,max:3;n:type:ShaderForge.SFN_Multiply,id:2429,x:29380,y:33098,varname:node_2429,prsc:2|A-7482-OUT,B-9046-OUT,C-113-OUT,D-8435-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7482,x:27676,y:31758,ptovrint:False,ptlb:GlowToggle,ptin:_GlowToggle,varname:_GlowToggle,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2147-OUT,B-1089-OUT;n:type:ShaderForge.SFN_Vector1,id:2147,x:27188,y:31704,varname:node_2147,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:1089,x:27188,y:31835,varname:node_1089,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:928,x:27707,y:32713,ptovrint:False,ptlb:DamageColor,ptin:_DamageColor,varname:_DamageColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.1985294,c3:0.1985294,c4:1;n:type:ShaderForge.SFN_Color,id:6983,x:27707,y:32887,ptovrint:False,ptlb:StunColor,ptin:_StunColor,varname:_StunColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.988641,c2:1,c3:0.1764706,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:113,x:27913,y:32784,ptovrint:False,ptlb:Damage or Stun,ptin:_DamageorStun,varname:_DamageorStun,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-928-RGB,B-6983-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:1035,x:27214,y:32633,ptovrint:False,ptlb:DamageNoiseTex,ptin:_DamageNoiseTex,varname:_DamageNoiseTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:4959,x:27235,y:32363,varname:node_4959,prsc:2,spu:0.5,spv:1|UVIN-6468-UVOUT,DIST-2884-OUT;n:type:ShaderForge.SFN_TexCoord,id:6468,x:26937,y:32209,varname:node_6468,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:1537,x:27852,y:32477,varname:node_483,prsc:2,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False|UVIN-4959-UVOUT,TEX-1035-TEX;n:type:ShaderForge.SFN_Slider,id:8067,x:27374,y:32677,ptovrint:False,ptlb:NoiseIntensity,ptin:_NoiseIntensity,varname:_NoiseIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Multiply,id:8435,x:28351,y:32398,varname:node_8435,prsc:2|A-1537-R,B-8067-OUT;n:type:ShaderForge.SFN_Time,id:231,x:26625,y:33128,varname:node_231,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2884,x:26901,y:32900,varname:node_2884,prsc:2|A-4196-OUT,B-231-T;n:type:ShaderForge.SFN_Slider,id:4196,x:26485,y:32850,ptovrint:False,ptlb:NoisePanSpeed,ptin:_NoisePanSpeed,varname:_NoisePanSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.014065,max:3;n:type:ShaderForge.SFN_Add,id:3135,x:31079,y:33263,varname:node_3135,prsc:2|A-7421-OUT,B-2429-OUT;n:type:ShaderForge.SFN_Tex2d,id:7106,x:30068,y:33058,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:_Emission,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ea27c133265bdcb40a65a0b25ecd70e6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7421,x:30707,y:33056,varname:node_7421,prsc:2|A-6573-OUT,B-7106-RGB;n:type:ShaderForge.SFN_Slider,id:6573,x:29998,y:32788,ptovrint:False,ptlb:EmissionIntensity,ptin:_EmissionIntensity,varname:_EmissionIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Tex2d,id:9810,x:31586,y:32989,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ddb0d502a41ab9b4c9de7fee938edc75,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2943,x:32228,y:33049,ptovrint:False,ptlb:Occlusion,ptin:_Occlusion,varname:_Occlusion,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:edfc42f1cb2677b40b7df2296641d810,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5288,x:32318,y:33292,varname:node_5288,prsc:2|A-2943-R,B-9588-OUT;n:type:ShaderForge.SFN_Slider,id:9588,x:31899,y:33351,ptovrint:False,ptlb:OcclusionIntensity,ptin:_OcclusionIntensity,varname:_OcclusionIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.953,max:10;n:type:ShaderForge.SFN_Slider,id:9048,x:30370,y:32630,ptovrint:False,ptlb:AlbedoIntensity,ptin:_AlbedoIntensity,varname:_AlbedoIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Tex2d,id:7787,x:31207,y:32498,ptovrint:False,ptlb:MetallicMap,ptin:_MetallicMap,varname:_MetallicMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ad4d155eeb40b0243b626a9b5b19af87,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6418,x:31581,y:32638,varname:node_6418,prsc:2|A-7787-R,B-7712-OUT;n:type:ShaderForge.SFN_Tex2d,id:6264,x:30529,y:34061,ptovrint:False,ptlb:node_7077,ptin:_node_7077,varname:_node_7077,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbe85db2f82fe604084455e03c6794c3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:7946,x:30891,y:34012,varname:node_7946,prsc:2|A-7232-OUT,B-6264-R;n:type:ShaderForge.SFN_Slider,id:2061,x:29774,y:34482,ptovrint:False,ptlb:DissolveAmount,ptin:_DissolveAmount,varname:_DissolveAmount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1.5;n:type:ShaderForge.SFN_RemapRange,id:7232,x:30036,y:33993,varname:node_7232,prsc:2,frmn:0,frmx:1,tomn:-0.6,tomx:0.6|IN-2061-OUT;n:type:ShaderForge.SFN_RemapRange,id:4527,x:31111,y:33661,varname:node_4527,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7946-OUT;n:type:ShaderForge.SFN_Clamp01,id:439,x:31453,y:33677,varname:node_439,prsc:2|IN-4527-OUT;n:type:ShaderForge.SFN_Append,id:3882,x:31720,y:33665,varname:node_3882,prsc:2|A-439-OUT,B-8493-OUT;n:type:ShaderForge.SFN_Vector1,id:8493,x:31442,y:33830,varname:node_8493,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:5416,x:31963,y:33782,varname:node_2363,prsc:2,tex:271f5ee3273dd7f4fae6e204d4f8c4bf,ntxv:0,isnm:False|UVIN-3882-OUT,TEX-4956-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4956,x:31519,y:33965,ptovrint:False,ptlb:node_4382,ptin:_node_4382,varname:_node_4382,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:271f5ee3273dd7f4fae6e204d4f8c4bf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:2203,x:32755,y:33678,varname:node_2203,prsc:2|A-3135-OUT,B-5190-OUT;n:type:ShaderForge.SFN_Multiply,id:5190,x:32319,y:33984,varname:node_5190,prsc:2|A-5416-RGB,B-6292-OUT;n:type:ShaderForge.SFN_OneMinus,id:6292,x:30414,y:34363,varname:node_6292,prsc:2|IN-2061-OUT;proporder:7712-7787-884-6457-9048-9810-2943-9588-4584-7482-928-6983-113-1035-8067-7106-6573-4196;pass:END;sub:END;*/

Shader "Shader Forge/EnemyShaderv3" {
    Properties {
        _MetallicIntensity ("Metallic Intensity", Range(0, 5)) = 5
        _MetallicMap ("MetallicMap", 2D) = "white" {}
        _GlossIntensity ("Gloss Intensity", Range(0, 5)) = 1
        _MainTex ("Base Color_copy", 2D) = "white" {}
        _AlbedoIntensity ("AlbedoIntensity", Range(0, 5)) = 1
        _NormalMap ("NormalMap", 2D) = "black" {}
        _Occlusion ("Occlusion", 2D) = "white" {}
        _OcclusionIntensity ("OcclusionIntensity", Range(0, 10)) = 1.953
        _FresnelValue ("FresnelValue", Range(-1, 3)) = 0.920527
        [MaterialToggle] _GlowToggle ("GlowToggle", Float ) = 0
        _DamageColor ("DamageColor", Color) = (1,0.1985294,0.1985294,1)
        _StunColor ("StunColor", Color) = (0.988641,1,0.1764706,1)
        [MaterialToggle] _DamageorStun ("Damage or Stun", Float ) = 1
        _DamageNoiseTex ("DamageNoiseTex", 2D) = "white" {}
        _NoiseIntensity ("NoiseIntensity", Range(0, 5)) = 5
        _Emission ("Emission", 2D) = "white" {}
        _EmissionIntensity ("EmissionIntensity", Range(0, 1)) = 1
        _NoisePanSpeed ("NoisePanSpeed", Range(0, 3)) = 1.014065
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            uniform float _NoisePanSpeed;
            uniform sampler2D _Emission; uniform float4 _Emission_ST;
            uniform float _EmissionIntensity;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Occlusion; uniform float4 _Occlusion_ST;
            uniform float _OcclusionIntensity;
            uniform float _AlbedoIntensity;
            uniform sampler2D _MetallicMap; uniform float4 _MetallicMap_ST;
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
                float4 node_231 = _Time;
                float2 node_4959 = (i.uv0+(_NoisePanSpeed*node_231.g)*float2(0.5,1));
                float4 node_483 = tex2D(_DamageNoiseTex,TRANSFORM_TEX(node_4959, _DamageNoiseTex));
                float3 node_3135 = ((_EmissionIntensity*_Emission_var.rgb)+(lerp( 0.0, 1.0, _GlowToggle )*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelValue)*lerp( _DamageColor.rgb, _StunColor.rgb, _DamageorStun )*(node_483.r*_NoiseIntensity)));
                float3 emissive = node_3135;
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
            uniform float _NoisePanSpeed;
            uniform sampler2D _Emission; uniform float4 _Emission_ST;
            uniform float _EmissionIntensity;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _AlbedoIntensity;
            uniform sampler2D _MetallicMap; uniform float4 _MetallicMap_ST;
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
            uniform float _NoisePanSpeed;
            uniform sampler2D _Emission; uniform float4 _Emission_ST;
            uniform float _EmissionIntensity;
            uniform float _AlbedoIntensity;
            uniform sampler2D _MetallicMap; uniform float4 _MetallicMap_ST;
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
                float4 node_231 = _Time;
                float2 node_4959 = (i.uv0+(_NoisePanSpeed*node_231.g)*float2(0.5,1));
                float4 node_483 = tex2D(_DamageNoiseTex,TRANSFORM_TEX(node_4959, _DamageNoiseTex));
                float3 node_3135 = ((_EmissionIntensity*_Emission_var.rgb)+(lerp( 0.0, 1.0, _GlowToggle )*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelValue)*lerp( _DamageColor.rgb, _StunColor.rgb, _DamageorStun )*(node_483.r*_NoiseIntensity)));
                o.Emission = node_3135;
                
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
