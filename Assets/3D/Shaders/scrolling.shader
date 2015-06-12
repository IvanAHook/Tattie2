// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7010,x:33957,y:33112,varname:node_7010,prsc:2|diff-1681-OUT,emission-575-OUT,alpha-7296-OUT;n:type:ShaderForge.SFN_Slider,id:9232,x:32381,y:33744,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_9232,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:575,x:32891,y:33757,varname:node_575,prsc:2|A-5148-OUT,B-9232-OUT;n:type:ShaderForge.SFN_Vector1,id:5148,x:32442,y:33638,varname:node_5148,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:7296,x:32813,y:33961,ptovrint:False,ptlb:Transparancy,ptin:_Transparancy,varname:node_7296,prsc:2,min:0,cur:0.2521368,max:1;n:type:ShaderForge.SFN_Fresnel,id:8884,x:32260,y:32868,varname:node_8884,prsc:2|EXP-9313-OUT;n:type:ShaderForge.SFN_Color,id:4713,x:32757,y:32716,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color_copy,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1898,x:33051,y:32932,varname:node_1898,prsc:2|A-4713-A,B-4600-OUT,C-3046-OUT;n:type:ShaderForge.SFN_Add,id:1681,x:33182,y:32692,varname:node_1681,prsc:2|A-4713-RGB,B-7497-OUT;n:type:ShaderForge.SFN_Clamp01,id:4600,x:32440,y:33041,varname:node_4600,prsc:2|IN-8884-OUT;n:type:ShaderForge.SFN_Slider,id:9313,x:32247,y:32758,ptovrint:False,ptlb:FresnelExponent,ptin:_FresnelExponent,varname:node_5355,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:4172,x:32570,y:33323,varname:node_4172,prsc:2;n:type:ShaderForge.SFN_Sin,id:4245,x:32765,y:33323,varname:node_4245,prsc:2|IN-4172-T;n:type:ShaderForge.SFN_SwitchProperty,id:7497,x:33284,y:32884,ptovrint:False,ptlb:Highlight,ptin:_Highlight,varname:node_2050,prsc:2,on:False|A-5220-OUT,B-1898-OUT;n:type:ShaderForge.SFN_Vector1,id:5220,x:33194,y:33035,varname:node_5220,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:5939,x:33030,y:33357,varname:node_5939,prsc:2|A-4245-OUT,B-6624-OUT;n:type:ShaderForge.SFN_Vector1,id:6624,x:32814,y:33512,varname:node_6624,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Vector1,id:214,x:33005,y:33555,varname:node_214,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:1686,x:33231,y:33432,varname:node_1686,prsc:2|A-5939-OUT,B-214-OUT;n:type:ShaderForge.SFN_RemapRange,id:3046,x:33347,y:33248,varname:node_3046,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:0.8|IN-1686-OUT;proporder:9232-7296-4713-9313-7497;pass:END;sub:END;*/

Shader "Shader Forge/scrolling" {
    Properties {
        _Emission ("Emission", Range(0, 1)) = 1
        _Transparancy ("Transparancy", Range(0, 1)) = 0.2521368
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _FresnelExponent ("FresnelExponent", Range(0, 1)) = 0
        [MaterialToggle] _Highlight ("Highlight", Float ) = 1
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
            uniform float4 _TimeEditor;
            uniform float _Emission;
            uniform float _Transparancy;
            uniform float4 _Color;
            uniform float _FresnelExponent;
            uniform fixed _Highlight;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float node_8884 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExponent);
                float4 node_4172 = _Time + _TimeEditor;
                float node_4245 = sin(node_4172.g);
                float3 diffuseColor = (_Color.rgb+lerp( 1.0, (_Color.a*saturate(node_8884)*(((node_4245+0.3)/2.0)*0.4+0.4)), _Highlight ));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_575 = (1.0*_Emission);
                float3 emissive = float3(node_575,node_575,node_575);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,_Transparancy);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _Emission;
            uniform float _Transparancy;
            uniform float4 _Color;
            uniform float _FresnelExponent;
            uniform fixed _Highlight;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_8884 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExponent);
                float4 node_4172 = _Time + _TimeEditor;
                float node_4245 = sin(node_4172.g);
                float3 diffuseColor = (_Color.rgb+lerp( 1.0, (_Color.a*saturate(node_8884)*(((node_4245+0.3)/2.0)*0.4+0.4)), _Highlight ));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * _Transparancy,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
