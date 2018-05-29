// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:1,fgcg:1,fgcb:1,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32953,y:32712,varname:node_4795,prsc:2|emission-9611-OUT,clip-3127-A,voffset-6557-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32455,y:32100,varname:node_2393,prsc:2|B-2053-RGB;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32224,y:32380,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Lerp,id:6958,x:32719,y:32120,varname:node_6958,prsc:2|A-8003-OUT,B-2393-OUT,T-2797-OUT;n:type:ShaderForge.SFN_Multiply,id:2797,x:32468,y:32380,varname:node_2797,prsc:2|B-2053-A;n:type:ShaderForge.SFN_Vector1,id:8003,x:32455,y:32038,varname:node_8003,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:3127,x:31958,y:32530,ptovrint:False,ptlb:MainTex_copy,ptin:_MainTex_copy,varname:_MainTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9604-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9611,x:32458,y:32923,varname:node_9611,prsc:2|A-9386-OUT,B-3091-RGB,C-7443-RGB,D-9419-OUT;n:type:ShaderForge.SFN_VertexColor,id:3091,x:32198,y:32902,varname:node_3091,prsc:2;n:type:ShaderForge.SFN_Color,id:7443,x:32198,y:33060,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9799,x:31229,y:33029,ptovrint:False,ptlb:VertexExtrudeTex,ptin:_VertexExtrudeTex,varname:_VertexExtrudeTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d0bf94bd8e1bcad4ea235302da6d22c3,ntxv:0,isnm:False|UVIN-9604-UVOUT;n:type:ShaderForge.SFN_Panner,id:9604,x:29706,y:33211,varname:node_9604,prsc:2,spu:1,spv:0|UVIN-2538-UVOUT,DIST-1803-OUT;n:type:ShaderForge.SFN_TexCoord,id:2538,x:29556,y:32756,varname:node_2538,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_NormalVector,id:9067,x:31189,y:33718,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:5877,x:31567,y:33469,varname:node_5877,prsc:2|A-9799-RGB,B-8901-OUT;n:type:ShaderForge.SFN_Slider,id:8901,x:31038,y:33495,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:_Intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:1,max:10;n:type:ShaderForge.SFN_Time,id:5938,x:29362,y:33761,varname:node_5938,prsc:2;n:type:ShaderForge.SFN_Slider,id:2324,x:29320,y:34041,ptovrint:False,ptlb:PanSpeed,ptin:_PanSpeed,varname:_PanSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:-1.350401,max:3;n:type:ShaderForge.SFN_Multiply,id:1803,x:29650,y:33771,varname:node_1803,prsc:2|A-5938-T,B-2324-OUT;n:type:ShaderForge.SFN_Tex2d,id:6450,x:31272,y:33943,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:_Mask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:44d0cc60b012b7f4e9136cd8a765fb2d,ntxv:0,isnm:False|UVIN-2538-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4307,x:31703,y:33905,varname:node_4307,prsc:2|A-6450-RGB,B-8744-OUT;n:type:ShaderForge.SFN_Slider,id:8744,x:31553,y:34187,ptovrint:False,ptlb:MaskIntensity,ptin:_MaskIntensity,varname:_MaskIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.5;n:type:ShaderForge.SFN_Multiply,id:6557,x:32087,y:33698,varname:node_6557,prsc:2|A-9202-OUT,B-4307-OUT,C-9067-OUT;n:type:ShaderForge.SFN_Tex2d,id:7751,x:31146,y:32766,ptovrint:False,ptlb:AdditiveVertexTex,ptin:_AdditiveVertexTex,varname:_AdditiveVertexTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d651bd147d8b33545a57ad385790b02b,ntxv:0,isnm:False|UVIN-9604-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1564,x:31528,y:32895,varname:node_1564,prsc:2|A-7751-RGB,B-7265-OUT;n:type:ShaderForge.SFN_Slider,id:7265,x:31330,y:32679,ptovrint:False,ptlb:AdditiveIntensity,ptin:_AdditiveIntensity,varname:_AdditiveIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Add,id:9202,x:31851,y:33361,varname:node_9202,prsc:2|A-1564-OUT,B-5877-OUT;n:type:ShaderForge.SFN_Slider,id:9419,x:32116,y:33432,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:_ColorIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.69178,max:10;n:type:ShaderForge.SFN_Multiply,id:9386,x:31901,y:32821,varname:node_9386,prsc:2|A-3127-RGB,B-2670-OUT;n:type:ShaderForge.SFN_Slider,id:751,x:31562,y:32365,ptovrint:False,ptlb:TexBlendIntensity,ptin:_TexBlendIntensity,varname:_TexBlendIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:2670,x:31666,y:33007,varname:node_2670,prsc:2|A-751-OUT,B-9799-RGB;proporder:3127-7443-9419-9799-8901-6450-8744-7751-7265-751-2324;pass:END;sub:END;*/

Shader "Shader Forge/DarkLaserAuraShader" {
    Properties {
        _MainTex_copy ("MainTex_copy", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _ColorIntensity ("ColorIntensity", Range(0, 10)) = 1.69178
        _VertexExtrudeTex ("VertexExtrudeTex", 2D) = "white" {}
        _Intensity ("Intensity", Range(-10, 10)) = 1
        _Mask ("Mask", 2D) = "white" {}
        _MaskIntensity ("MaskIntensity", Range(0, 0.5)) = 0
        _AdditiveVertexTex ("AdditiveVertexTex", 2D) = "white" {}
        _AdditiveIntensity ("AdditiveIntensity", Range(0, 10)) = 0
        _TexBlendIntensity ("TexBlendIntensity", Range(0, 1)) = 0
        _PanSpeed ("PanSpeed", Range(-3, 3)) = -1.350401
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            //#define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            //#pragma multi_compile_fwdbase_fullshadows
            //#pragma multi_compile_fog
            //#pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _MainTex_copy; uniform float4 _MainTex_copy_ST;
            uniform float4 _TintColor;
            uniform sampler2D _VertexExtrudeTex; uniform float4 _VertexExtrudeTex_ST;
            uniform float _Intensity;
            uniform float _PanSpeed;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _MaskIntensity;
            uniform sampler2D _AdditiveVertexTex; uniform float4 _AdditiveVertexTex_ST;
            uniform float _AdditiveIntensity;
            uniform float _ColorIntensity;
            uniform float _TexBlendIntensity;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_5938 = _Time;
                float2 node_9604 = (o.uv0+(node_5938.g*_PanSpeed)*float2(1,0));
                float4 _AdditiveVertexTex_var = tex2Dlod(_AdditiveVertexTex,float4(TRANSFORM_TEX(node_9604, _AdditiveVertexTex),0.0,0));
                float4 _VertexExtrudeTex_var = tex2Dlod(_VertexExtrudeTex,float4(TRANSFORM_TEX(node_9604, _VertexExtrudeTex),0.0,0));
                float4 _Mask_var = tex2Dlod(_Mask,float4(TRANSFORM_TEX(o.uv0, _Mask),0.0,0));
                v.vertex.xyz += (((_AdditiveVertexTex_var.rgb*_AdditiveIntensity)+(_VertexExtrudeTex_var.rgb*_Intensity))*(_Mask_var.rgb*_MaskIntensity)*v.normal);
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
                float4 node_5938 = _Time;
                float2 node_9604 = (i.uv0+(node_5938.g*_PanSpeed)*float2(1,0));
                float4 _MainTex_copy_var = tex2D(_MainTex_copy,TRANSFORM_TEX(node_9604, _MainTex_copy));
                clip(_MainTex_copy_var.a - 0.5);
////// Lighting:
////// Emissive:
                float4 _VertexExtrudeTex_var = tex2D(_VertexExtrudeTex,TRANSFORM_TEX(node_9604, _VertexExtrudeTex));
                float3 node_9611 = ((_MainTex_copy_var.rgb*(_TexBlendIntensity*_VertexExtrudeTex_var.rgb))*i.vertexColor.rgb*_TintColor.rgb*_ColorIntensity);
                float3 emissive = node_9611;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(1,1,1,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
