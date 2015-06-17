// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:5248,x:33354,y:32750,varname:node_5248,prsc:2|diff-598-OUT,normal-6551-OUT,voffset-8607-OUT;n:type:ShaderForge.SFN_Tex2d,id:9920,x:31883,y:32621,ptovrint:False,ptlb:diffuse,ptin:_diffuse,varname:_diffuse,prsc:2,tex:b7b8ef9d05f112048ba68243f6b96ea6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7060,x:31810,y:33441,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,tex:967e6093cdd4a9d4eafc63fcd71cc492,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:4547,x:31824,y:33147,ptovrint:False,ptlb:Normal_copy,ptin:_Normal_copy,varname:_Normal_copy,prsc:2,tex:1cfac8d7cd391cd46b58fa8106209a54,ntxv:3,isnm:True;n:type:ShaderForge.SFN_VertexColor,id:7064,x:30824,y:32728,varname:node_7064,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:5196,x:32049,y:32307,ptovrint:False,ptlb:T_Moss,ptin:_T_Moss,varname:_T_Moss,prsc:2,tex:3fb06727ff1b77b47a394012b1326378,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5990,x:31599,y:33016,ptovrint:False,ptlb:nN_Moss,ptin:_nN_Moss,varname:_nN_Moss,prsc:2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalBlend,id:7385,x:32242,y:32892,varname:node_7385,prsc:2|BSE-5990-RGB,DTL-7060-RGB;n:type:ShaderForge.SFN_Lerp,id:598,x:32282,y:32555,varname:node_598,prsc:2|A-9920-RGB,B-5196-RGB,T-7064-R;n:type:ShaderForge.SFN_Lerp,id:6551,x:32459,y:32892,varname:node_6551,prsc:2|A-7385-OUT,B-7060-RGB,T-7064-R;n:type:ShaderForge.SFN_Time,id:7423,x:30863,y:33173,varname:node_7423,prsc:2;n:type:ShaderForge.SFN_Sin,id:7794,x:31313,y:33151,varname:node_7794,prsc:2|IN-3056-OUT;n:type:ShaderForge.SFN_Add,id:3056,x:31154,y:33151,varname:node_3056,prsc:2|A-7064-B,B-7423-T;n:type:ShaderForge.SFN_Multiply,id:8607,x:31667,y:33312,varname:node_8607,prsc:2|A-7064-G,B-2370-OUT,C-7289-OUT;n:type:ShaderForge.SFN_NormalVector,id:7289,x:31304,y:33440,prsc:2,pt:False;n:type:ShaderForge.SFN_RemapRange,id:2370,x:31492,y:33213,varname:node_2370,prsc:2,frmn:-1,frmx:1,tomn:-0.1,tomx:0.1|IN-7794-OUT;proporder:9920-7060-5196-5990;pass:END;sub:END;*/

Shader "Shader Forge/Oak_S" {
    Properties {
        _diffuse ("diffuse", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _T_Moss ("T_Moss", 2D) = "white" {}
        _nN_Moss ("nN_Moss", 2D) = "bump" {}
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
            uniform sampler2D _diffuse; uniform float4 _diffuse_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _T_Moss; uniform float4 _T_Moss_ST;
            uniform sampler2D _nN_Moss; uniform float4 _nN_Moss_ST;
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
                float4 node_7423 = _Time + _TimeEditor;
                v.vertex.xyz += (o.vertexColor.g*(sin((o.vertexColor.b+node_7423.g))*0.1+0.0)*v.normal);
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
                float3 _nN_Moss_var = UnpackNormal(tex2D(_nN_Moss,TRANSFORM_TEX(i.uv0, _nN_Moss)));
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 node_7385_nrm_base = _nN_Moss_var.rgb + float3(0,0,1);
                float3 node_7385_nrm_detail = _Normal_var.rgb * float3(-1,-1,1);
                float3 node_7385_nrm_combined = node_7385_nrm_base*dot(node_7385_nrm_base, node_7385_nrm_detail)/node_7385_nrm_base.z - node_7385_nrm_detail;
                float3 node_7385 = node_7385_nrm_combined;
                float3 normalLocal = lerp(node_7385,_Normal_var.rgb,i.vertexColor.r);
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
                float4 _diffuse_var = tex2D(_diffuse,TRANSFORM_TEX(i.uv0, _diffuse));
                float4 _T_Moss_var = tex2D(_T_Moss,TRANSFORM_TEX(i.uv0, _T_Moss));
                float3 diffuseColor = lerp(_diffuse_var.rgb,_T_Moss_var.rgb,i.vertexColor.r);
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
            uniform sampler2D _diffuse; uniform float4 _diffuse_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _T_Moss; uniform float4 _T_Moss_ST;
            uniform sampler2D _nN_Moss; uniform float4 _nN_Moss_ST;
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
                float4 node_7423 = _Time + _TimeEditor;
                v.vertex.xyz += (o.vertexColor.g*(sin((o.vertexColor.b+node_7423.g))*0.1+0.0)*v.normal);
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
                float3 _nN_Moss_var = UnpackNormal(tex2D(_nN_Moss,TRANSFORM_TEX(i.uv0, _nN_Moss)));
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 node_7385_nrm_base = _nN_Moss_var.rgb + float3(0,0,1);
                float3 node_7385_nrm_detail = _Normal_var.rgb * float3(-1,-1,1);
                float3 node_7385_nrm_combined = node_7385_nrm_base*dot(node_7385_nrm_base, node_7385_nrm_detail)/node_7385_nrm_base.z - node_7385_nrm_detail;
                float3 node_7385 = node_7385_nrm_combined;
                float3 normalLocal = lerp(node_7385,_Normal_var.rgb,i.vertexColor.r);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _diffuse_var = tex2D(_diffuse,TRANSFORM_TEX(i.uv0, _diffuse));
                float4 _T_Moss_var = tex2D(_T_Moss,TRANSFORM_TEX(i.uv0, _T_Moss));
                float3 diffuseColor = lerp(_diffuse_var.rgb,_T_Moss_var.rgb,i.vertexColor.r);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            uniform float4 _TimeEditor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_7423 = _Time + _TimeEditor;
                v.vertex.xyz += (o.vertexColor.g*(sin((o.vertexColor.b+node_7423.g))*0.1+0.0)*v.normal);
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
