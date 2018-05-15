// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|normal-1420-OUT,emission-2393-OUT,refract-1162-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31811,y:32091,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:58a49ec835fcb4162b37ea91833051aa,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32071,y:32283,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:31633,y:32330,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:31811,y:32420,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:31811,y:32571,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Slider,id:3314,x:31616,y:32988,ptovrint:False,ptlb:Refraction Intensity,ptin:_RefractionIntensity,varname:_RefractionIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.329876,max:10;n:type:ShaderForge.SFN_Multiply,id:1162,x:32250,y:33291,varname:node_1162,prsc:2|A-1837-OUT,B-6311-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1837,x:31652,y:33122,varname:node_1837,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1260-RGB;n:type:ShaderForge.SFN_Tex2d,id:1260,x:31345,y:32706,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:_Refraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True|UVIN-5652-OUT;n:type:ShaderForge.SFN_TexCoord,id:3005,x:30956,y:32531,varname:node_3005,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5652,x:31127,y:32592,varname:node_5652,prsc:2|A-3005-UVOUT,B-1541-OUT;n:type:ShaderForge.SFN_Vector1,id:1541,x:30956,y:32688,varname:node_1541,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:1420,x:32354,y:32811,varname:node_1420,prsc:2|A-4458-OUT,B-1260-RGB,T-3314-OUT;n:type:ShaderForge.SFN_Vector3,id:4458,x:32094,y:32605,varname:node_4458,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Multiply,id:6311,x:32080,y:33370,varname:node_6311,prsc:2|A-3314-OUT,B-1479-OUT;n:type:ShaderForge.SFN_Vector1,id:1479,x:31842,y:33398,varname:node_1479,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Code,id:2562,x:32065,y:33003,varname:node_2562,prsc:2,code:IwBpAGYAIABVAE4ASQBUAFkAXwBTAEkATgBHAEwARQBfAFAAQQBTAFMAXwBTAFQARQBSAEUATwANAAoAaQAuAHUAdgBnAHIAYQBiAC4AeAB5ACAAPQAgAFQAcgBhAG4AcwBmAG8AcgBtAFMAdABlAHIAZQBvAFMAYwByAGUAZQBuAFMAcABhAGMAZQBUAGUAeAAoAGkALgB1AHYAZwByAGEAYgAuAHgAeQAsACAAaQAuAHUAdgBnAHIAYQBiAC4AdwApADsADQAKACMAZQBuAGQAaQBmAA==,output:1,fname:UVFixforvive,width:562,height:203,input:1,input_1_label:uv|A-1162-OUT;proporder:6074-797-3314-1260;pass:END;sub:END;*/

Shader "Shader Forge/SwordTrailMatWRefraction" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (1,1,1,1)
        _RefractionIntensity ("Refraction Intensity", Range(0, 10)) = 4.329876
        _Refraction ("Refraction", 2D) = "bump" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            uniform sampler2D _GrabTexture;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _RefractionIntensity;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
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
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_5652 = (i.uv0*1.0);
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_5652, _Refraction)));
                float3 normalLocal = lerp(float3(0,0,1),_Refraction_var.rgb,_RefractionIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 node_1162 = (_Refraction_var.rgb.rg*(_RefractionIntensity*0.2));
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + node_1162;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*2.0);
                float3 finalColor = emissive;
                return fixed4(lerp(sceneColor.rgb, finalColor,1),1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
