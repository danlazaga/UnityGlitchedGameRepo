// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-2393-OUT,voffset-6769-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32110,y:31935,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9706-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32370,y:32127,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-6800-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32110,y:32106,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32110,y:32264,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8708,x:31153,y:32331,ptovrint:False,ptlb:VertexExtrudeTex,ptin:_VertexExtrudeTex,varname:_VertexExtrudeTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8253-UVOUT;n:type:ShaderForge.SFN_Panner,id:8253,x:29916,y:32829,varname:node_8253,prsc:2,spu:1,spv:0|UVIN-3957-UVOUT,DIST-2368-OUT;n:type:ShaderForge.SFN_TexCoord,id:3957,x:29878,y:32451,varname:node_3957,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_NormalVector,id:3563,x:31111,y:32866,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:1098,x:31489,y:32617,varname:node_1098,prsc:2|A-8708-RGB,B-1916-OUT;n:type:ShaderForge.SFN_Slider,id:1916,x:30960,y:32643,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:_Intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:1,max:10;n:type:ShaderForge.SFN_Time,id:4328,x:29251,y:33023,varname:node_4328,prsc:2;n:type:ShaderForge.SFN_Slider,id:9039,x:29209,y:33303,ptovrint:False,ptlb:VertexPanSpeed,ptin:_VertexPanSpeed,varname:_VertexPanSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:-1.350401,max:3;n:type:ShaderForge.SFN_Multiply,id:2368,x:29539,y:33033,varname:node_2368,prsc:2|A-4328-T,B-9039-OUT;n:type:ShaderForge.SFN_Tex2d,id:6170,x:31306,y:33168,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:_Mask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:44d0cc60b012b7f4e9136cd8a765fb2d,ntxv:0,isnm:False|UVIN-3957-UVOUT;n:type:ShaderForge.SFN_Multiply,id:7642,x:31625,y:33053,varname:node_7642,prsc:2|A-6170-RGB,B-3432-OUT;n:type:ShaderForge.SFN_Slider,id:3432,x:31475,y:33335,ptovrint:False,ptlb:MaskIntensity,ptin:_MaskIntensity,varname:_MaskIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:6769,x:32009,y:32846,varname:node_6769,prsc:2|A-2331-OUT,B-7642-OUT,C-3563-OUT;n:type:ShaderForge.SFN_Tex2d,id:7540,x:31126,y:32095,ptovrint:False,ptlb:AdditiveVertexTex,ptin:_AdditiveVertexTex,varname:_AdditiveVertexTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8253-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1809,x:31508,y:32224,varname:node_1809,prsc:2|A-7540-RGB,B-3253-OUT;n:type:ShaderForge.SFN_Slider,id:3253,x:31388,y:32034,ptovrint:False,ptlb:AdditiveIntensity,ptin:_AdditiveIntensity,varname:_AdditiveIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Add,id:2331,x:31773,y:32509,varname:node_2331,prsc:2|A-1809-OUT,B-1098-OUT;n:type:ShaderForge.SFN_Slider,id:6800,x:32028,y:32636,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:_ColorIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.69178,max:10;n:type:ShaderForge.SFN_Panner,id:9706,x:30571,y:31934,varname:node_9706,prsc:2,spu:1,spv:1|UVIN-3957-UVOUT,DIST-6414-OUT;n:type:ShaderForge.SFN_Slider,id:3788,x:30223,y:32274,ptovrint:False,ptlb:TexPanSpeed,ptin:_TexPanSpeed,varname:_TexPanSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:6414,x:30293,y:32022,varname:node_6414,prsc:2|A-824-T,B-3788-OUT;n:type:ShaderForge.SFN_Time,id:824,x:30005,y:32012,varname:node_824,prsc:2;proporder:6074-797-6800-8708-1916-9039-6170-3432-7540-3253-3788;pass:END;sub:END;*/

Shader "Shader Forge/MaskedLaser2" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _ColorIntensity ("ColorIntensity", Range(0, 10)) = 1.69178
        _VertexExtrudeTex ("VertexExtrudeTex", 2D) = "white" {}
        _Intensity ("Intensity", Range(-10, 10)) = 1
        _VertexPanSpeed ("VertexPanSpeed", Range(-3, 3)) = -1.350401
        _Mask ("Mask", 2D) = "white" {}
        _MaskIntensity ("MaskIntensity", Range(0, 1)) = 0
        _AdditiveVertexTex ("AdditiveVertexTex", 2D) = "white" {}
        _AdditiveIntensity ("AdditiveIntensity", Range(0, 10)) = 0
        _TexPanSpeed ("TexPanSpeed", Range(-10, 10)) = 0
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
           // #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform sampler2D _VertexExtrudeTex; uniform float4 _VertexExtrudeTex_ST;
            uniform float _Intensity;
            uniform float _VertexPanSpeed;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _MaskIntensity;
            uniform sampler2D _AdditiveVertexTex; uniform float4 _AdditiveVertexTex_ST;
            uniform float _AdditiveIntensity;
            uniform float _ColorIntensity;
            uniform float _TexPanSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4328 = _Time;
                float2 node_8253 = (o.uv0+(node_4328.g*_VertexPanSpeed)*float2(1,0));
                float4 _AdditiveVertexTex_var = tex2Dlod(_AdditiveVertexTex,float4(TRANSFORM_TEX(node_8253, _AdditiveVertexTex),0.0,0));
                float4 _VertexExtrudeTex_var = tex2Dlod(_VertexExtrudeTex,float4(TRANSFORM_TEX(node_8253, _VertexExtrudeTex),0.0,0));
                float4 _Mask_var = tex2Dlod(_Mask,float4(TRANSFORM_TEX(o.uv0, _Mask),0.0,0));
                v.vertex.xyz += (((_AdditiveVertexTex_var.rgb*_AdditiveIntensity)+(_VertexExtrudeTex_var.rgb*_Intensity))*(_Mask_var.rgb*_MaskIntensity)*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
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
                float4 node_824 = _Time;
                float2 node_9706 = (i.uv0+(node_824.g*_TexPanSpeed)*float2(1,1));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_9706, _MainTex));
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*_ColorIntensity);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
