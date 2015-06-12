// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9558824,fgcg:0.5693123,fgcb:0.9292224,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1173,x:32893,y:32537,varname:node_1173,prsc:2|alpha-6321-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4233,x:30986,y:32071,varname:node_4233,prsc:2;n:type:ShaderForge.SFN_Subtract,id:402,x:31275,y:32184,varname:node_402,prsc:2|A-4233-XYZ,B-7461-XYZ;n:type:ShaderForge.SFN_Normalize,id:8478,x:31460,y:32184,varname:node_8478,prsc:2|IN-402-OUT;n:type:ShaderForge.SFN_Dot,id:3377,x:31671,y:32271,varname:node_3377,prsc:2,dt:4|A-8478-OUT,B-9515-XYZ;n:type:ShaderForge.SFN_Power,id:6321,x:32447,y:32834,varname:node_6321,prsc:2|VAL-1301-OUT,EXP-6674-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6674,x:32447,y:32986,ptovrint:False,ptlb:Tightness,ptin:_Tightness,varname:node_6674,prsc:2,glob:False,v1:100;n:type:ShaderForge.SFN_Vector4Property,id:7461,x:30991,y:32387,ptovrint:False,ptlb:PlayerPos,ptin:_PlayerPos,varname:node_7461,prsc:2,glob:True,v1:0.5,v2:0.5,v3:0.5,v4:1;n:type:ShaderForge.SFN_Transform,id:9515,x:31637,y:32443,varname:node_9515,prsc:2,tffrom:3,tfto:0|IN-1560-OUT;n:type:ShaderForge.SFN_Vector3,id:1560,x:31450,y:32443,varname:node_1560,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_RemapRange,id:6513,x:31841,y:32271,varname:node_6513,prsc:2,frmn:0,frmx:1,tomn:0,tomx:1.2|IN-3377-OUT;n:type:ShaderForge.SFN_Clamp01,id:3000,x:32000,y:32271,varname:node_3000,prsc:2|IN-6513-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7759,x:31567,y:32754,varname:node_7759,prsc:2,sctp:0;n:type:ShaderForge.SFN_Length,id:601,x:32029,y:32794,varname:node_601,prsc:2|IN-9101-OUT;n:type:ShaderForge.SFN_Subtract,id:1301,x:32225,y:33003,varname:node_1301,prsc:2|A-601-OUT,B-5100-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5100,x:31961,y:33011,ptovrint:False,ptlb:node_5100,ptin:_node_5100,varname:node_5100,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Vector2,id:8430,x:31556,y:32982,varname:node_8430,prsc:2,v1:-0.6,v2:0;n:type:ShaderForge.SFN_Subtract,id:9101,x:31829,y:32794,varname:node_9101,prsc:2|A-7759-UVOUT,B-8430-OUT;proporder:6674-5100;pass:END;sub:END;*/

Shader "Shader Forge/ForegroundFader" {
    Properties {
        _Tightness ("Tightness", Float ) = 100
        _node_5100 ("node_5100", Float ) = 0
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
            uniform float _Tightness;
            uniform float _node_5100;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 screenPos : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
/////// Vectors:
////// Lighting:
                float3 finalColor = 0;
                float node_6321 = pow((length((i.screenPos.rg-float2(-0.6,0)))-_node_5100),_Tightness);
                fixed4 finalRGBA = fixed4(finalColor,node_6321);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
