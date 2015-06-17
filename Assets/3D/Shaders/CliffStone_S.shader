// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7336,x:32719,y:32712,varname:node_7336,prsc:2|diff-7597-OUT,spec-6975-OUT,normal-592-OUT,clip-3222-B;n:type:ShaderForge.SFN_Tex2d,id:6341,x:31740,y:32275,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,tex:4d6568d54fdf1244b9f02c2082ee1baf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9700,x:31944,y:33184,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,tex:9bacd7f0b42049043a53e32ce339766c,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:2140,x:31912,y:32329,varname:node_2140,prsc:2|A-3023-RGB,B-6341-RGB;n:type:ShaderForge.SFN_Color,id:3023,x:31599,y:32227,ptovrint:False,ptlb:node_3023,ptin:_node_3023,varname:_node_3023,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3222,x:31729,y:32991,ptovrint:False,ptlb:node_3222,ptin:_node_3222,varname:_node_3222,prsc:2,tex:cb89008e708e4bc48a4368c06b3ff5fc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:5618,x:31436,y:32429,varname:node_5618,prsc:2;n:type:ShaderForge.SFN_Lerp,id:7597,x:31795,y:32573,varname:node_7597,prsc:2|A-2140-OUT,B-4080-RGB,T-5618-R;n:type:ShaderForge.SFN_Tex2d,id:4080,x:31539,y:32667,ptovrint:False,ptlb:Moss_T,ptin:_Moss_T,varname:_Moss_T,prsc:2,tex:3fb06727ff1b77b47a394012b1326378,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:592,x:32129,y:32907,varname:node_592,prsc:2|A-9700-RGB,B-6489-RGB,T-5618-R;n:type:ShaderForge.SFN_Tex2d,id:6489,x:31741,y:33225,ptovrint:False,ptlb:Moss_N,ptin:_Moss_N,varname:_Moss_N,prsc:2,tex:32f9322402dcb1e45bf48725c0e97e07,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:6975,x:32374,y:32535,varname:node_6975,prsc:2|A-454-OUT,B-5511-OUT,T-5618-B;n:type:ShaderForge.SFN_Slider,id:454,x:32073,y:32445,ptovrint:False,ptlb:node_454,ptin:_node_454,varname:_node_454,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5511,x:32023,y:32560,ptovrint:False,ptlb:node_5511,ptin:_node_5511,varname:_node_5511,prsc:2,min:0,cur:0,max:1;proporder:6341-3023-3222-9700-4080-6489-454-5511;pass:END;sub:END;*/

Shader "Shader Forge/CliffStone_S" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _node_3023 ("node_3023", Color) = (0.5,0.5,0.5,1)
        _node_3222 ("node_3222", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Moss_T ("Moss_T", 2D) = "white" {}
        _Moss_N ("Moss_N", 2D) = "bump" {}
        _node_454 ("node_454", Range(0, 1)) = 0
        _node_5511 ("node_5511", Range(0, 1)) = 0
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float4 _node_3023;
            uniform sampler2D _node_3222; uniform float4 _node_3222_ST;
            uniform sampler2D _Moss_T; uniform float4 _Moss_T_ST;
            uniform sampler2D _Moss_N; uniform float4 _Moss_N_ST;
            uniform float _node_454;
            uniform float _node_5511;
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
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
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
                float3 _Moss_N_var = UnpackNormal(tex2D(_Moss_N,TRANSFORM_TEX(i.uv0, _Moss_N)));
                float3 normalLocal = lerp(_Normal_var.rgb,_Moss_N_var.rgb,i.vertexColor.r);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _node_3222_var = tex2D(_node_3222,TRANSFORM_TEX(i.uv0, _node_3222));
                clip(_node_3222_var.b - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_6975 = lerp(_node_454,_node_5511,i.vertexColor.b);
                float3 specularColor = float3(node_6975,node_6975,node_6975);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _Moss_T_var = tex2D(_Moss_T,TRANSFORM_TEX(i.uv0, _Moss_T));
                float3 diffuseColor = lerp((_node_3023.rgb*_Diffuse_var.rgb),_Moss_T_var.rgb,i.vertexColor.r);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float4 _node_3023;
            uniform sampler2D _node_3222; uniform float4 _node_3222_ST;
            uniform sampler2D _Moss_T; uniform float4 _Moss_T_ST;
            uniform sampler2D _Moss_N; uniform float4 _Moss_N_ST;
            uniform float _node_454;
            uniform float _node_5511;
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
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
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
                float3 _Moss_N_var = UnpackNormal(tex2D(_Moss_N,TRANSFORM_TEX(i.uv0, _Moss_N)));
                float3 normalLocal = lerp(_Normal_var.rgb,_Moss_N_var.rgb,i.vertexColor.r);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _node_3222_var = tex2D(_node_3222,TRANSFORM_TEX(i.uv0, _node_3222));
                clip(_node_3222_var.b - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_6975 = lerp(_node_454,_node_5511,i.vertexColor.b);
                float3 specularColor = float3(node_6975,node_6975,node_6975);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _Moss_T_var = tex2D(_Moss_T,TRANSFORM_TEX(i.uv0, _Moss_T));
                float3 diffuseColor = lerp((_node_3023.rgb*_Diffuse_var.rgb),_Moss_T_var.rgb,i.vertexColor.r);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
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
            uniform sampler2D _node_3222; uniform float4 _node_3222_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _node_3222_var = tex2D(_node_3222,TRANSFORM_TEX(i.uv0, _node_3222));
                clip(_node_3222_var.b - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
