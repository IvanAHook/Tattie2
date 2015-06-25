// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:4288,x:33882,y:32806,varname:node_4288,prsc:2|diff-5483-OUT,spec-4220-OUT,gloss-7977-OUT,alpha-9098-OUT,refract-6796-OUT;n:type:ShaderForge.SFN_Color,id:2982,x:33106,y:32928,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_2982,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:471,x:32805,y:32715,ptovrint:False,ptlb:Spec,ptin:_Spec,varname:node_471,prsc:2,min:0,cur:0,max:2;n:type:ShaderForge.SFN_NormalVector,id:9097,x:32890,y:33082,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:1730,x:33064,y:33085,varname:node_1730,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9097-OUT;n:type:ShaderForge.SFN_Append,id:2313,x:33264,y:33085,varname:node_2313,prsc:2|A-1730-R,B-1730-G;n:type:ShaderForge.SFN_Slider,id:6341,x:33036,y:33283,ptovrint:False,ptlb:Refract,ptin:_Refract,varname:node_6341,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:6796,x:33383,y:33210,varname:node_6796,prsc:2|A-2313-OUT,B-6341-OUT;n:type:ShaderForge.SFN_Slider,id:7977,x:33067,y:32612,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Spec_copy,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Fresnel,id:9663,x:32866,y:32866,varname:node_9663,prsc:2|EXP-7579-OUT;n:type:ShaderForge.SFN_Add,id:9098,x:33349,y:32914,varname:node_9098,prsc:2|A-9663-OUT,B-2982-A;n:type:ShaderForge.SFN_Add,id:4220,x:33304,y:32728,varname:node_4220,prsc:2|A-9663-OUT,B-471-OUT;n:type:ShaderForge.SFN_Add,id:2033,x:33576,y:32837,varname:node_2033,prsc:2|A-9663-OUT,B-2982-RGB;n:type:ShaderForge.SFN_Lerp,id:5483,x:33708,y:32654,varname:node_5483,prsc:2|A-2982-RGB,B-4524-RGB,T-9663-OUT;n:type:ShaderForge.SFN_Color,id:4524,x:33545,y:32522,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_4524,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:7579,x:32488,y:32883,ptovrint:False,ptlb:exp,ptin:_exp,varname:node_7579,prsc:2,min:0,cur:0,max:3;proporder:2982-471-6341-7977-4524-7579;pass:END;sub:END;*/

Shader "Shader Forge/Glass" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Spec ("Spec", Range(0, 2)) = 0
        _Refract ("Refract", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Reflection ("Reflection", Color) = (0.5,0.5,0.5,1)
        _exp ("exp", Range(0, 3)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            uniform sampler2D _GrabTexture;
            uniform float4 _Color;
            uniform float _Spec;
            uniform float _Refract;
            uniform float _Gloss;
            uniform float4 _Reflection;
            uniform float _exp;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 node_1730 = i.normalDir.rg;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (float2(node_1730.r,node_1730.g)*_Refract);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_9663 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_exp);
                float node_4220 = (node_9663+_Spec);
                float3 specularColor = float3(node_4220,node_4220,node_4220);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = lerp(_Color.rgb,_Reflection.rgb,node_9663);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,(node_9663+_Color.a)),1);
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
            uniform sampler2D _GrabTexture;
            uniform float4 _Color;
            uniform float _Spec;
            uniform float _Refract;
            uniform float _Gloss;
            uniform float4 _Reflection;
            uniform float _exp;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 node_1730 = i.normalDir.rg;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (float2(node_1730.r,node_1730.g)*_Refract);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_9663 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_exp);
                float node_4220 = (node_9663+_Spec);
                float3 specularColor = float3(node_4220,node_4220,node_4220);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = lerp(_Color.rgb,_Reflection.rgb,node_9663);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * (node_9663+_Color.a),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
