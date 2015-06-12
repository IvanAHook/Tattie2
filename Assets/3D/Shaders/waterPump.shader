// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7670,x:33183,y:32060,varname:node_7670,prsc:2|voffset-4412-OUT;n:type:ShaderForge.SFN_TexCoord,id:904,x:32088,y:31643,varname:node_904,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:7610,x:32617,y:31723,varname:node_7610,prsc:2,spu:0,spv:1|UVIN-7291-OUT;n:type:ShaderForge.SFN_ComponentMask,id:381,x:32832,y:31723,varname:node_381,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7610-UVOUT;n:type:ShaderForge.SFN_Frac,id:4587,x:32233,y:32047,varname:node_4587,prsc:2|IN-381-OUT;n:type:ShaderForge.SFN_RemapRange,id:657,x:32437,y:32047,varname:node_657,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4587-OUT;n:type:ShaderForge.SFN_Abs,id:727,x:32678,y:32047,varname:node_727,prsc:2|IN-657-OUT;n:type:ShaderForge.SFN_NormalVector,id:2640,x:32647,y:32497,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:4412,x:32887,y:32476,varname:node_4412,prsc:2|A-5821-OUT,B-2640-OUT,C-3604-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3604,x:32647,y:32677,ptovrint:False,ptlb:Strength,ptin:_Strength,varname:node_3604,prsc:2,glob:False,v1:0.2;n:type:ShaderForge.SFN_RemapRange,id:341,x:32885,y:32047,varname:node_341,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:1|IN-727-OUT;n:type:ShaderForge.SFN_Clamp01,id:7109,x:31966,y:32249,varname:node_7109,prsc:2|IN-341-OUT;n:type:ShaderForge.SFN_Pi,id:3999,x:32129,y:32277,varname:node_3999,prsc:2;n:type:ShaderForge.SFN_Multiply,id:270,x:32283,y:32249,varname:node_270,prsc:2|A-7109-OUT,B-3999-OUT;n:type:ShaderForge.SFN_Cos,id:4614,x:32478,y:32249,varname:node_4614,prsc:2|IN-270-OUT;n:type:ShaderForge.SFN_OneMinus,id:5821,x:32870,y:32249,varname:node_5821,prsc:2|IN-6672-OUT;n:type:ShaderForge.SFN_RemapRange,id:6672,x:32686,y:32249,varname:node_6672,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-4614-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5764,x:32402,y:31876,ptovrint:False,ptlb:Direction,ptin:_Direction,varname:node_5764,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:7291,x:32402,y:31723,varname:node_7291,prsc:2|A-904-UVOUT,B-9013-OUT,T-5764-OUT;n:type:ShaderForge.SFN_OneMinus,id:9013,x:32088,y:31811,varname:node_9013,prsc:2|IN-904-UVOUT;proporder:3604-5764;pass:END;sub:END;*/

Shader "Shader Forge/waterPump" {
    Properties {
        _Strength ("Strength", Float ) = 0.2
        _Direction ("Direction", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Strength;
            uniform float _Direction;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_1857 = _Time + _TimeEditor;
                v.vertex.xyz += ((1.0 - (cos((saturate((abs((frac((lerp(o.uv0,(1.0 - o.uv0),_Direction)+node_1857.g*float2(0,1)).g)*2.0+-1.0))*1.5+-0.5))*3.141592654))*0.5+0.5))*v.normal*_Strength);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Strength;
            uniform float _Direction;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_9425 = _Time + _TimeEditor;
                v.vertex.xyz += ((1.0 - (cos((saturate((abs((frac((lerp(o.uv0,(1.0 - o.uv0),_Direction)+node_9425.g*float2(0,1)).g)*2.0+-1.0))*1.5+-0.5))*3.141592654))*0.5+0.5))*v.normal*_Strength);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
