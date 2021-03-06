// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:34058,y:32856,varname:node_2865,prsc:2|diff-6343-OUT,spec-1602-OUT,gloss-1813-OUT,normal-4422-RGB,emission-2808-OUT,difocc-2053-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32063,y:32377,varname:node_6343,prsc:2|A-7736-RGB,B-7126-OUT;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31356,y:32249,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:61d687ff60e527f49836193096195ca8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:358,x:32257,y:32709,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:_Metallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9846796,max:5;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6169898,max:1;n:type:ShaderForge.SFN_Fresnel,id:6667,x:31370,y:33564,varname:node_6667,prsc:2|EXP-6046-OUT;n:type:ShaderForge.SFN_Slider,id:6046,x:30776,y:33701,ptovrint:False,ptlb:FresnelValue,ptin:_FresnelValue,varname:_FresnelValue,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.920527,max:3;n:type:ShaderForge.SFN_Multiply,id:3527,x:31575,y:33553,varname:node_3527,prsc:2|A-9581-OUT,B-6667-OUT,C-1151-OUT,D-5540-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9581,x:31124,y:33471,ptovrint:False,ptlb:GlowToggle,ptin:_GlowToggle,varname:_GlowToggle,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9802-OUT,B-6749-OUT;n:type:ShaderForge.SFN_Vector1,id:9802,x:30636,y:33417,varname:node_9802,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6749,x:30636,y:33548,varname:node_6749,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:2759,x:30998,y:34083,ptovrint:False,ptlb:DamageColor,ptin:_DamageColor,varname:_DamageColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.1985294,c3:0.1985294,c4:1;n:type:ShaderForge.SFN_Color,id:7802,x:30998,y:34257,ptovrint:False,ptlb:StunColor,ptin:_StunColor,varname:_StunColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.988641,c2:1,c3:0.1764706,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:1151,x:31204,y:34154,ptovrint:False,ptlb:Damage or Stun,ptin:_DamageorStun,varname:_DamageorStun,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2759-RGB,B-7802-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:7879,x:30505,y:34003,ptovrint:False,ptlb:DetailMaps,ptin:_DetailMaps,varname:_DetailMaps,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:6440,x:30526,y:33733,varname:node_6440,prsc:2,spu:0.5,spv:1|UVIN-2942-UVOUT,DIST-592-OUT;n:type:ShaderForge.SFN_TexCoord,id:2942,x:30228,y:33579,varname:node_2942,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:483,x:31143,y:33847,varname:node_483,prsc:2,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False|UVIN-6440-UVOUT,TEX-7879-TEX;n:type:ShaderForge.SFN_Slider,id:2563,x:30665,y:34047,ptovrint:False,ptlb:NoiseIntensity,ptin:_NoiseIntensity,varname:_NoiseIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.582609,max:5;n:type:ShaderForge.SFN_Multiply,id:5540,x:31642,y:33768,varname:node_5540,prsc:2|A-483-R,B-2563-OUT;n:type:ShaderForge.SFN_Time,id:1760,x:30099,y:34118,varname:node_1760,prsc:2;n:type:ShaderForge.SFN_Multiply,id:592,x:30375,y:33890,varname:node_592,prsc:2|A-810-OUT,B-1760-T;n:type:ShaderForge.SFN_Slider,id:810,x:29959,y:33840,ptovrint:False,ptlb:NoisePanSpeed,ptin:_NoisePanSpeed,varname:_NoisePanSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.014065,max:3;n:type:ShaderForge.SFN_Add,id:2808,x:32421,y:33250,varname:node_2808,prsc:2|A-2445-OUT,B-3527-OUT;n:type:ShaderForge.SFN_Tex2d,id:1885,x:31385,y:32820,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:_Emission,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ea27c133265bdcb40a65a0b25ecd70e6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2445,x:32027,y:33009,varname:node_2445,prsc:2|A-2537-OUT,B-1885-RGB;n:type:ShaderForge.SFN_Slider,id:2537,x:31306,y:33150,ptovrint:False,ptlb:EmissionIntensity,ptin:_EmissionIntensity,varname:_EmissionIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Tex2d,id:4422,x:32761,y:32967,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ddb0d502a41ab9b4c9de7fee938edc75,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2773,x:33013,y:33226,ptovrint:False,ptlb:Occlusion,ptin:_Occlusion,varname:_Occlusion,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:edfc42f1cb2677b40b7df2296641d810,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2053,x:33103,y:33469,varname:node_2053,prsc:2|A-2773-R,B-1587-OUT;n:type:ShaderForge.SFN_Slider,id:1587,x:32684,y:33528,ptovrint:False,ptlb:OcclusionIntensity,ptin:_OcclusionIntensity,varname:_OcclusionIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.953,max:10;n:type:ShaderForge.SFN_Slider,id:7126,x:31545,y:32608,ptovrint:False,ptlb:AlbedoIntensity,ptin:_AlbedoIntensity,varname:_AlbedoIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Tex2d,id:4163,x:32382,y:32476,ptovrint:False,ptlb:MetallicMap,ptin:_MetallicMap,varname:_MetallicMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ad4d155eeb40b0243b626a9b5b19af87,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1602,x:32756,y:32616,varname:node_1602,prsc:2|A-4163-R,B-358-OUT;proporder:7736-358-1813-6046-9581-2759-7802-1151-7879-2563-810-1885-2537-4422-2773-1587-7126-4163;pass:END;sub:END;*/

Shader "Shader Forge/EnemyShader" {
    Properties {
        _MainTex ("Base Color", 2D) = "white" {}
        _Metallic ("Metallic", Range(0, 5)) = 0.9846796
        _Gloss ("Gloss", Range(0, 1)) = 0.6169898
        _FresnelValue ("FresnelValue", Range(-1, 3)) = 0.920527
        [MaterialToggle] _GlowToggle ("GlowToggle", Float ) = 0
        _DamageColor ("DamageColor", Color) = (1,0.1985294,0.1985294,1)
        _StunColor ("StunColor", Color) = (0.988641,1,0.1764706,1)
        [MaterialToggle] _DamageorStun ("Damage or Stun", Float ) = 1
        _DetailMaps ("DetailMaps", 2D) = "white" {}
        _NoiseIntensity ("NoiseIntensity", Range(0, 5)) = 2.582609
        _NoisePanSpeed ("NoisePanSpeed", Range(0, 3)) = 1.014065
        _Emission ("Emission", 2D) = "white" {}
        _EmissionIntensity ("EmissionIntensity", Range(0, 1)) = 1
        _NormalMap ("NormalMap", 2D) = "black" {}
        _Occlusion ("Occlusion", 2D) = "white" {}
        _OcclusionIntensity ("OcclusionIntensity", Range(0, 10)) = 1.953
        _AlbedoIntensity ("AlbedoIntensity", Range(0, 5)) = 1
        _MetallicMap ("MetallicMap", 2D) = "white" {}
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _FresnelValue;
            uniform fixed _GlowToggle;
            uniform float4 _DamageColor;
            uniform float4 _StunColor;
            uniform fixed _DamageorStun;
            uniform sampler2D _DetailMaps; uniform float4 _DetailMaps_ST;
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
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
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
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
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
                float3 specularColor = (_MetallicMap_var.r*_Metallic);
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
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _Occlusion_var = tex2D(_Occlusion,TRANSFORM_TEX(i.uv0, _Occlusion));
                indirectDiffuse *= (_Occlusion_var.r*_OcclusionIntensity); // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 _Emission_var = tex2D(_Emission,TRANSFORM_TEX(i.uv0, _Emission));
                float4 node_1760 = _Time;
                float2 node_6440 = (i.uv0+(_NoisePanSpeed*node_1760.g)*float2(0.5,1));
                float4 node_483 = tex2D(_DetailMaps,TRANSFORM_TEX(node_6440, _DetailMaps));
                float3 emissive = ((_EmissionIntensity*_Emission_var.rgb)+(lerp( 0.0, 1.0, _GlowToggle )*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelValue)*lerp( _DamageColor.rgb, _StunColor.rgb, _DamageorStun )*(node_483.r*_NoiseIntensity)));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                return fixed4(finalColor,1);
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _FresnelValue;
            uniform fixed _GlowToggle;
            uniform float4 _DamageColor;
            uniform float4 _StunColor;
            uniform fixed _DamageorStun;
            uniform sampler2D _DetailMaps; uniform float4 _DetailMaps_ST;
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
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float4 _MetallicMap_var = tex2D(_MetallicMap,TRANSFORM_TEX(i.uv0, _MetallicMap));
                float3 specularColor = (_MetallicMap_var.r*_Metallic);
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
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
