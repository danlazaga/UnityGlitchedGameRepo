// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32887,y:32756,varname:node_4795,prsc:2|emission-2737-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:30002,y:31452,varname:_MainTex,prsc:2,tex:bbe85db2f82fe604084455e03c6794c3,ntxv:0,isnm:False|TEX-297-TEX;n:type:ShaderForge.SFN_Multiply,id:2393,x:31595,y:32073,varname:node_2393,prsc:2|A-1561-OUT,B-2472-Z;n:type:ShaderForge.SFN_VertexColor,id:2053,x:31506,y:31489,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:30537,y:32090,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2124784,c2:0.9632353,c3:0.8700379,c4:1;n:type:ShaderForge.SFN_TexCoord,id:2472,x:30241,y:32271,varname:node_2472,prsc:2,uv:0,uaff:True;n:type:ShaderForge.SFN_Vector1,id:6771,x:30355,y:31073,varname:node_6771,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:7030,x:30681,y:31243,varname:node_7030,prsc:2|A-6771-OUT,B-6074-B;n:type:ShaderForge.SFN_Multiply,id:1561,x:31167,y:31677,varname:node_1561,prsc:2|A-305-OUT,B-4865-OUT;n:type:ShaderForge.SFN_Multiply,id:1106,x:30776,y:31730,varname:node_1106,prsc:2|A-6074-R,B-2472-W;n:type:ShaderForge.SFN_TexCoord,id:7999,x:29146,y:33324,varname:node_7999,prsc:2,uv:1,uaff:True;n:type:ShaderForge.SFN_Append,id:3637,x:31856,y:31712,varname:node_3637,prsc:2|A-2053-RGB,B-4865-OUT;n:type:ShaderForge.SFN_Vector1,id:3202,x:30559,y:31820,varname:node_3202,prsc:2,v1:5;n:type:ShaderForge.SFN_ConstantClamp,id:4865,x:30964,y:31791,varname:node_4865,prsc:2,min:0.5,max:0.9|IN-1106-OUT;n:type:ShaderForge.SFN_Multiply,id:305,x:30907,y:31500,varname:node_305,prsc:2|A-7030-OUT,B-3041-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3041,x:30556,y:31546,ptovrint:False,ptlb:node_3041,ptin:_node_3041,varname:_node_3041,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:555,x:31912,y:32618,varname:node_555,prsc:2|A-7421-OUT,B-2393-OUT;n:type:ShaderForge.SFN_Multiply,id:7421,x:31477,y:32317,varname:node_7421,prsc:2|A-797-RGB,B-6787-OUT;n:type:ShaderForge.SFN_Vector1,id:6787,x:31123,y:32289,varname:node_6787,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:8683,x:32229,y:31918,varname:node_8683,prsc:2|A-4112-OUT,B-555-OUT,C-3637-OUT,D-2053-A;n:type:ShaderForge.SFN_Vector1,id:4112,x:32257,y:32687,varname:node_4112,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Slider,id:1254,x:30455,y:31905,ptovrint:False,ptlb:node_1254,ptin:_node_1254,varname:_node_1254,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Tex2dAsset,id:297,x:29743,y:32357,ptovrint:False,ptlb:node_297,ptin:_node_297,varname:_node_297,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbe85db2f82fe604084455e03c6794c3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1176,x:30560,y:32528,varname:_node_1176,prsc:2,tex:bbe85db2f82fe604084455e03c6794c3,ntxv:0,isnm:False|UVIN-2461-UVOUT,TEX-297-TEX;n:type:ShaderForge.SFN_Panner,id:2461,x:29731,y:32876,varname:node_2461,prsc:2,spu:0,spv:1|UVIN-2255-UVOUT,DIST-836-OUT;n:type:ShaderForge.SFN_TexCoord,id:2255,x:28891,y:32840,varname:node_2255,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:2039,x:29334,y:32990,varname:node_2039,prsc:2;n:type:ShaderForge.SFN_Multiply,id:836,x:29545,y:33068,varname:node_836,prsc:2|A-2039-T,B-7999-Z;n:type:ShaderForge.SFN_Add,id:2737,x:32283,y:32927,varname:node_2737,prsc:2|A-1176-G,B-7999-W,C-8683-OUT;proporder:797-3041-1254-297;pass:END;sub:END;*/

Shader "Shader Forge/ParticleAOEShader" {
    Properties {
        _TintColor ("Color", Color) = (0.2124784,0.9632353,0.8700379,1)
        _node_3041 ("node_3041", Float ) = 1
        _node_1254 ("node_1254", Range(0, 10)) = 0
        _node_297 ("node_297", 2D) = "white" {}
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
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TintColor;
            uniform float _node_3041;
            uniform sampler2D _node_297; uniform float4 _node_297_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float4 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_2039 = _Time;
                float2 node_2461 = (i.uv0+(node_2039.g*i.uv1.b)*float2(0,1));
                float4 _node_1176 = tex2D(_node_297,TRANSFORM_TEX(node_2461, _node_297));
                float4 _MainTex = tex2D(_node_297,TRANSFORM_TEX(i.uv0, _node_297));
                float node_4865 = clamp((_MainTex.r*i.uv0.a),0.5,0.9);
                float3 emissive = (_node_1176.g+i.uv1.a+(0.2*((_TintColor.rgb*0.5)+((((1.0*_MainTex.b)*_node_3041)*node_4865)*i.uv0.b))*float4(i.vertexColor.rgb,node_4865)*i.vertexColor.a)).rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
