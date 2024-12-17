import ollama
import ctypes  # An included library with Python install.

#  Styles:
#  0 : OK
#  1 : OK | Cancel
#  2 : Abort | Retry | Ignore
#  3 : Yes | No | Cancel
#  4 : Yes | No
#  5 : Retry | Cancel
#  6 : Cancel | Try Again | Continue


def MessageBox(text, title="AI", style=0):
    return ctypes.windll.user32.MessageBoxW(0, text, title, style)


MODEL = "llava:latest"

import cv2
import base64

# Open the webcam
cam_index = 0
fourcc = cv2.VideoWriter_fourcc("M", "J", "P", "G")
cap = cv2.VideoCapture(cam_index, cv2.CAP_DSHOW)
cap.set(cv2.CAP_PROP_FOURCC, fourcc)
cap.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 480)
cap.set(cv2.CAP_PROP_FPS, 30)

if not cap.isOpened():
    print("Error: Could not open webcam.")
    exit()

print("Press 'ESC' to exit.")

last_response = ""

while True:
    # Capture frame-by-frame
    ret, frame = cap.read()
    if not ret:
        print("Error: Failed to capture frame.")
        break

    # Display the captured frame
    cv2.imshow("Webcam Feed", frame)

    key = cv2.waitKey(1) & 0xFF
    if key == 27:  # 27 is the ASCII code for the Escape key
        break

    if key == ord(" "):
        last_response = ""
        print()
        print()
        # Convert the frame to base64
        _, buffer = cv2.imencode(".jpg", frame)
        frame_base64 = base64.b64encode(buffer).decode("utf-8")

        # Generate responses from the model
        responses = ollama.generate(
            MODEL,
            "explain this image in one sentence.",
            images=[frame_base64],
            stream=True,
        )

        # Display the responses
        count = 0
        for response in responses:
            print(response["response"], end="", flush=True)
            last_response += response["response"]
            count += 1
            # if count == 20:
            # break
        MessageBox(last_response)


# Release the webcam and close OpenCV windows
cap.release()
cv2.destroyAllWindows()
