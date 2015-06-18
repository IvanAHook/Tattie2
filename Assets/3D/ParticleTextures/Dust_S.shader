// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:0,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2045,x:32892,y:32720,varname:node_2045,prsc:2|diff-4850-OUT,emission-4850-OUT,alpha-5994-OUT;n:type:ShaderForge.SFN_Tex2d,id:64,x:32157,y:32718,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,tex:6414663ef32d2cb469431860e52ee2c6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4850,x:32681,y:32758,varname:node_4850,prsc:2|A-2523-RGB,B-6305-OUT;n:type:ShaderForge.SFN_VertexColor,id:2523,x:32169,y:32996,varname:node_2523,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5994,x:32477,y:32881,varname:node_5994,prsc:2|A-64-A,B-2523-A;n:type:ShaderForge.SFN_LightVector,id:4160,x:32171,y:32407,varname:node_4160,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1037,x:31968,y:32036,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:7838,x:32439,y:32234,varname:node_7838,prsc:2,dt:0|A-1037-OUT,B-4160-OUT;n:type:ShaderForge.SFN_AmbientLight,id:3901,x:32604,y:32450,varname:node_3901,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:1267,x:32835,y:32450,varname:node_1267,prsc:2|IN-7838-OUT;n:type:ShaderForge.SFN_LightColor,id:4910,x:32705,y:32130,varname:node_4910,prsc:2;n:type:ShaderForge.SFN_Lerp,id:6305,x:33028,y:32402,varname:node_6305,prsc:2|A-8157-OUT,B-4910-RGB,T-1267-OUT;n:type:ShaderForge.SFN_Slider,id:5899,x:32584,y:31953,ptovrint:False,ptlb:Ambient,ptin:_Ambient,varname:_Ambient,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:8157,x:32968,y:32168,varname:node_8157,prsc:2|A-5899-OUT,B-3901-RGB;proporder:64-5899;pass:END;sub:END;*/

Shader "Shader Forge/Dust_S" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Ambient ("Ambient", Range(0, 1)) = 0.5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Ambient;
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
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
////// Emissive:
                float node_1267 = saturate(dot(i.normalDir,lightDirection));
                float3 node_4850 = (i.vertexColor.rgb*lerp((_Ambient*UNITY_LIGHTMODEL_AMBIENT.rgb),_LightColor0.rgb,node_1267));
                float3 emissive = node_4850;
                float3 finalColor = emissive;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                fixed4 finalRGBA = fixed4(finalColor,(_MainTex_var.a*i.vertexColor.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
