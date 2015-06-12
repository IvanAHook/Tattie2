// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.6397059,fgcg:0.6397059,fgcb:0.6397059,fgca:1,fgde:0.09,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3666,x:32756,y:32801,varname:node_3666,prsc:2|diff-7503-RGB,emission-9727-OUT,alpha-2794-OUT;n:type:ShaderForge.SFN_Tex2d,id:7503,x:32066,y:32750,ptovrint:False,ptlb:node_7503,ptin:_node_7503,varname:_node_7503,prsc:2,tex:8b396540438c2c2428308d0e568af891,ntxv:0,isnm:False|UVIN-1037-UVOUT;n:type:ShaderForge.SFN_Panner,id:1037,x:31862,y:32699,varname:node_1037,prsc:2,spu:0.001,spv:0.003;n:type:ShaderForge.SFN_Multiply,id:9727,x:32426,y:32601,varname:node_9727,prsc:2|A-8400-RGB,B-9595-OUT;n:type:ShaderForge.SFN_Color,id:8400,x:32125,y:32456,ptovrint:False,ptlb:node_8400,ptin:_node_8400,varname:_node_8400,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:6993,x:32054,y:33029,ptovrint:False,ptlb:node_7503_copy,ptin:_node_7503_copy,varname:_node_7503_copy,prsc:2,tex:8b396540438c2c2428308d0e568af891,ntxv:0,isnm:False|UVIN-7852-UVOUT;n:type:ShaderForge.SFN_Panner,id:7852,x:31850,y:32979,varname:node_7852,prsc:2,spu:0.0024,spv:0.0051;n:type:ShaderForge.SFN_Multiply,id:6373,x:32286,y:32923,varname:node_6373,prsc:2|A-7503-RGB,B-6993-RGB;n:type:ShaderForge.SFN_Add,id:9595,x:32303,y:32750,varname:node_9595,prsc:2|A-7503-RGB,B-6993-RGB;n:type:ShaderForge.SFN_Vector1,id:8327,x:32464,y:33016,varname:node_8327,prsc:2,v1:0.8;n:type:ShaderForge.SFN_DepthBlend,id:7450,x:32464,y:33113,varname:node_7450,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2794,x:32543,y:32923,varname:node_2794,prsc:2|A-8327-OUT,B-7450-OUT;proporder:7503-8400-6993;pass:END;sub:END;*/

Shader "Shader Forge/Mist" {
    Properties {
        _node_7503 ("node_7503", 2D) = "white" {}
        _node_8400 ("node_8400", Color) = (0.5,0.5,0.5,1)
        _node_7503_copy ("node_7503_copy", 2D) = "white" {}
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
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _node_7503; uniform float4 _node_7503_ST;
            uniform float4 _node_8400;
            uniform sampler2D _node_7503_copy; uniform float4 _node_7503_copy_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
/////// Vectors:
////// Lighting:
////// Emissive:
                float4 node_2350 = _Time + _TimeEditor;
                float2 node_1037 = (i.uv0+node_2350.g*float2(0.001,0.003));
                float4 _node_7503_var = tex2D(_node_7503,TRANSFORM_TEX(node_1037, _node_7503));
                float2 node_7852 = (i.uv0+node_2350.g*float2(0.0024,0.0051));
                float4 _node_7503_copy_var = tex2D(_node_7503_copy,TRANSFORM_TEX(node_7852, _node_7503_copy));
                float3 emissive = (_node_8400.rgb*(_node_7503_var.rgb+_node_7503_copy_var.rgb));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(0.8*saturate((sceneZ-partZ))));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
