module SpotlightMirador
  module ViewHelpers
    def spotlight_mirador_tag(document)
      manifest = document.fetch(manifest_field, nil)
      return unless manifest

      mirador_tag(
        height: '400px',
        options: {
          mainMenuSettings: {
            show: false
          },
          showAddFromURLBox: false,
          windowObjects: [
            {
              viewType: 'ImageView',
              displayLayout: false,
              bottomPanelVisible: false,
              sidePanel: false,
              loadedManifest: manifest,
              canvasControls: {
                annotations: {
                  annotationLayer: false,
                  annotationCreation: false
                },
                imageManipulation: {
                  manipulationLayer: false
                }
              }
            }
          ],
          data: [
            { manifestUri: manifest }
          ]
        }
      )
    end

    private

    def manifest_field
      Spotlight::Engine.config.iiif_manifest_field
    end
  end
end
