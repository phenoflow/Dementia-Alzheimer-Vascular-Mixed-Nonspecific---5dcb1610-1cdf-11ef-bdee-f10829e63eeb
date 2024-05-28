cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  other-dementia-alzheimer-vascular-mixed-nonspecific---primary:
    run: other-dementia-alzheimer-vascular-mixed-nonspecific---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  arteriosclerotic-dementia-alzheimer-vascular-mixed-nonspecific---primary:
    run: arteriosclerotic-dementia-alzheimer-vascular-mixed-nonspecific---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: other-dementia-alzheimer-vascular-mixed-nonspecific---primary/output
  dementia-alzheimer-vascular-mixed-nonspecific-depression---primary:
    run: dementia-alzheimer-vascular-mixed-nonspecific-depression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: arteriosclerotic-dementia-alzheimer-vascular-mixed-nonspecific---primary/output
  dementia-alzheimer-vascular-mixed-nonspecific-delirium---primary:
    run: dementia-alzheimer-vascular-mixed-nonspecific-delirium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: dementia-alzheimer-vascular-mixed-nonspecific-depression---primary/output
  depressive-dementia-alzheimer-vascular-mixed-nonspecific---primary:
    run: depressive-dementia-alzheimer-vascular-mixed-nonspecific---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: dementia-alzheimer-vascular-mixed-nonspecific-delirium---primary/output
  dementia-alzheimer-vascular-mixed-nonspecific-alzheimer's---primary:
    run: dementia-alzheimer-vascular-mixed-nonspecific-alzheimer's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: depressive-dementia-alzheimer-vascular-mixed-nonspecific---primary/output
  dementia-alzheimer-vascular-mixed-nonspecific-unspecified---primary:
    run: dementia-alzheimer-vascular-mixed-nonspecific-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: dementia-alzheimer-vascular-mixed-nonspecific-alzheimer's---primary/output
  dementia-alzheimer-vascular-mixed-nonspecific-presenile---primary:
    run: dementia-alzheimer-vascular-mixed-nonspecific-presenile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: dementia-alzheimer-vascular-mixed-nonspecific-unspecified---primary/output
  dementia-alzheimer-vascular-mixed-nonspecific-dementium---primary:
    run: dementia-alzheimer-vascular-mixed-nonspecific-dementium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: dementia-alzheimer-vascular-mixed-nonspecific-presenile---primary/output
  dementia-alzheimer-vascular-mixed-nonspecific-degen---primary:
    run: dementia-alzheimer-vascular-mixed-nonspecific-degen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: dementia-alzheimer-vascular-mixed-nonspecific-dementium---primary/output
  dementia-alzheimer-vascular-mixed-nonspecific-uncomplicated---primary:
    run: dementia-alzheimer-vascular-mixed-nonspecific-uncomplicated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: dementia-alzheimer-vascular-mixed-nonspecific-degen---primary/output
  dementia-alzheimer-vascular-mixed-nonspecific-onset---primary:
    run: dementia-alzheimer-vascular-mixed-nonspecific-onset---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: dementia-alzheimer-vascular-mixed-nonspecific-uncomplicated---primary/output
  subcortical-dementia-alzheimer-vascular-mixed-nonspecific---primary:
    run: subcortical-dementia-alzheimer-vascular-mixed-nonspecific---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: dementia-alzheimer-vascular-mixed-nonspecific-onset---primary/output
  dementia-alzheimer-vascular-mixed-nonspecific-paranoia---primary:
    run: dementia-alzheimer-vascular-mixed-nonspecific-paranoia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: subcortical-dementia-alzheimer-vascular-mixed-nonspecific---primary/output
  early-dementia-alzheimer-vascular-mixed-nonspecific---primary:
    run: early-dementia-alzheimer-vascular-mixed-nonspecific---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: dementia-alzheimer-vascular-mixed-nonspecific-paranoia---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: early-dementia-alzheimer-vascular-mixed-nonspecific---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
