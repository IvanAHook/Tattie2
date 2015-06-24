// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2150,x:33438,y:32613,varname:node_2150,prsc:2|diff-7788-OUT,normal-4908-RGB;n:type:ShaderForge.SFN_Fresnel,id:7825,x:32196,y:32804,varname:node_7825,prsc:2|EXP-5355-OUT;n:type:ShaderForge.SFN_Multiply,id:3328,x:32812,y:32889,varname:node_3328,prsc:2|A-2837-A,B-2147-OUT,C-1133-OUT;n:type:ShaderForge.SFN_Add,id:7788,x:33218,y:32554,varname:node_7788,prsc:2|A-2837-RGB,B-2050-OUT;n:type:ShaderForge.SFN_Clamp01,id:2147,x:32376,y:32977,varname:node_2147,prsc:2|IN-7103-OUT;n:type:ShaderForge.SFN_Slider,id:5355,x:32183,y:32694,ptovrint:False,ptlb:FresnelExponent,ptin:_FresnelExponent,varname:node_5355,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:7103,x:32393,y:32804,varname:node_7103,prsc:2,frmn:0.49,frmx:0.5,tomn:0,tomx:1|IN-7825-OUT;n:type:ShaderForge.SFN_Time,id:9656,x:32506,y:33259,varname:node_9656,prsc:2;n:type:ShaderForge.SFN_Sin,id:247,x:32750,y:33273,varname:node_247,prsc:2|IN-9656-TDB;n:type:ShaderForge.SFN_Clamp01,id:8895,x:33053,y:33140,varname:node_8895,prsc:2|IN-247-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2050,x:33220,y:32820,ptovrint:False,ptlb:Highlight,ptin:_Highlight,varname:node_2050,prsc:2,on:False|A-3830-OUT,B-3328-OUT;n:type:ShaderForge.SFN_Vector1,id:3830,x:33130,y:32971,varname:node_3830,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:2930,x:32940,y:33284,varname:node_2930,prsc:2|A-247-OUT,B-9238-OUT;n:type:ShaderForge.SFN_Vector1,id:9238,x:32686,y:33459,varname:node_9238,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:9768,x:32966,y:33448,varname:node_9768,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:1133,x:33167,y:33368,varname:node_1133,prsc:2|A-2930-OUT,B-9768-OUT;n:type:ShaderForge.SFN_Tex2d,id:2837,x:32538,y:32349,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_2837,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4908,x:32538,y:32534,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_4908,prsc:2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Clamp,id:5192,x:33009,y:32902,varname:node_5192,prsc:2|IN-3328-OUT,MIN-3830-OUT,MAX-4832-OUT;n:type:ShaderForge.SFN_Vector1,id:4832,x:32769,y:33039,varname:node_4832,prsc:2,v1:0.5;proporder:5355-2050-2837-4908;pass:END;sub:END;*/

Shader "Shader Forge/Puckup_S" {
    Properties {
        _FresnelExponent ("FresnelExponent", Range(0, 1)) = 0
        [MaterialToggle] _Highlight ("Highlight", Float ) = 0
        _Texture ("Texture", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _FresnelExponent;
            uniform fixed _Highlight;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float node_3830 = 0.0;
                float4 node_9656 = _Time + _TimeEditor;
                float node_247 = sin(node_9656.b);
                float node_3328 = (_Texture_var.a*saturate((pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExponent)*100.0001+-49.00005))*((node_247+1.0)/2.0));
                float3 diffuseColor = (_Texture_var.rgb+lerp( node_3830, node_3328, _Highlight ));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _FresnelExponent;
            uniform fixed _Highlight;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float node_3830 = 0.0;
                float4 node_9656 = _Time + _TimeEditor;
                float node_247 = sin(node_9656.b);
                float node_3328 = (_Texture_var.a*saturate((pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExponent)*100.0001+-49.00005))*((node_247+1.0)/2.0));
                float3 diffuseColor = (_Texture_var.rgb+lerp( node_3830, node_3328, _Highlight ));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
