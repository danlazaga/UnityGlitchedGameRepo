// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33238,y:34429,varname:node_2865,prsc:2|diff-8173-OUT,spec-2612-OUT,gloss-8954-OUT,normal-111-OUT;n:type:ShaderForge.SFN_Slider,id:2612,x:31800,y:33472,ptovrint:False,ptlb:Metallic_copy,ptin:_Metallic_copy,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4304225,max:1;n:type:ShaderForge.SFN_Slider,id:8954,x:31800,y:33574,ptovrint:False,ptlb:Gloss_copy,ptin:_Gloss_copy,varname:_Gloss_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5948713,max:1;n:type:ShaderForge.SFN_NormalVector,id:652,x:28717,y:33009,prsc:2,pt:False;n:type:ShaderForge.SFN_FragmentPosition,id:6490,x:28218,y:33640,varname:node_6490,prsc:2;n:type:ShaderForge.SFN_Abs,id:5267,x:29110,y:33039,varname:node_5267,prsc:2|IN-652-OUT;n:type:ShaderForge.SFN_Power,id:1827,x:29458,y:33007,varname:node_1827,prsc:2|VAL-5267-OUT,EXP-7045-OUT;n:type:ShaderForge.SFN_Append,id:7075,x:29545,y:33653,varname:node_7075,prsc:2|A-5189-OUT,B-4772-OUT;n:type:ShaderForge.SFN_Append,id:766,x:29545,y:33798,varname:node_766,prsc:2|A-4455-R,B-4772-OUT;n:type:ShaderForge.SFN_Append,id:5409,x:29545,y:33966,varname:node_5409,prsc:2|A-4455-R,B-4455-G;n:type:ShaderForge.SFN_Divide,id:904,x:28488,y:33746,varname:node_904,prsc:2|A-6490-XYZ,B-7036-OUT;n:type:ShaderForge.SFN_Slider,id:7036,x:28179,y:33946,ptovrint:False,ptlb:Tiling,ptin:_Tiling,varname:node_429,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.300257,max:5;n:type:ShaderForge.SFN_Frac,id:5482,x:28523,y:33850,varname:node_5482,prsc:2|IN-904-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4455,x:28672,y:33850,varname:node_4455,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-5482-OUT;n:type:ShaderForge.SFN_Slider,id:7045,x:29244,y:33223,ptovrint:False,ptlb:BlendSharpness,ptin:_BlendSharpness,varname:node_1812,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_ComponentMask,id:2083,x:29633,y:33051,varname:node_2083,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-1827-OUT;n:type:ShaderForge.SFN_Add,id:5365,x:29907,y:32982,varname:node_5365,prsc:2|A-2083-R,B-2083-G;n:type:ShaderForge.SFN_Add,id:8578,x:30119,y:33113,varname:node_8578,prsc:2|A-5365-OUT,B-2083-B;n:type:ShaderForge.SFN_Divide,id:6310,x:30155,y:32842,varname:node_6310,prsc:2|A-1827-OUT,B-8578-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9617,x:30553,y:33076,varname:node_9617,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-6310-OUT;n:type:ShaderForge.SFN_Multiply,id:5212,x:30810,y:33178,varname:node_5212,prsc:2|A-9617-R,B-3347-OUT;n:type:ShaderForge.SFN_Multiply,id:2149,x:30851,y:33494,varname:node_2149,prsc:2|A-9617-G,B-9181-OUT;n:type:ShaderForge.SFN_Tex2d,id:1859,x:29933,y:33443,varname:node_8530,prsc:2,tex:2859c7c30ffbd1c41b3054100a352b9e,ntxv:0,isnm:False|UVIN-7075-OUT,TEX-3166-TEX;n:type:ShaderForge.SFN_OneMinus,id:4772,x:28842,y:33936,varname:node_4772,prsc:2|IN-4455-B;n:type:ShaderForge.SFN_OneMinus,id:5189,x:28842,y:33764,varname:node_5189,prsc:2|IN-4455-G;n:type:ShaderForge.SFN_Tex2dAsset,id:3166,x:29095,y:33488,ptovrint:False,ptlb:PackedTexture2D,ptin:_PackedTexture2D,varname:node_5722,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2859c7c30ffbd1c41b3054100a352b9e,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Color,id:785,x:30119,y:33300,ptovrint:False,ptlb:TexTint,ptin:_TexTint,varname:node_7114,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9632353,c2:0.9632353,c3:0.9632353,c4:1;n:type:ShaderForge.SFN_Multiply,id:3347,x:30541,y:33310,varname:node_3347,prsc:2|A-785-RGB,B-1859-B;n:type:ShaderForge.SFN_Multiply,id:9181,x:30542,y:33582,varname:node_9181,prsc:2|A-785-RGB,B-3189-B;n:type:ShaderForge.SFN_Multiply,id:1694,x:30563,y:33846,varname:node_1694,prsc:2|A-785-RGB,B-6481-B;n:type:ShaderForge.SFN_Multiply,id:9193,x:30879,y:33693,varname:node_9193,prsc:2|A-9617-B,B-1694-OUT;n:type:ShaderForge.SFN_Tex2d,id:3189,x:29960,y:33562,varname:node_8726,prsc:2,tex:2859c7c30ffbd1c41b3054100a352b9e,ntxv:0,isnm:False|UVIN-766-OUT,TEX-3166-TEX;n:type:ShaderForge.SFN_Tex2d,id:6481,x:29960,y:33757,varname:node_6637,prsc:2,tex:2859c7c30ffbd1c41b3054100a352b9e,ntxv:0,isnm:False|UVIN-5409-OUT,TEX-3166-TEX;n:type:ShaderForge.SFN_Add,id:9981,x:31191,y:33228,varname:node_9981,prsc:2|A-5212-OUT,B-2149-OUT;n:type:ShaderForge.SFN_Add,id:7441,x:31440,y:33281,varname:node_7441,prsc:2|A-9981-OUT,B-9193-OUT;n:type:ShaderForge.SFN_Slider,id:6431,x:31201,y:33001,ptovrint:False,ptlb:colorBrightness,ptin:_colorBrightness,varname:node_1002,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6379541,max:10;n:type:ShaderForge.SFN_Multiply,id:3570,x:31681,y:33261,varname:node_3570,prsc:2|A-6431-OUT,B-7441-OUT;n:type:ShaderForge.SFN_Multiply,id:7724,x:31681,y:33082,varname:node_7724,prsc:2|A-7441-OUT,B-6431-OUT;n:type:ShaderForge.SFN_Multiply,id:8173,x:32134,y:33168,varname:node_8173,prsc:2|A-7724-OUT,B-3570-OUT;n:type:ShaderForge.SFN_Tex2d,id:8290,x:29858,y:34207,varname:node_8290,prsc:2,tex:b9303e318685ae145b02899424bcdd6c,ntxv:0,isnm:False|UVIN-7075-OUT,TEX-3592-TEX;n:type:ShaderForge.SFN_Multiply,id:8745,x:30903,y:34126,varname:node_8745,prsc:2|A-9617-R,B-8290-RGB;n:type:ShaderForge.SFN_Multiply,id:6350,x:30904,y:34398,varname:node_6350,prsc:2|A-9617-G,B-4011-RGB;n:type:ShaderForge.SFN_Multiply,id:2181,x:30925,y:34662,varname:node_2181,prsc:2|A-9617-B,B-8656-RGB;n:type:ShaderForge.SFN_Tex2d,id:8656,x:29870,y:34778,varname:_node_7782_copy,prsc:2,tex:b9303e318685ae145b02899424bcdd6c,ntxv:0,isnm:False|UVIN-5409-OUT,TEX-3592-TEX;n:type:ShaderForge.SFN_Add,id:2157,x:31407,y:34187,varname:node_2157,prsc:2|A-8745-OUT,B-6350-OUT;n:type:ShaderForge.SFN_Add,id:4096,x:31655,y:34593,varname:node_4096,prsc:2|A-2157-OUT,B-2181-OUT;n:type:ShaderForge.SFN_Slider,id:8950,x:30947,y:35373,ptovrint:False,ptlb:NormalIntensity,ptin:_NormalIntensity,varname:node_8950,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Append,id:7689,x:31534,y:35199,varname:node_7689,prsc:2|A-8950-OUT,B-8950-OUT;n:type:ShaderForge.SFN_Append,id:3639,x:31752,y:35185,varname:node_3639,prsc:2|A-7689-OUT,B-9367-OUT;n:type:ShaderForge.SFN_Vector1,id:9367,x:31559,y:35438,varname:node_9367,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:111,x:32095,y:35061,varname:node_111,prsc:2|A-4096-OUT,B-3639-OUT;n:type:ShaderForge.SFN_Tex2d,id:4011,x:29853,y:34510,varname:node_4011,prsc:2,tex:b9303e318685ae145b02899424bcdd6c,ntxv:0,isnm:False|UVIN-766-OUT,TEX-3592-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3592,x:29237,y:34236,ptovrint:False,ptlb:node_3592,ptin:_node_3592,varname:node_3592,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b9303e318685ae145b02899424bcdd6c,ntxv:3,isnm:True;proporder:7036-7045-3166-785-6431-2612-8954-8950-3592;pass:END;sub:END;*/

Shader "Shader Forge/TriplanarShader-FromMinions" {
    Properties {
        _Tiling ("Tiling", Range(0, 5)) = 1.300257
        _BlendSharpness ("BlendSharpness", Range(0, 1)) = 1
        _PackedTexture2D ("PackedTexture2D", 2D) = "black" {}
        _TexTint ("TexTint", Color) = (0.9632353,0.9632353,0.9632353,1)
        _colorBrightness ("colorBrightness", Range(0, 10)) = 0.6379541
        _Metallic_copy ("Metallic_copy", Range(0, 1)) = 0.4304225
        _Gloss_copy ("Gloss_copy", Range(0, 1)) = 0.5948713
        _NormalIntensity ("NormalIntensity", Range(0, 10)) = 1
        _node_3592 ("node_3592", 2D) = "bump" {}
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
            uniform float _Metallic_copy;
            uniform float _Gloss_copy;
            uniform float _Tiling;
            uniform float _BlendSharpness;
            uniform sampler2D _PackedTexture2D; uniform float4 _PackedTexture2D_ST;
            uniform float4 _TexTint;
            uniform float _colorBrightness;
            uniform float _NormalIntensity;
            uniform sampler2D _node_3592; uniform float4 _node_3592_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 node_1827 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_2083 = node_1827.rgb;
                float3 node_9617 = (node_1827/((node_2083.r+node_2083.g)+node_2083.b)).rgb;
                float3 node_4455 = frac((i.posWorld.rgb/_Tiling)).rgb;
                float node_4772 = (1.0 - node_4455.b);
                float2 node_7075 = float2((1.0 - node_4455.g),node_4772);
                float3 node_8290 = UnpackNormal(tex2D(_node_3592,TRANSFORM_TEX(node_7075, _node_3592)));
                float2 node_766 = float2(node_4455.r,node_4772);
                float3 node_4011 = UnpackNormal(tex2D(_node_3592,TRANSFORM_TEX(node_766, _node_3592)));
                float2 node_5409 = float2(node_4455.r,node_4455.g);
                float3 _node_7782_copy = UnpackNormal(tex2D(_node_3592,TRANSFORM_TEX(node_5409, _node_3592)));
                float3 normalLocal = ((((node_9617.r*node_8290.rgb)+(node_9617.g*node_4011.rgb))+(node_9617.b*_node_7782_copy.rgb))*float3(float2(_NormalIntensity,_NormalIntensity),1.0));
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
                float gloss = _Gloss_copy;
                float perceptualRoughness = 1.0 - _Gloss_copy;
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
                float3 specularColor = _Metallic_copy;
                float specularMonochrome;
                float4 node_8530 = tex2D(_PackedTexture2D,TRANSFORM_TEX(node_7075, _PackedTexture2D));
                float4 node_8726 = tex2D(_PackedTexture2D,TRANSFORM_TEX(node_766, _PackedTexture2D));
                float4 node_6637 = tex2D(_PackedTexture2D,TRANSFORM_TEX(node_5409, _PackedTexture2D));
                float3 node_7441 = (((node_9617.r*(_TexTint.rgb*node_8530.b))+(node_9617.g*(_TexTint.rgb*node_8726.b)))+(node_9617.b*(_TexTint.rgb*node_6637.b)));
                float3 diffuseColor = ((node_7441*_colorBrightness)*(_colorBrightness*node_7441)); // Need this for specular when using metallic
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
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            uniform float _Metallic_copy;
            uniform float _Gloss_copy;
            uniform float _Tiling;
            uniform float _BlendSharpness;
            uniform sampler2D _PackedTexture2D; uniform float4 _PackedTexture2D_ST;
            uniform float4 _TexTint;
            uniform float _colorBrightness;
            uniform float _NormalIntensity;
            uniform sampler2D _node_3592; uniform float4 _node_3592_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 node_1827 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_2083 = node_1827.rgb;
                float3 node_9617 = (node_1827/((node_2083.r+node_2083.g)+node_2083.b)).rgb;
                float3 node_4455 = frac((i.posWorld.rgb/_Tiling)).rgb;
                float node_4772 = (1.0 - node_4455.b);
                float2 node_7075 = float2((1.0 - node_4455.g),node_4772);
                float3 node_8290 = UnpackNormal(tex2D(_node_3592,TRANSFORM_TEX(node_7075, _node_3592)));
                float2 node_766 = float2(node_4455.r,node_4772);
                float3 node_4011 = UnpackNormal(tex2D(_node_3592,TRANSFORM_TEX(node_766, _node_3592)));
                float2 node_5409 = float2(node_4455.r,node_4455.g);
                float3 _node_7782_copy = UnpackNormal(tex2D(_node_3592,TRANSFORM_TEX(node_5409, _node_3592)));
                float3 normalLocal = ((((node_9617.r*node_8290.rgb)+(node_9617.g*node_4011.rgb))+(node_9617.b*_node_7782_copy.rgb))*float3(float2(_NormalIntensity,_NormalIntensity),1.0));
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
                float gloss = _Gloss_copy;
                float perceptualRoughness = 1.0 - _Gloss_copy;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic_copy;
                float specularMonochrome;
                float4 node_8530 = tex2D(_PackedTexture2D,TRANSFORM_TEX(node_7075, _PackedTexture2D));
                float4 node_8726 = tex2D(_PackedTexture2D,TRANSFORM_TEX(node_766, _PackedTexture2D));
                float4 node_6637 = tex2D(_PackedTexture2D,TRANSFORM_TEX(node_5409, _PackedTexture2D));
                float3 node_7441 = (((node_9617.r*(_TexTint.rgb*node_8530.b))+(node_9617.g*(_TexTint.rgb*node_8726.b)))+(node_9617.b*(_TexTint.rgb*node_6637.b)));
                float3 diffuseColor = ((node_7441*_colorBrightness)*(_colorBrightness*node_7441)); // Need this for specular when using metallic
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
            uniform float _Metallic_copy;
            uniform float _Gloss_copy;
            uniform float _Tiling;
            uniform float _BlendSharpness;
            uniform sampler2D _PackedTexture2D; uniform float4 _PackedTexture2D_ST;
            uniform float4 _TexTint;
            uniform float _colorBrightness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                
                o.Emission = 0;
                
                float3 node_1827 = pow(abs(i.normalDir),_BlendSharpness);
                float3 node_2083 = node_1827.rgb;
                float3 node_9617 = (node_1827/((node_2083.r+node_2083.g)+node_2083.b)).rgb;
                float3 node_4455 = frac((i.posWorld.rgb/_Tiling)).rgb;
                float node_4772 = (1.0 - node_4455.b);
                float2 node_7075 = float2((1.0 - node_4455.g),node_4772);
                float4 node_8530 = tex2D(_PackedTexture2D,TRANSFORM_TEX(node_7075, _PackedTexture2D));
                float2 node_766 = float2(node_4455.r,node_4772);
                float4 node_8726 = tex2D(_PackedTexture2D,TRANSFORM_TEX(node_766, _PackedTexture2D));
                float2 node_5409 = float2(node_4455.r,node_4455.g);
                float4 node_6637 = tex2D(_PackedTexture2D,TRANSFORM_TEX(node_5409, _PackedTexture2D));
                float3 node_7441 = (((node_9617.r*(_TexTint.rgb*node_8530.b))+(node_9617.g*(_TexTint.rgb*node_8726.b)))+(node_9617.b*(_TexTint.rgb*node_6637.b)));
                float3 diffColor = ((node_7441*_colorBrightness)*(_colorBrightness*node_7441));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic_copy, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss_copy;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
