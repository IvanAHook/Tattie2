// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9558824,fgcg:0.5693123,fgcb:0.9292224,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:5767,x:32719,y:32712,varname:node_5767,prsc:2|diff-4976-OUT,normal-7555-OUT;n:type:ShaderForge.SFN_Tex2d,id:6745,x:31163,y:33339,ptovrint:False,ptlb:Root_N,ptin:_Root_N,varname:_Root_N,prsc:2,tex:34752bb116bb08a43a2f8b8ef168ff89,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7511,x:31648,y:32533,ptovrint:False,ptlb:Root_T,ptin:_Root_T,varname:_Root_T,prsc:2,tex:3e0b8e84cafb0df48b5780d9f73754ef,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:8346,x:31627,y:32320,ptovrint:False,ptlb:node_2148,ptin:_node_2148,varname:_node_2148,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:4944,x:31868,y:32397,varname:node_4944,prsc:2|A-8346-RGB,B-7511-RGB;n:type:ShaderForge.SFN_VertexColor,id:2721,x:31156,y:32830,varname:node_2721,prsc:2;n:type:ShaderForge.SFN_Lerp,id:2220,x:31659,y:32830,varname:node_2220,prsc:2|A-1281-RGB,B-4944-OUT,T-2721-R;n:type:ShaderForge.SFN_Tex2d,id:1281,x:31172,y:32590,ptovrint:False,ptlb:Moss_T,ptin:_Moss_T,varname:_Moss_T,prsc:2,tex:3fb06727ff1b77b47a394012b1326378,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:9331,x:31888,y:33117,varname:node_9331,prsc:2|A-291-OUT,B-6745-RGB,T-2721-R;n:type:ShaderForge.SFN_Tex2d,id:4586,x:30745,y:33106,ptovrint:False,ptlb:Moss_N,ptin:_Moss_N,varname:_Moss_N,prsc:2,tex:32f9322402dcb1e45bf48725c0e97e07,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalBlend,id:8954,x:31029,y:33083,varname:node_8954,prsc:2|BSE-4586-RGB,DTL-6745-RGB;n:type:ShaderForge.SFN_Normalize,id:291,x:31179,y:33083,varname:node_291,prsc:2|IN-8954-OUT;n:type:ShaderForge.SFN_Lerp,id:3019,x:32132,y:32715,varname:node_3019,prsc:2|A-2220-OUT,B-6742-RGB,T-2721-G;n:type:ShaderForge.SFN_Tex2d,id:6742,x:31952,y:32802,ptovrint:False,ptlb:node_6742,ptin:_node_6742,varname:_node_6742,prsc:2,tex:82427ccdd1c743042887d869a3e05841,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:5423,x:32196,y:33128,varname:node_5423,prsc:2|A-9331-OUT,B-1999-RGB,T-2721-G;n:type:ShaderForge.SFN_Tex2d,id:1999,x:31952,y:33353,ptovrint:False,ptlb:Dirt_N,ptin:_Dirt_N,varname:_Dirt_N,prsc:2,tex:6d93c68a03993fa4198168eb5ffad660,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:4976,x:32411,y:32860,varname:node_4976,prsc:2|A-3019-OUT,B-9417-RGB,T-2721-B;n:type:ShaderForge.SFN_Tex2d,id:9417,x:32385,y:32513,ptovrint:False,ptlb:Grass_T,ptin:_Grass_T,varname:_Grass_T,prsc:2,tex:f0a8168310b10da4faedc474bb26c20f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:7555,x:32457,y:33130,varname:node_7555,prsc:2|A-5423-OUT,B-1482-RGB,T-2721-B;n:type:ShaderForge.SFN_Tex2d,id:1482,x:32231,y:33297,ptovrint:False,ptlb:Grass_N,ptin:_Grass_N,varname:_Grass_N,prsc:2,tex:067bdfe551b6d3d4591d89b6eadf2d13,ntxv:3,isnm:True;proporder:6745-7511-8346-1281-4586-6742-1999-9417-1482;pass:END;sub:END;*/

Shader "Shader Forge/Roots" {
    Properties {
        _Root_N ("Root_N", 2D) = "bump" {}
        _Root_T ("Root_T", 2D) = "white" {}
        _node_2148 ("node_2148", Color) = (0.5,0.5,0.5,1)
        _Moss_T ("Moss_T", 2D) = "white" {}
        _Moss_N ("Moss_N", 2D) = "bump" {}
        _node_6742 ("node_6742", 2D) = "white" {}
        _Dirt_N ("Dirt_N", 2D) = "bump" {}
        _Grass_T ("Grass_T", 2D) = "white" {}
        _Grass_N ("Grass_N", 2D) = "bump" {}
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
            uniform sampler2D _Root_N; uniform float4 _Root_N_ST;
            uniform sampler2D _Root_T; uniform float4 _Root_T_ST;
            uniform float4 _node_2148;
            uniform sampler2D _Moss_T; uniform float4 _Moss_T_ST;
            uniform sampler2D _Moss_N; uniform float4 _Moss_N_ST;
            uniform sampler2D _node_6742; uniform float4 _node_6742_ST;
            uniform sampler2D _Dirt_N; uniform float4 _Dirt_N_ST;
            uniform sampler2D _Grass_T; uniform float4 _Grass_T_ST;
            uniform sampler2D _Grass_N; uniform float4 _Grass_N_ST;
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
                float3 _Moss_N_var = UnpackNormal(tex2D(_Moss_N,TRANSFORM_TEX(i.uv0, _Moss_N)));
                float3 _Root_N_var = UnpackNormal(tex2D(_Root_N,TRANSFORM_TEX(i.uv0, _Root_N)));
                float3 node_8954_nrm_base = _Moss_N_var.rgb + float3(0,0,1);
                float3 node_8954_nrm_detail = _Root_N_var.rgb * float3(-1,-1,1);
                float3 node_8954_nrm_combined = node_8954_nrm_base*dot(node_8954_nrm_base, node_8954_nrm_detail)/node_8954_nrm_base.z - node_8954_nrm_detail;
                float3 node_8954 = node_8954_nrm_combined;
                float3 _Dirt_N_var = UnpackNormal(tex2D(_Dirt_N,TRANSFORM_TEX(i.uv0, _Dirt_N)));
                float3 _Grass_N_var = UnpackNormal(tex2D(_Grass_N,TRANSFORM_TEX(i.uv0, _Grass_N)));
                float3 normalLocal = lerp(lerp(lerp(normalize(node_8954),_Root_N_var.rgb,i.vertexColor.r),_Dirt_N_var.rgb,i.vertexColor.g),_Grass_N_var.rgb,i.vertexColor.b);
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
                float4 _Moss_T_var = tex2D(_Moss_T,TRANSFORM_TEX(i.uv0, _Moss_T));
                float4 _Root_T_var = tex2D(_Root_T,TRANSFORM_TEX(i.uv0, _Root_T));
                float4 _node_6742_var = tex2D(_node_6742,TRANSFORM_TEX(i.uv0, _node_6742));
                float4 _Grass_T_var = tex2D(_Grass_T,TRANSFORM_TEX(i.uv0, _Grass_T));
                float3 diffuseColor = lerp(lerp(lerp(_Moss_T_var.rgb,(_node_2148.rgb*_Root_T_var.rgb),i.vertexColor.r),_node_6742_var.rgb,i.vertexColor.g),_Grass_T_var.rgb,i.vertexColor.b);
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
            uniform sampler2D _Root_N; uniform float4 _Root_N_ST;
            uniform sampler2D _Root_T; uniform float4 _Root_T_ST;
            uniform float4 _node_2148;
            uniform sampler2D _Moss_T; uniform float4 _Moss_T_ST;
            uniform sampler2D _Moss_N; uniform float4 _Moss_N_ST;
            uniform sampler2D _node_6742; uniform float4 _node_6742_ST;
            uniform sampler2D _Dirt_N; uniform float4 _Dirt_N_ST;
            uniform sampler2D _Grass_T; uniform float4 _Grass_T_ST;
            uniform sampler2D _Grass_N; uniform float4 _Grass_N_ST;
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
                float3 _Moss_N_var = UnpackNormal(tex2D(_Moss_N,TRANSFORM_TEX(i.uv0, _Moss_N)));
                float3 _Root_N_var = UnpackNormal(tex2D(_Root_N,TRANSFORM_TEX(i.uv0, _Root_N)));
                float3 node_8954_nrm_base = _Moss_N_var.rgb + float3(0,0,1);
                float3 node_8954_nrm_detail = _Root_N_var.rgb * float3(-1,-1,1);
                float3 node_8954_nrm_combined = node_8954_nrm_base*dot(node_8954_nrm_base, node_8954_nrm_detail)/node_8954_nrm_base.z - node_8954_nrm_detail;
                float3 node_8954 = node_8954_nrm_combined;
                float3 _Dirt_N_var = UnpackNormal(tex2D(_Dirt_N,TRANSFORM_TEX(i.uv0, _Dirt_N)));
                float3 _Grass_N_var = UnpackNormal(tex2D(_Grass_N,TRANSFORM_TEX(i.uv0, _Grass_N)));
                float3 normalLocal = lerp(lerp(lerp(normalize(node_8954),_Root_N_var.rgb,i.vertexColor.r),_Dirt_N_var.rgb,i.vertexColor.g),_Grass_N_var.rgb,i.vertexColor.b);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Moss_T_var = tex2D(_Moss_T,TRANSFORM_TEX(i.uv0, _Moss_T));
                float4 _Root_T_var = tex2D(_Root_T,TRANSFORM_TEX(i.uv0, _Root_T));
                float4 _node_6742_var = tex2D(_node_6742,TRANSFORM_TEX(i.uv0, _node_6742));
                float4 _Grass_T_var = tex2D(_Grass_T,TRANSFORM_TEX(i.uv0, _Grass_T));
                float3 diffuseColor = lerp(lerp(lerp(_Moss_T_var.rgb,(_node_2148.rgb*_Root_T_var.rgb),i.vertexColor.r),_node_6742_var.rgb,i.vertexColor.g),_Grass_T_var.rgb,i.vertexColor.b);
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
