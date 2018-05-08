// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-9385-OUT,voffset-2099-OUT;n:type:ShaderForge.SFN_Multiply,id:9385,x:31764,y:32473,varname:node_9385,prsc:2|A-1383-B,B-30-RGB,C-2179-RGB,D-6262-OUT;n:type:ShaderForge.SFN_VertexColor,id:30,x:31068,y:31862,varname:node_30,prsc:2;n:type:ShaderForge.SFN_Color,id:2179,x:31072,y:32162,ptovrint:True,ptlb:Color_copy_copy,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:5295,x:30982,y:32909,varname:node_5295,prsc:2,spu:1,spv:0|UVIN-7739-UVOUT,DIST-8968-OUT;n:type:ShaderForge.SFN_TexCoord,id:7739,x:30523,y:32922,varname:node_7739,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2dAsset,id:9219,x:30073,y:32769,ptovrint:False,ptlb:PackedTexture,ptin:_PackedTexture,varname:node_2039,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6f4dc5f76b3133c429d9a2eb6481a9cf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1383,x:31192,y:32469,varname:node_572,prsc:2,tex:6f4dc5f76b3133c429d9a2eb6481a9cf,ntxv:0,isnm:False|UVIN-7593-UVOUT,TEX-9219-TEX;n:type:ShaderForge.SFN_Slider,id:8143,x:30319,y:33171,ptovrint:False,ptlb:X Pan Speed,ptin:_XPanSpeed,varname:node_4080,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:2.887897,max:5;n:type:ShaderForge.SFN_Tex2d,id:8984,x:31332,y:32800,varname:node_7387,prsc:2,tex:6f4dc5f76b3133c429d9a2eb6481a9cf,ntxv:0,isnm:False|UVIN-5295-UVOUT,TEX-9219-TEX;n:type:ShaderForge.SFN_Multiply,id:3871,x:31539,y:32984,varname:node_3871,prsc:2|A-8984-R,B-1972-OUT;n:type:ShaderForge.SFN_Slider,id:1972,x:31115,y:33280,ptovrint:False,ptlb:VertexAnimationIntensity,ptin:_VertexAnimationIntensity,varname:node_9167,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.362605,max:3;n:type:ShaderForge.SFN_Time,id:9053,x:30430,y:33412,varname:node_9053,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8968,x:30818,y:33158,varname:node_8968,prsc:2|A-8143-OUT,B-9053-T;n:type:ShaderForge.SFN_Tex2d,id:6925,x:31002,y:33462,varname:node_7867,prsc:2,tex:6f4dc5f76b3133c429d9a2eb6481a9cf,ntxv:0,isnm:False|TEX-9219-TEX;n:type:ShaderForge.SFN_Slider,id:7386,x:30987,y:33837,ptovrint:False,ptlb:VertexAnimationMask,ptin:_VertexAnimationMask,varname:node_9163,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9073517,max:5;n:type:ShaderForge.SFN_Add,id:2099,x:31788,y:33057,varname:node_2099,prsc:2|A-3871-OUT,B-780-OUT,C-3212-OUT;n:type:ShaderForge.SFN_Multiply,id:780,x:31379,y:33506,varname:node_780,prsc:2|A-6925-G,B-7386-OUT;n:type:ShaderForge.SFN_Slider,id:6262,x:30950,y:32686,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:node_3877,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Panner,id:7593,x:30607,y:32019,varname:node_7593,prsc:2,spu:1,spv:0|UVIN-6049-UVOUT,DIST-743-OUT;n:type:ShaderForge.SFN_TexCoord,id:6049,x:30334,y:32019,varname:node_6049,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:4745,x:29883,y:32268,ptovrint:False,ptlb:TexurePanning,ptin:_TexurePanning,varname:_XPanSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:1.185397,max:5;n:type:ShaderForge.SFN_Multiply,id:743,x:30382,y:32255,varname:node_743,prsc:2|A-4745-OUT,B-533-T;n:type:ShaderForge.SFN_Time,id:533,x:29994,y:32510,varname:node_533,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3212,x:32007,y:32854,varname:node_3212,prsc:2|A-1383-B,B-4144-OUT;n:type:ShaderForge.SFN_Slider,id:4144,x:31594,y:32831,ptovrint:False,ptlb:VertexNoiseIntensity,ptin:_VertexNoiseIntensity,varname:node_4144,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;proporder:2179-9219-6262-1972-7386-8143-4745-4144;pass:END;sub:END;*/

Shader "Shader Forge/BossHairShader" {
    Properties {
        _TintColor ("Color_copy_copy", Color) = (0.5,0.5,0.5,1)
        _PackedTexture ("PackedTexture", 2D) = "white" {}
        _ColorIntensity ("ColorIntensity", Range(0, 5)) = 0
        _VertexAnimationIntensity ("VertexAnimationIntensity", Range(0, 3)) = 1.362605
        _VertexAnimationMask ("VertexAnimationMask", Range(0, 5)) = 0.9073517
        _XPanSpeed ("X Pan Speed", Range(-5, 5)) = 2.887897
        _TexurePanning ("TexurePanning", Range(-5, 5)) = 1.185397
        _VertexNoiseIntensity ("VertexNoiseIntensity", Range(0, 5)) = 0
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TintColor;
            uniform sampler2D _PackedTexture; uniform float4 _PackedTexture_ST;
            uniform float _XPanSpeed;
            uniform float _VertexAnimationIntensity;
            uniform float _VertexAnimationMask;
            uniform float _ColorIntensity;
            uniform float _TexurePanning;
            uniform float _VertexNoiseIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_9053 = _Time;
                float2 node_5295 = (o.uv0+(_XPanSpeed*node_9053.g)*float2(1,0));
                float4 node_7387 = tex2Dlod(_PackedTexture,float4(TRANSFORM_TEX(node_5295, _PackedTexture),0.0,0));
                float4 node_7867 = tex2Dlod(_PackedTexture,float4(TRANSFORM_TEX(o.uv0, _PackedTexture),0.0,0));
                float4 node_533 = _Time;
                float2 node_7593 = (o.uv0+(_TexurePanning*node_533.g)*float2(1,0));
                float4 node_572 = tex2Dlod(_PackedTexture,float4(TRANSFORM_TEX(node_7593, _PackedTexture),0.0,0));
                float node_2099 = ((node_7387.r*_VertexAnimationIntensity)+(node_7867.g*_VertexAnimationMask)+(node_572.b*_VertexNoiseIntensity));
                v.vertex.xyz += float3(node_2099,node_2099,node_2099);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_533 = _Time;
                float2 node_7593 = (i.uv0+(_TexurePanning*node_533.g)*float2(1,0));
                float4 node_572 = tex2D(_PackedTexture,TRANSFORM_TEX(node_7593, _PackedTexture));
                float3 emissive = (node_572.b*i.vertexColor.rgb*_TintColor.rgb*_ColorIntensity);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
