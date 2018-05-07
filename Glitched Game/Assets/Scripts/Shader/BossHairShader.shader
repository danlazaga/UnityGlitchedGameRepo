// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32858,y:32753,varname:node_4795,prsc:2|emission-2393-OUT,voffset-8266-OUT,tess-8266-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-572-B,B-2053-RGB,C-797-RGB,D-3877-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:31826,y:32591,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:31826,y:32749,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:5839,x:31747,y:33207,varname:node_5839,prsc:2,spu:1,spv:0|UVIN-1102-UVOUT,DIST-8030-OUT;n:type:ShaderForge.SFN_TexCoord,id:1102,x:31301,y:33223,varname:node_1102,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2dAsset,id:2039,x:31301,y:33064,ptovrint:False,ptlb:PackedTexture,ptin:_PackedTexture,varname:node_2039,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6f4dc5f76b3133c429d9a2eb6481a9cf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:572,x:31589,y:32811,varname:node_572,prsc:2,tex:6f4dc5f76b3133c429d9a2eb6481a9cf,ntxv:0,isnm:False|TEX-2039-TEX;n:type:ShaderForge.SFN_Slider,id:4080,x:31050,y:33491,ptovrint:False,ptlb:X Pan Speed,ptin:_XPanSpeed,varname:node_4080,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.887897,max:5;n:type:ShaderForge.SFN_Tex2d,id:7387,x:32063,y:33120,varname:node_7387,prsc:2,tex:6f4dc5f76b3133c429d9a2eb6481a9cf,ntxv:0,isnm:False|UVIN-5839-UVOUT,TEX-2039-TEX;n:type:ShaderForge.SFN_Multiply,id:5958,x:32270,y:33304,varname:node_5958,prsc:2|A-7387-R,B-9167-OUT;n:type:ShaderForge.SFN_Slider,id:9167,x:31846,y:33600,ptovrint:False,ptlb:VertexAnimationIntensity,ptin:_VertexAnimationIntensity,varname:node_9167,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8013948,max:3;n:type:ShaderForge.SFN_Time,id:6307,x:31161,y:33732,varname:node_6307,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8030,x:31549,y:33478,varname:node_8030,prsc:2|A-4080-OUT,B-6307-T;n:type:ShaderForge.SFN_Tex2d,id:7867,x:31733,y:33782,varname:node_7867,prsc:2,tex:6f4dc5f76b3133c429d9a2eb6481a9cf,ntxv:0,isnm:False|TEX-2039-TEX;n:type:ShaderForge.SFN_Slider,id:9163,x:31718,y:34157,ptovrint:False,ptlb:VertexAnimationMask,ptin:_VertexAnimationMask,varname:node_9163,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:8266,x:32519,y:33377,varname:node_8266,prsc:2|A-5958-OUT,B-9477-OUT;n:type:ShaderForge.SFN_Multiply,id:9477,x:32110,y:33826,varname:node_9477,prsc:2|A-7867-G,B-9163-OUT;n:type:ShaderForge.SFN_Slider,id:3877,x:31681,y:33006,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:node_3877,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;proporder:797-2039-4080-9167-9163-3877;pass:END;sub:END;*/

Shader "Shader Forge/BossHairShader" {
    Properties {
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _PackedTexture ("PackedTexture", 2D) = "white" {}
        _XPanSpeed ("X Pan Speed", Range(0, 5)) = 2.887897
        _VertexAnimationIntensity ("VertexAnimationIntensity", Range(0, 3)) = 0.8013948
        _VertexAnimationMask ("VertexAnimationMask", Range(0, 1)) = 1
        _ColorIntensity ("ColorIntensity", Range(0, 5)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TintColor;
            uniform sampler2D _PackedTexture; uniform float4 _PackedTexture_ST;
            uniform float _XPanSpeed;
            uniform float _VertexAnimationIntensity;
            uniform float _VertexAnimationMask;
            uniform float _ColorIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_6307 = _Time;
                float2 node_5839 = (o.uv0+(_XPanSpeed*node_6307.g)*float2(1,0));
                float4 node_7387 = tex2Dlod(_PackedTexture,float4(TRANSFORM_TEX(node_5839, _PackedTexture),0.0,0));
                float4 node_7867 = tex2Dlod(_PackedTexture,float4(TRANSFORM_TEX(o.uv0, _PackedTexture),0.0,0));
                float node_8266 = ((node_7387.r*_VertexAnimationIntensity)+(node_7867.g*_VertexAnimationMask));
                v.vertex.xyz += float3(node_8266,node_8266,node_8266);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float4 vertexColor : COLOR;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.vertexColor = v.vertexColor;
                    return o;
                }
                float Tessellation(TessVertex v){
                    float4 node_6307 = _Time;
                    float2 node_5839 = (v.texcoord0+(_XPanSpeed*node_6307.g)*float2(1,0));
                    float4 node_7387 = tex2Dlod(_PackedTexture,float4(TRANSFORM_TEX(node_5839, _PackedTexture),0.0,0));
                    float4 node_7867 = tex2Dlod(_PackedTexture,float4(TRANSFORM_TEX(v.texcoord0, _PackedTexture),0.0,0));
                    float node_8266 = ((node_7387.r*_VertexAnimationIntensity)+(node_7867.g*_VertexAnimationMask));
                    return node_8266;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.vertexColor = vi[0].vertexColor*bary.x + vi[1].vertexColor*bary.y + vi[2].vertexColor*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_572 = tex2D(_PackedTexture,TRANSFORM_TEX(i.uv0, _PackedTexture));
                float3 emissive = (node_572.b*i.vertexColor.rgb*_TintColor.rgb*_ColorIntensity);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
