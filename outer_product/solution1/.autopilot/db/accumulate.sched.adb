<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>accumulate</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>9</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>agg_result_rowptr</name>
						<fileName>outer_product/src/outer_product.cpp</fileName>
						<fileDirectory>/home/leoh/Documents/spgemm-format-exploration</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>accumulate</contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="7" tracking_level="0" version="0">
								<first>/home/leoh/Documents/spgemm-format-exploration</first>
								<second class_id="8" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="9" tracking_level="0" version="0">
										<first class_id="10" tracking_level="0" version="0">
											<first>outer_product/src/outer_product.cpp</first>
											<second>accumulate</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>agg.result.rowptr</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>2</direction>
				<if_type>1</if_type>
				<array_size>5</array_size>
				<bit_vecs class_id="11" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>agg_result_colind</name>
						<fileName>outer_product/src/outer_product.cpp</fileName>
						<fileDirectory>/home/leoh/Documents/spgemm-format-exploration</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>accumulate</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/leoh/Documents/spgemm-format-exploration</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>outer_product/src/outer_product.cpp</first>
											<second>accumulate</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>agg.result.colind</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>1</if_type>
				<array_size>20</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>agg_result_data_V</name>
						<fileName>outer_product/src/outer_product.cpp</fileName>
						<fileDirectory>/home/leoh/Documents/spgemm-format-exploration</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>accumulate</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/leoh/Documents/spgemm-format-exploration</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>outer_product/src/outer_product.cpp</first>
											<second>accumulate</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>agg.result.data.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>1</if_type>
				<array_size>20</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>csr1_rowptr</name>
						<fileName>outer_product/src/outer_product.cpp</fileName>
						<fileDirectory>/home/leoh/Documents/spgemm-format-exploration</fileDirectory>
						<lineNumber>76</lineNumber>
						<contextFuncName>accumulate</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/leoh/Documents/spgemm-format-exploration</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>outer_product/src/outer_product.cpp</first>
											<second>accumulate</second>
										</first>
										<second>76</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>csr1.rowptr</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>5</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>csr1_colind</name>
						<fileName>outer_product/src/outer_product.cpp</fileName>
						<fileDirectory>/home/leoh/Documents/spgemm-format-exploration</fileDirectory>
						<lineNumber>76</lineNumber>
						<contextFuncName>accumulate</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/leoh/Documents/spgemm-format-exploration</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>outer_product/src/outer_product.cpp</first>
											<second>accumulate</second>
										</first>
										<second>76</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>csr1.colind</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>20</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>csr1_data_V</name>
						<fileName>outer_product/src/outer_product.cpp</fileName>
						<fileDirectory>/home/leoh/Documents/spgemm-format-exploration</fileDirectory>
						<lineNumber>76</lineNumber>
						<contextFuncName>accumulate</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/leoh/Documents/spgemm-format-exploration</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>outer_product/src/outer_product.cpp</first>
											<second>accumulate</second>
										</first>
										<second>76</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>csr1.data.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>20</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_7">
				<Value>
					<Obj>
						<type>1</type>
						<id>7</id>
						<name>csr2_rowptr</name>
						<fileName>outer_product/src/outer_product.cpp</fileName>
						<fileDirectory>/home/leoh/Documents/spgemm-format-exploration</fileDirectory>
						<lineNumber>76</lineNumber>
						<contextFuncName>accumulate</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/leoh/Documents/spgemm-format-exploration</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>outer_product/src/outer_product.cpp</first>
											<second>accumulate</second>
										</first>
										<second>76</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>csr2.rowptr</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>5</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_8">
				<Value>
					<Obj>
						<type>1</type>
						<id>8</id>
						<name>csr2_colind</name>
						<fileName>outer_product/src/outer_product.cpp</fileName>
						<fileDirectory>/home/leoh/Documents/spgemm-format-exploration</fileDirectory>
						<lineNumber>76</lineNumber>
						<contextFuncName>accumulate</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/leoh/Documents/spgemm-format-exploration</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>outer_product/src/outer_product.cpp</first>
											<second>accumulate</second>
										</first>
										<second>76</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>csr2.colind</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>3</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>20</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_9">
				<Value>
					<Obj>
						<type>1</type>
						<id>9</id>
						<name>csr2_data_V</name>
						<fileName>outer_product/src/outer_product.cpp</fileName>
						<fileDirectory>/home/leoh/Documents/spgemm-format-exploration</fileDirectory>
						<lineNumber>76</lineNumber>
						<contextFuncName>accumulate</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/leoh/Documents/spgemm-format-exploration</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>outer_product/src/outer_product.cpp</first>
											<second>accumulate</second>
										</first>
										<second>76</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>csr2.data.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>20</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="12" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="13" tracking_level="1" version="0" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>10</count>
					<item_version>0</item_version>
					<item>15</item>
					<item>16</item>
					<item>17</item>
					<item>18</item>
					<item>19</item>
					<item>20</item>
					<item>21</item>
					<item>22</item>
					<item>23</item>
					<item>24</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="13" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name></name>
						<fileName>outer_product/src/outer_product.cpp</fileName>
						<fileDirectory>/home/leoh/Documents/spgemm-format-exploration</fileDirectory>
						<lineNumber>133</lineNumber>
						<contextFuncName>accumulate</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/leoh/Documents/spgemm-format-exploration</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>outer_product/src/outer_product.cpp</first>
											<second>accumulate</second>
										</first>
										<second>133</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_12">
				<Value>
					<Obj>
						<type>2</type>
						<id>14</id>
						<name>accumulate_Block_pr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:accumulate_Block__pr&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_13">
				<Obj>
					<type>3</type>
					<id>13</id>
					<name>accumulate</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>2</count>
					<item_version>0</item_version>
					<item>11</item>
					<item>12</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>10</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_14">
				<id>15</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_15">
				<id>16</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_16">
				<id>17</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_17">
				<id>18</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_18">
				<id>19</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_19">
				<id>20</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>21</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>22</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>23</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_24">
			<mId>1</mId>
			<mTag>accumulate</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>-1</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_25">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>1</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_26">
						<type>0</type>
						<name>accumulate_Block_pr_U0</name>
						<ssdmobj_id>11</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>9</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_27">
								<port class_id="29" tracking_level="1" version="0" object_id="_28">
									<name>agg_result_rowptr</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_29">
									<type>0</type>
									<name>accumulate_Block_pr_U0</name>
									<ssdmobj_id>11</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_30">
								<port class_id_reference="29" object_id="_31">
									<name>csr1_rowptr</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_29"></inst>
							</item>
							<item class_id_reference="28" object_id="_32">
								<port class_id_reference="29" object_id="_33">
									<name>csr2_rowptr</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_29"></inst>
							</item>
							<item class_id_reference="28" object_id="_34">
								<port class_id_reference="29" object_id="_35">
									<name>csr1_data_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_29"></inst>
							</item>
							<item class_id_reference="28" object_id="_36">
								<port class_id_reference="29" object_id="_37">
									<name>csr2_data_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_29"></inst>
							</item>
							<item class_id_reference="28" object_id="_38">
								<port class_id_reference="29" object_id="_39">
									<name>agg_result_data_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_29"></inst>
							</item>
							<item class_id_reference="28" object_id="_40">
								<port class_id_reference="29" object_id="_41">
									<name>agg_result_colind</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_29"></inst>
							</item>
							<item class_id_reference="28" object_id="_42">
								<port class_id_reference="29" object_id="_43">
									<name>csr1_colind</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_29"></inst>
							</item>
							<item class_id_reference="28" object_id="_44">
								<port class_id_reference="29" object_id="_45">
									<name>csr2_colind</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_29"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</channel_list>
				<net_list class_id="32" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="35" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="36" tracking_level="0" version="0">
			<first>11</first>
			<second class_id="37" tracking_level="0" version="0">
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="38" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="39" tracking_level="0" version="0">
			<first>13</first>
			<second class_id="40" tracking_level="0" version="0">
				<first>0</first>
				<second>1</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="41" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="42" tracking_level="1" version="0" object_id="_46">
			<region_name>accumulate</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</basic_blocks>
			<nodes>
				<count>3</count>
				<item_version>0</item_version>
				<item>10</item>
				<item>11</item>
				<item>12</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="43" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="44" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

