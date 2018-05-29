// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-2393-OUT,voffset-2561-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32235,y:32601,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4e961870a4dbca34183ab670b24e4547,ntxv:0,isnm:False|UVIN-7318-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-179-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32772,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32235,y:32930,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_TexCoord,id:6979,x:31521,y:32558,varname:node_6979,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:7318,x:31771,y:32619,varname:node_7318,prsc:2,spu:1,spv:0|UVIN-6979-UVOUT,DIST-3262-OUT;n:type:ShaderForge.SFN_Time,id:5010,x:31057,y:32919,varname:node_5010,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3262,x:31723,y:32845,varname:node_3262,prsc:2|A-5010-T,B-5131-OUT;n:type:ShaderForge.SFN_Slider,id:5131,x:31406,y:33093,ptovrint:False,ptlb:DetailPanSpeed,ptin:_DetailPanSpeed,varname:_DetailPanSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:0.3923413,max:10;n:type:ShaderForge.SFN_Slider,id:179,x:32470,y:33579,ptovrint:False,ptlb:TintIntensity,ptin:_TintIntensity,varname:_TintIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.561338,max:50;n:type:ShaderForge.SFN_NormalVector,id:3421,x:31882,y:33082,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:4919,x:32474,y:33008,varname:node_4919,prsc:2|A-6074-R,B-3421-OUT,C-7504-OUT;n:type:ShaderForge.SFN_Slider,id:7504,x:32096,y:33156,ptovrint:False,ptlb:VertexAnimationInstensity,ptin:_VertexAnimationInstensity,varname:_VertexAnimationInstensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_TexCoord,id:833,x:31226,y:33338,varname:node_833,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:812,x:31885,y:33332,ptovrint:False,ptlb:node_812,ptin:_node_812,varname:_node_812,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cd6ce04d6ded0964094b17b3e8eb1919,ntxv:0,isnm:False|UVIN-6386-UVOUT;n:type:ShaderForge.SFN_Subtract,id:2561,x:32508,y:33226,varname:node_2561,prsc:2|A-7026-OUT,B-4919-OUT;n:type:ShaderForge.SFN_Slider,id:8421,x:31848,y:33589,ptovrint:False,ptlb:MaskIntensity,ptin:_MaskIntensity,varname:_MaskIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:1,max:3;n:type:ShaderForge.SFN_Multiply,id:7026,x:32176,y:33339,varname:node_7026,prsc:2|A-3421-OUT,B-812-R,C-8421-OUT;n:type:ShaderForge.SFN_Panner,id:6386,x:31479,y:33523,varname:node_6386,prsc:2,spu:1,spv:1|UVIN-833-UVOUT,DIST-4146-OUT;n:type:ShaderForge.SFN_Slider,id:3483,x:31329,y:33825,ptovrint:False,ptlb:MaskPanSpeed,ptin:_MaskPanSpeed,varname:_MaskPanSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:4146,x:31724,y:33747,varname:node_4146,prsc:2|A-5010-T,B-3483-OUT;proporder:6074-797-5131-179-7504-812-8421-3483;pass:END;sub:END;*/

Shader "Shader Forge/LaserMatShaderVertexAnimation" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (1,1,1,1)
        _DetailPanSpeed ("DetailPanSpeed", Range(-10, 10)) = 0.3923413
        _TintIntensity ("TintIntensity", Range(0, 50)) = 2.561338
        _VertexAnimationInstensity ("VertexAnimationInstensity", Range(0, 10)) = 1
        _node_812 ("node_812", 2D) = "white" {}
        _MaskIntensity ("MaskIntensity", Range(-10, 3)) = 1
        _MaskPanSpeed ("MaskPanSpeed", Range(-5, 5)) = 0
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
            #pragma vertex vert
            #pragma fragment frag
            //#define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            //#pragma multi_compile_fwdbase
            //#pragma multi_compile_fog
            //#pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _DetailPanSpeed;
            uniform float _TintIntensity;
            uniform float _VertexAnimationInstensity;
            uniform sampler2D _node_812; uniform float4 _node_812_ST;
            uniform float _MaskIntensity;
            uniform float _MaskPanSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_5010 = _Time;
                float2 node_6386 = (o.uv1+(node_5010.g*_MaskPanSpeed)*float2(1,1));
                float4 _node_812_var = tex2Dlod(_node_812,float4(TRANSFORM_TEX(node_6386, _node_812),0.0,0));
                float2 node_7318 = (o.uv0+(node_5010.g*_DetailPanSpeed)*float2(1,0));
                float4 _MainTex_var = tex2Dlod(_MainTex,float4(TRANSFORM_TEX(node_7318, _MainTex),0.0,0));
                v.vertex.xyz += ((v.normal*_node_812_var.r*_MaskIntensity)-(_MainTex_var.r*v.normal*_VertexAnimationInstensity));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_5010 = _Time;
                float2 node_7318 = (i.uv0+(node_5010.g*_DetailPanSpeed)*float2(1,0));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7318, _MainTex));
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*_TintIntensity);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0.5,0.5,0.5,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
