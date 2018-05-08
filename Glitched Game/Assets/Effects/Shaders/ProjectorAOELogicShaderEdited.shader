// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-9610-OUT;n:type:ShaderForge.SFN_Multiply,id:9610,x:32012,y:33109,varname:node_9610,prsc:2|A-17-RGB,B-6122-RGB,C-7710-OUT,D-5459-OUT,E-5378-OUT;n:type:ShaderForge.SFN_VertexColor,id:6122,x:31578,y:33049,varname:node_6122,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:3585,x:31466,y:33329,varname:node_3585,prsc:2,uv:0,uaff:True;n:type:ShaderForge.SFN_Slider,id:5459,x:31744,y:33431,ptovrint:False,ptlb:node_8850,ptin:_node_8850,varname:_node_8850,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Tex2dAsset,id:4443,x:31127,y:33084,ptovrint:False,ptlb:node_4443,ptin:_ShadowTex,varname:_node_4443,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:402e1f347349a254d8add4cc5e3d6ae0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:17,x:31613,y:32723,varname:node_17,prsc:2,tex:402e1f347349a254d8add4cc5e3d6ae0,ntxv:0,isnm:False|TEX-4443-TEX;n:type:ShaderForge.SFN_Tex2d,id:5623,x:31136,y:33537,ptovrint:False,ptlb:OpacityClipMask,ptin:_OpacityClipMask,varname:_OpacityClipMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:39cc3c0df2da2684bb96bb7e878ef46d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7004,x:31725,y:33932,ptovrint:False,ptlb:DissolveAmount,ptin:_DissolveAmount,varname:_DissolveAmount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:4121,x:31593,y:33662,varname:node_4121,prsc:2|A-5623-R,B-5252-OUT;n:type:ShaderForge.SFN_Ceil,id:5572,x:31874,y:33648,varname:node_5572,prsc:2|IN-4121-OUT;n:type:ShaderForge.SFN_OneMinus,id:5378,x:32044,y:33640,varname:node_5378,prsc:2|IN-5572-OUT;n:type:ShaderForge.SFN_Slider,id:7710,x:31454,y:33236,ptovrint:False,ptlb:TempValue,ptin:_TempValue,varname:_TempValue,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:5252,x:32063,y:33873,varname:node_5252,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:0.0009|IN-7004-OUT;proporder:5459-4443-5623-7004-7710;pass:END;sub:END;*/

Shader "Shader Forge/ProjectorAOELogicShaderEdited" {
    Properties {
        _node_8850 ("node_8850", Range(0, 2)) = 2
        _ShadowTex ("MainTex", 2D) = "white" {}
        _OpacityClipMask ("OpacityClipMask", 2D) = "white" {}
        _DissolveAmount ("DissolveAmount", Range(0, 1)) = 1
        _TempValue ("TempValue", Range(0, 1)) = 1
    }
    SubShader {
        Tags {
            //"IgnoreProjector"="True"
            "Queue"="Transparent"
            //"RenderType"="Transparent"
        }
        Pass {
           // Name "FORWARD"
            Tags {
                "Queue"="Transparent"
            }
            Blend One One
            Offset -1, -1
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
           // #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
           // #pragma multi_compile_fwdbase
           // #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform float _node_8850;
            uniform sampler2D _ShadowTex; uniform float4 _ShadowTex_ST;
            uniform sampler2D _OpacityClipMask; uniform float4 _OpacityClipMask_ST;
            uniform float _DissolveAmount;
            uniform float _TempValue;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };

            float4x4 unity_Projector;
			float4x4 unity_ProjectorClip;

            VertexOutput vert (VertexInput v, float4 vertex :POSITION) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.uv0 = mul (unity_Projector, vertex);
                return o;
            }
            float4 frag(VertexOutput i) : SV_TARGET {
////// Lighting:
////// Emissive:
                float4 node_17 =  tex2Dproj (_ShadowTex, UNITY_PROJ_COORD(i.texcoord0));
                float4 _OpacityClipMask_var = tex2D(_OpacityClipMask,TRANSFORM_TEX(i.uv0, _OpacityClipMask));
                float node_5378 = (1.0 - ceil((_OpacityClipMask_var.r+(_DissolveAmount*1.0009+-1.0))));
                float3 node_9610 = (node_17.rgb*i.vertexColor.rgb*_TempValue*_node_8850*node_5378);
                float3 emissive = node_9610;
                float3 finalColor = emissive;


                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
