@globals = {}

globals.apiBaseUrl = "http://54.148.142.11:8081/play/"
#"http://localhost:4000/ba-simple-proxy.php?url=http%3A%2F%2F54.148.142.11%3A8080%2Fplay%2F&full_headers=1&full_status=1"

# this is the number of total steps
globals.quizTotalSteps = 14

# SVG colors
globals.submissionIdOrder = ["GH-04380895", "GH-121371443", "GH-76091181", "GH-5059206475", "GH-1128435973", "GH-5631681770"]

# SVG colors
# blue, yellow, green, pink, orange, purple
globals.colors = ['#00BDD4', '#FBEB34', '#6EC829', '#FAB0C9', '#FFAF3E', '#925D9E']

globals.countdownSecs = 10 

globals.projection_img_dir = "/img/projection/"

# this keeps track of how many types of projection images there are per topic
# stored as constant because better than reading img count from directory each time
globals.projection_img_count = {
	'conceptual':5,
	'curvedstraight':3,
	'femininity':3,
	'finnish':1,
	'fireice':3,
	'historyfuture':4,
	'stoic':3,
	'sunrisesunset':2,
	'sustainable':2,
	'tradition':2}

# all the types of SVGs we'll allow
rect = (x, y, w, h, classes) ->
    obj = { type: 'rect', attrs: { x: x, y: y, width: w, height: h } }
    if classes
        obj.classes = classes
    return obj
circle = (cx, cy, r, classes) ->
    obj = { type: 'circle', attrs: { cx: cx, cy: cy, r: r } }
    if classes
        obj.classes = classes
    return obj
path = (d, classes) ->
    obj = { type: 'path', attrs: { d: d } }
    if classes
        obj.classes = classes
    return obj
polygon = (points, classes) ->
    obj = { type: 'polygon', attrs: { points: points } }
    if classes
        obj.classes = classes
    return obj

# all the SVG icons
globals.svgContent = [[rect(28, 211, 227, 44), rect(28, 119, 227, 45), rect(28, 29, 227, 45)], [rect(177.54, 29, 78, 226), rect(28.54, 29, 76, 226)], [circle(141.762, 141.985, 116.186)], [path('M141.872,81.385c0,32.356-26.229,58.586-58.589,58.586c-32.355,0-58.583-26.23-58.583-58.586   c0-32.355,26.228-58.586,58.583-58.586C115.644,22.798,141.872,49.03,141.872,81.385z'), path('M208.66,23.385c35.736,0,50.383,33.589,50.383,70.302c0,103.695-43.354,164.041-155.837,164.041   c-35.155,0-78.506-14.061-78.506-48.042c0-31.311,26.97-43.501,58.583-45.108c34.566-1.758,57.246-12.383,72.473-36.076   c11.308-17.589,8.579-42.751,8.579-57.264C164.335,43.899,184.39,23.385,208.66,23.385z')], [polygon('226.497,103.829 197.874,141.556 169.906,103.829 141.936,141.556 112.666,103.829 83.396,141.556    56.077,103.829 28.758,141.556 28.758,179.281 56.077,141.556 83.396,179.281 112.666,141.556 141.936,179.281 169.906,141.556    197.874,179.281 226.497,141.556 255.117,179.281 255.117,141.556  '), polygon('226.497,179.661 197.874,217.388 169.906,179.661 141.936,217.388 112.666,179.661 83.396,217.388    56.077,179.661 28.758,217.388 28.758,255.116 56.077,217.388 83.396,255.116 112.666,217.388 141.936,255.116 169.906,217.388    197.874,255.116 226.497,217.388 255.117,255.116 255.117,217.388  '), polygon('226.497,27.998 197.874,65.723 169.906,27.998 141.936,65.723 112.666,27.998 83.396,65.723    56.077,27.998 28.758,65.723 28.758,103.45 56.077,65.723 83.396,103.45 112.666,65.723 141.936,103.45 169.906,65.723    197.874,103.45 226.497,65.723 255.117,103.45 255.117,65.723  ')], [rect(28.7, 28, 46, 44), rect(119.7, 28, 44, 44), rect(211.7, 28, 44, 44), rect(74.7, 72, 45, 46), rect(163.7, 72, 48, 46), rect(28.7, 118, 46, 45), rect(119.7, 118, 44, 45), rect(211.7, 118, 44, 45), rect(74.7, 163, 45, 46), rect(163.7, 163, 48, 46), rect(28.7, 209, 46, 46), rect(119.7, 209, 44, 46), rect(211.7, 209, 44, 46)], [rect(28, 28.54, 69, 29), rect(106, 28.54, 69, 29), rect(185, 28.54, 70, 29), rect(68, 69.54, 69, 28), rect(28, 69.54, 31, 28), rect(146, 69.54, 71, 28), rect(225, 69.54, 30, 28), rect(28, 108.54, 69, 27), rect(106, 108.54, 69, 27), rect(185, 108.54, 70, 27), rect(68, 147.54, 69, 26), rect(28, 147.54, 31, 26), rect(146, 147.54, 71, 26), rect(225, 147.54, 30, 26), rect(28, 185.54, 69, 30), rect(106, 185.54, 69, 30), rect(185, 185.54, 70, 30), rect(68, 226.54, 69, 29), rect(28, 226.54, 31, 29), rect(146, 226.54, 71, 29), rect(225, 226.54, 30, 29)], [path('M252.854,254.958c-1.362,0-2.476-1.224-2.476-2.721V31.261c0-1.497,1.114-2.721,2.476-2.721   s2.476,1.224,2.476,2.721v220.975C255.33,253.733,254.216,254.958,252.854,254.958z'), path('M201.729,254.958c-2.724,0-4.953-2.449-4.953-5.442V33.982c0-2.993,2.229-5.442,4.953-5.442   s4.953,2.449,4.953,5.442v215.534C206.682,252.509,204.453,254.958,201.729,254.958z'), path('M150.602,254.958c-4.086,0-7.429-3.674-7.429-8.163V36.703c0-4.489,3.343-8.163,7.429-8.163   c4.085,0,7.428,3.674,7.428,8.163v210.091C158.03,251.284,154.688,254.958,150.602,254.958z'), path('M99.476,254.958c-6.809,0-12.38-6.122-12.38-13.604V42.145c0-7.482,5.571-13.604,12.38-13.604   c6.81,0,12.381,6.122,12.381,13.604v199.208C111.856,248.835,106.285,254.958,99.476,254.958z'), path('M48.35,254.958c-10.895,0-19.81-9.796-19.81-21.768V50.308c0-11.972,8.915-21.768,19.81-21.768   c10.896,0,19.81,9.796,19.81,21.768V233.19C68.16,245.162,59.245,254.958,48.35,254.958z')], [circle(141.761, 167.258, 75.948), circle(63.667, 84.569, 43.876), circle(219.856, 84.569, 43.876)], [path('M232.924,151.168c-3.524,0-6.881,0.691-9.974,1.911l-0.003-0.009c-1.476,0.58-3.078,0.91-4.759,0.91   c-7.179,0-13-5.821-13-13c0-7.179,5.821-12.999,13-12.999c1.037,0,2.043,0.135,3.01,0.364l0.002-0.004   c1.465,0.348,2.983,0.552,4.554,0.552c10.865,0,19.675-8.809,19.675-19.674c0-10.863-8.81-19.673-19.675-19.673   c-10.002,0-18.243,7.476-19.49,17.138l-0.045-0.005c-1.489,11.557-11.345,20.495-23.307,20.495   c-12.989,0-23.521-10.531-23.521-23.521c0-9.632,5.798-17.901,14.087-21.539l-0.002-0.003c9.559-4.194,16.24-13.728,16.24-24.834   c0-14.978-12.143-27.121-27.124-27.121c-14.976,0-27.119,12.144-27.119,27.121c0,3.776,0.782,7.369,2.176,10.635   c0.923,2.111,1.44,4.439,1.44,6.891c0,9.532-7.728,17.26-17.26,17.26c-9.533,0-17.261-7.728-17.261-17.26   c0-1.642,0.245-3.223,0.674-4.727c0.439-1.572,0.695-3.222,0.695-4.936c0-10.042-8.143-18.183-18.185-18.183   S69.57,55.1,69.57,65.141c0,10.042,8.142,18.184,18.184,18.184c0.323,0,1.635-0.047,1.979-0.047   c10.718,0,19.406,8.688,19.406,19.407c0,10.718-8.688,19.406-19.406,19.406c-5.61,0-10.646-2.393-14.189-6.199l-0.029,0.028   c-5.479-5.884-13.27-9.585-21.941-9.585c-16.569,0-30.004,13.436-30.004,30.006c0,16.572,13.435,30.006,30.004,30.006   c12.047,0,22.405-7.114,27.18-17.353l0.032,0.014c4.577-9.823,14.512-16.646,26.063-16.646c15.892,0,28.773,12.883,28.773,28.773   c0,15.891-12.882,28.772-28.773,28.772c-0.508,0-2.336-0.056-2.755-0.056c-13.143,0-23.799,10.657-23.799,23.798   c0,13.145,10.656,23.8,23.799,23.8c13.144,0,23.799-10.656,23.799-23.8c0-2.773-0.5-5.425-1.373-7.899l0.019-0.008   c-0.679-1.848-1.067-3.836-1.067-5.921c0-9.497,7.698-17.197,17.196-17.197c9.496,0,17.195,7.7,17.195,17.197   c0,4.05-1.41,7.766-3.753,10.705c-3.089,4.417-4.936,9.765-4.936,15.562c0,15.052,12.201,27.252,27.248,27.252   c15.052,0,27.252-12.201,27.252-27.252c0-11.953-7.706-22.085-18.416-25.758c-6.43-1.74-11.167-7.599-11.167-14.579   c0-8.351,6.771-15.119,15.118-15.119c7.458,0,13.64,5.402,14.88,12.502l0.021-0.003c2.237,12.798,13.378,22.536,26.814,22.536   c15.051,0,27.251-12.201,27.251-27.252C260.175,163.37,247.975,151.168,232.924,151.168z')], [polygon('190.783,119.57 214.582,56.366 175.389,93.351 167.909,46.79 155.443,83.535 127.518,22.225    136.161,100.062 97.596,59.44 122.117,115.278 48.227,77.395 99.099,123.862 33.266,109.404 87.003,138.687 17.558,152.042    95.195,155.073 22.794,213.379 110.022,169.118 89.367,213.379 122.117,189.796 112.182,261.253 142.405,176.259 149.957,232.08    161.912,183.163 200.824,239.56 176.347,176.141 224.012,199.914 177.909,158.584 265.902,161.766 185.321,141.74 253.186,121.372     ')], [rect(46.095, 219.67, 192.309, 11.583), rect(28.847, 242.836, 226.804, 11.582), rect(70.906, 102.572, 21.597, 21.596), rect(111.332, 102.572, 21.597, 21.596), rect(151.757, 102.572, 21.596, 21.596), rect(192.181, 102.572, 21.597, 21.596), rect(70.906, 141.435, 21.597, 21.596), rect(111.332, 141.435, 21.597, 21.596), rect(151.757, 141.435, 21.596, 21.596), rect(192.181, 141.435, 21.597, 21.596), rect(70.906, 180.298, 21.597, 21.597), rect(111.332, 180.298, 21.597, 21.597), rect(151.757, 180.298, 21.596, 21.597), rect(192.181, 180.298, 21.597, 21.597), polygon('50.28,86.54 141.786,27.16 233.254,86.54  ')], [polygon('224.99,64.349 37.587,64.613 37.246,28.497 224.651,28.235  '), polygon('256.204,104.382 44.271,115.322 42.632,80.199 254.563,69.258  '), polygon('250.093,184.872 93.385,147.947 100.222,116.885 256.93,153.807  '), polygon('259.418,206.741 50.75,211.419 50.097,192.333 258.766,187.66  '), polygon('229.579,255.621 41.226,252.445 42.044,214.447 230.396,217.622  '), polygon('138.087,184.315 25.233,186.757 25.233,161.158 138.087,163.516  '), polygon('157.339,113.733 253.905,112.204 249.986,139.108 155.114,125.845  ')], [polygon('26.188,252.871 46.019,255.115 40.873,176.945 29.223,176.583  '), polygon('62.164,255.115 56.151,177.671 80.297,179.914 84.811,253.674  '), polygon('97.656,252.257 99.945,179.914 112.333,178.32 115.584,255.115  '), polygon('126.528,255.115 129.021,178.32 144.841,179.914 144.841,255.115  '), polygon('162.07,253.481 164.021,178.32 186.632,182.457 189.701,255.115  '), polygon('202.163,252.871 204.113,179.914 222.1,178.32 217.996,251.036  '), polygon('234.02,252.871 237.777,180.327 252.44,178.32 255.691,255.115  '), polygon('40.873,176.945 48.512,104.921 61.296,103.139 56.151,177.671  '), polygon('80.297,179.914 99.945,179.914 97.656,108.152 75.385,104.921  '), polygon('112.333,178.32 117.282,110.091 132.309,110.091 129.021,178.32  '), polygon('144.841,179.914 144.841,108.152 163.587,110.091 164.021,178.32  '), polygon('186.632,182.457 183.308,108.152 202.163,104.921 204.113,179.914  '), polygon('222.1,178.32 237.777,180.327 236.62,106.325 224.197,103.139  '), polygon('29.223,103.139 48.512,104.921 43.743,25.491 29.223,27.23  '), polygon('61.296,103.139 61.296,25.491 74.95,29.258 75.385,104.921  '), polygon('97.656,108.152 93.154,31.578 109.625,33.024 117.282,110.091  '), polygon('132.309,110.091 144.841,108.152 142.457,31.578 123.928,29.258  '), polygon('163.587,110.091 163.587,34.761 179.19,31.578 183.308,108.152  '), polygon('202.163,104.921 200.428,29.258 214.732,29.258 224.197,103.139  '), polygon('236.62,106.325 232.72,31.578 246.805,31.578 253.914,108.152  ')], [circle(110.456, 106.88, 29.485), circle(165.4, 133.044, 26.465), circle(158.558, 82.729, 18.013), circle(130.079, 66.326, 9.862), circle(96.469, 52.994, 20.729), circle(124.444, 37.899, 5.635), circle(124.444, 50.226, 2.818), circle(137.224, 47.508, 5.938), circle(73.324, 80.164, 9.862), circle(62.758, 58.73, 7.548), circle(68.041, 37.347, 5.283), circle(42.228, 62.807, 8.552), circle(78.104, 160.565, 25.61), circle(124.887, 156.088, 14.088), circle(160.067, 203.385, 37.434), circle(91.515, 223.891, 28.052), circle(112.569, 182.755, 7.648), circle(106.833, 143.71, 1.912), circle(56.542, 195.837, 9.056), circle(50.779, 217.523, 6.769), circle(35.259, 175.537, 13.712), circle(42, 145.747, 8.78), circle(227.214, 81.548, 27.499), circle(216.722, 162.428, 26.063), circle(187.539, 98.83, 8.755), circle(208.259, 121.048, 9.569), circle(245.753, 134.402, 8), circle(253.753, 153.623, 4.579), circle(188.445, 76.943, 5.434), circle(178.984, 54.05, 10.465), circle(201.023, 52.994, 4.931), circle(155.287, 52.287, 6.088), circle(147.69, 36.591, 4.528), circle(214.059, 47.408, 3.774), circle(212.948, 203.132, 8.201), circle(210.284, 229.489, 11.77), path('M74.179,112.916c0,11.116-9.011,20.128-20.126,20.128c-11.115,0-20.126-9.012-20.126-20.128    c0-11.113,9.011-20.126,20.126-20.126C65.168,92.79,74.179,101.803,74.179,112.916z'), path('M243.341,217.523c0,5.752-4.666,10.415-10.419,10.415c-5.75,0-10.416-4.663-10.416-10.415    s4.665-10.415,10.416-10.415C238.676,207.108,243.341,211.771,243.341,217.523z'), path('M243.341,195.232c0,3.433-2.782,6.216-6.217,6.216c-3.432,0-6.213-2.783-6.213-6.216    c0-3.43,2.782-6.214,6.213-6.214C240.559,189.019,243.341,191.803,243.341,195.232z')], [path('M111.992,218.629c0-9.206-1.987-15.565-6.42-22.195c-4.432-6.629-15.114-14.779-15.114-22.248   c0-7.47,4.981-12.822,11.58-12.822c6.594,0,15.305,3.423,23.104,13.162c7.25,9.055,13.247,26.156,16.086,38.606   c2.878,12.621,11.496,25.12,26.282,25.897c11.46,0.601,20.204-4.339,25.229-16.392c4.306-10.322,12.741-23.681,32.908-23.681   c20.165,0,33.238-17.429,33.238-32.489c0-23.174-15.314-24.174-18.658-41.306c-2.958-15.169,7.587-18.757,7.587-38.974   c0-25.879-23.293-39.253-39.346-39.253c-16.052,0-21.334,3.799-31.746,14.562c-4.182,4.321-11.975,10.238-21.247,10.238   c-10.117,0-19.089-12.236-25.8-20.07c-13.195-15.405-22.904-25.029-51.536-25.029c-27.887,0-54.569,27.55-54.569,58.257   c0,37.133,28.549,45.1,28.549,73.858c0,27.258-19.791,32.361-19.791,58.63c0,17.428,14.44,40.571,39.083,40.571   C96.055,257.952,111.992,239.04,111.992,218.629z M72.362,119.129c-3.637-1.673-8.108-5.098-9.925-11.123   c-1.2-3.98,0.546-11.232,3.491-14.723c4.826-5.722,9.268-8.778,15.484-11.233c12.071-4.765,23.062-5.146,27.992-0.185   c5.135,5.164,3.182,19.129-6.947,29.194C92.331,121.128,78.979,122.171,72.362,119.129z M150.583,149.812   c-6.065-22.32-1.643-42.535,9.627-46.012c16.088-4.964,25.726,12.072,31.79,34.391c6.066,22.319,6.505,43.824-9.826,46.428   C170.525,186.479,156.646,172.129,150.583,149.812z')], [polygon('28.548,149.004 42.23,149.004 28.548,142.184    '), polygon('28.548,122.083 69.242,122.083 28.548,101.785    '), polygon('122.383,27.409 28.548,27.409 28.548,35.465 63.25,52.774 28.548,52.774 28.548,75.866      36.223,79.692 28.548,79.692 28.548,95.166 96.267,95.166 42.272,68.247 123.296,68.247 69.328,41.328 150.308,41.328    '), polygon('181.013,68.246 255.116,68.246 255.116,64.796 208.068,41.328 255.116,41.328 255.116,27.409     151.146,27.409 201.988,52.771 120.966,52.771 174.978,79.689 93.998,79.689 147.965,106.609 66.943,106.609 120.938,133.527     39.947,133.527 93.913,160.445 28.548,160.445 28.548,168.25 66.9,187.365 28.548,187.365 28.548,208.624 39.891,214.28     28.548,214.28 28.548,229.756 99.936,229.756 45.969,202.838 126.947,202.838 72.936,175.918 153.958,175.918 99.992,149.001     180.984,149.001 126.99,122.083 208.01,122.083 154.044,95.163 235.021,95.163   '), polygon('255.116,79.687 232.738,79.687 255.116,90.848    '), polygon('255.116,106.604 205.683,106.604 255.116,131.246    '), polygon('255.116,214.279 236.376,214.279 255.116,223.621   '), polygon('28.548,234.56 28.548,255.115 69.778,255.115    '), polygon('255.116,133.527 178.716,133.527 232.683,160.443 151.66,160.443 205.655,187.362     124.661,187.362 178.628,214.28 97.607,214.28 151.617,241.197 70.637,241.197 98.539,255.115 208.539,255.115 157.653,229.753     238.675,229.753 184.708,202.836 255.116,202.836 255.116,197.562 211.705,175.918 255.116,175.918 255.116,157.158     238.761,148.998 255.116,148.998   '), polygon('209.378,241.196 237.282,255.115 255.116,255.115 255.116,241.196    '), path('M255.116,255.115')], [polygon('210.04,208.789 268.332,107.782 210.017,74.127    '), polygon('74.026,209.635 74,74.1 209.925,74.075 107.783,15.128 15.128,175.679 175.679,268.332      209.566,209.609    '), polygon('152.364,150.977 160.627,136.664 152.362,131.896    '), polygon('132.043,152.109 146.797,160.625 151.713,152.107    '), polygon('131.657,131.589 151.83,131.588 136.664,122.834 122.834,146.797 131.658,151.889    '), path('M160.327,73.961l-86.264,49.826l49.649,85.959l86.264-49.825L160.327,73.961z M92.601,154.904    l35.955-62.303l62.305,35.955l-35.956,62.302L92.601,154.904z'), path('M168.094,115.46l-52.156,0.01l0.011,52.779l52.156-0.01L168.094,115.46z M116.015,134.764l32.857-18.978    l19.153,33.157l-32.858,18.979L116.015,134.764z')], [path('M216.965,88.646l0.002,0.001c-13.114-23.238-32.666-32.739-43.63-37.548    c-10.965-4.81-26.545-7.311-30.969-7.887c-4.424-0.576-11.157-3.271-18.467-3.464c-7.307-0.189-33.084-1.73-44.818-3.653    c-8.805-1.441-34.867-6.135-47.328-8.388c-1.197,2.873-2.583,6.658-3.467,10.543c10.74,1.993,44.589,8.314,55.221,10.733    c12.695,2.888,30.968,5.002,40.01,5.771c9.038,0.769,30.777,3.077,41.163,4.422c10.388,1.348,22.123,3.657,22.123,3.657    c7.393,3.495,12.992,11.205,15.7,15.538c-15.998-9.198-50.939-11.502-75.332-13.038c-24.427-1.539-45.588-5.194-60.398-6.541    c-11.293-1.027-29.656-2.836-37.749-3.636c0,0-0.871,1.313-0.774,4.677c0.086,2.991,0.556,7.681,1.873,12.521    c11.89,1.518,41.954,5.15,64.157,6.057c28.276,1.154,63.285,0.771,87.138,4.039c23.851,3.271,38.083,9.62,38.083,9.62    S219.254,90.944,216.965,88.646z'), path('M217.962,100.151c-14.233-3.462-68.095-2.5-91.945-2.5c-23.852,0-51.868-2.938-76.75-9.812    c-8.417-2.325-13.032-5.403-17.338-9.122c0.167,2.267,0.264,7.264,0.842,9.931c0.204,0.943,0.395,2.1,0.562,3.376    c14.241,5.16,32.944,11.954,45.119,16.398c14.759,5.386,58.336,5.386,79.112,3.848c20.775-1.54,49.819-3.653,62.899,0.191    c13.081,3.847,20.774,13.273,20.774,13.273C238.353,111.691,232.196,103.614,217.962,100.151z'), path('M236.621,136.12c-5.962-4.617-29.043-17.312-48.47-17.312c-19.431,0-51.171,7.31-61.556,9.619    c-10.387,2.31-24.62,0.768-38.085-3.079c-9.979-2.852-40.044-13.404-54.955-18.683c-0.187,1.054-0.441,1.923-0.784,2.508    c-1.923,3.271-1.842,7.004-0.248,11.197c0.003,0.006,0.005,0.012,0.009,0.02c14.332,3.717,28.182,9.451,41.936,15.346    c16.157,6.926,26.737,9.619,40.393,9.619c13.657,0,25.583-4.811,35.969-7.886c10.388-3.073,22.121-6.926,32.896-6.926    c10.771,0,23.851,6.154,30.198,10.387c6.347,4.233,16.734,9.235,21.734,12.312c5.001,3.077,8.467,7.306,8.467,7.306    C244.125,151.702,242.583,140.736,236.621,136.12z'), path('M245.278,173.246c-4.041-9.233-12.696-14.429-21.159-16.927c-8.465-2.502-30.391-8.465-39.432-8.465    c-9.04,0-24.238,2.888-32.701,5.963c-8.463,3.078-23.66,8.08-39.817,8.08c-16.159,0-43.666-12.697-58.863-17.12    c-7.596-2.211-14.68-3.511-19.864-4.259c-0.32,3.861-0.265,7.924,0.745,10.973c1.115,3.357,2.709,5.855,3.667,8.79    c0.645,0.094,1.303,0.183,1.988,0.267c9.233,1.155,24.046,6.35,33.856,9.043c9.81,2.693,32.505,7.885,42.125,7.885    c9.617,0,19.812-3.27,32.506-7.116c12.696-3.846,23.469-5.771,36.548-5.771c13.081,0,50.012,9.617,55.397,12.887    c5.387,3.273,9.235,9.428,9.235,9.428S249.316,182.478,245.278,173.246z'), path('M238.544,192.48c-7.502-2.114-28.66-10.579-49.626-10.579c-20.967,0-57.516,11.734-74.058,11.734    c-16.541,0-52.512-8.463-68.479-11.734c-5.304-1.089-9.425-1.934-12.595-2.589c-2.244,2.513-3.233,5.888-2.169,8.916    c1.148,3.29,3.797,7.999,7.325,10.909c20.899,5.359,53.224,10.463,68.033,10.463c18.849,0,42.701-5.193,53.28-7.119    c10.579-1.922,26.739-3.652,38.279-1.73c11.541,1.925,39.047,8.85,45.396,11.733c6.347,2.888,8.656,7.888,8.656,7.888    s0.897-6.73,0.897-12.695C253.484,201.713,246.048,194.597,238.544,192.48z'), path('M234.764,226.849c-6.669-3.076-19.75-7.693-41.036-7.693c-21.288,0-60.528,7.181-111.31,7.181    c-16.346,0-31.167-2.754-41.665-5.408l0,0c1.442,3.271,2.831,17.229,10.501,20.83c6.633,1.031,14.314,1.761,22.825,1.761    c56.169,0,81.689-3.846,102.207-4.359c20.519-0.512,34.366-1.795,41.805-3.333c7.437-1.539,13.081-1.283,15.643,1.024    c2.567,2.309,7.887,11.798,9.235,15.357c1.346,3.558,3.176,4.519,4.712,4.519c1.54,0,5.803-3.717,5.803-12.438    C253.484,235.057,241.429,229.927,234.764,226.849z')], [path('M183.852,210.909c0,0-0.927,1.13-2.649,2.002c-1.721,0.875-3.507,1.123-3.507,1.123   c0.036-0.559,3.708-56.398,4.926-86.373c1.215-29.908,0.013-58.145,0-58.426l4.925-0.213c0.014,0.283,1.224,28.728,0.002,58.839   C186.328,157.897,183.889,210.349,183.852,210.909z'), path('M200.88,199.086l-3.103,2.162c0.031-0.374,3.646-39.185,3.646-61.472V81.808h2.466v57.969   C203.889,162.165,200.911,198.709,200.88,199.086z'), path('M223.463,200.584l-3.858,1.997c1.619-18.622,3.466-121.071,3.485-122.104l3.697,0.067   C226.769,81.577,225.093,181.839,223.463,200.584z'), path('M230.689,191.654l-3.388,2.139c0.016-0.3,1.446-29.942,2.056-43.446   c0.608-13.488,1.022-60.609,1.026-61.081l1.849,0.016c-0.006,0.475-0.419,47.626-1.03,61.148   C230.594,163.937,230.705,191.354,230.689,191.654z'), path('M247.381,191.694l-2.205,1.59c0.043-0.765,4.506-76.688,3.694-103.455l1.848-0.056   C251.532,116.621,247.425,190.93,247.381,191.694z'), path('M252.131,196.197l-3.769,2.172c3.745-37.685,2.575-112.878,2.563-113.632l3.082-0.049   C254.018,85.445,255.895,158.336,252.131,196.197z'), path('M217.337,219.886c0,0-4.022,3.161-7.784,5.032c-3.763,1.87-10.288,3.954-10.288,3.954   c0.021-0.579,2.171-58.757,3.39-88.623c1.208-29.596,0.008-85.141-0.005-85.698l16.637-0.366   c0.049,2.298,1.223,56.631-0.005,86.743C218.064,170.765,217.358,219.306,217.337,219.886z'), path('M176.438,215.64l-5.63,3.424c0.01-0.386,1.011-38.746,0.002-58.54c-0.839-16.456-1.396-60.789-1.696-84.604   c-0.067-5.265-0.117-9.407-0.155-11.841l5.546-0.086c0.038,2.438,0.088,6.585,0.155,11.857c0.301,23.779,0.856,68.041,1.689,84.391   C177.372,180.249,176.448,215.254,176.438,215.64z'), path('M160.125,211.068l-4.005,2.15c0.043-1.36,0.162-4.259,0.322-8.203c0.576-14.088,1.774-43.401,1.937-61.805   c0.204-23.418,0.617-73.374,0.617-73.374l3.696,0.03c0,0-0.41,49.956-0.618,73.374c-0.161,18.463-1.361,47.818-1.937,61.924   C159.978,209.098,160.168,209.716,160.125,211.068z'), path('M151.817,208.424l-3.3,1.338c0.006-0.323,1.248-32.992,2.469-58.093   c1.216-25.062,2.246-77.842,2.256-78.373l2.466,0.047c-0.01,0.532-1.042,53.348-2.261,78.444   C152.23,176.844,151.822,208.102,151.817,208.424z'), path('M137.87,230.819c0,0-3.077,2.469-6.213,4.061s-7.792,3.049-7.792,3.049   c0.052-0.783,5.353-78.555,6.771-109.554c1.417-30.978,2.246-82.728,2.252-83.248l12.941,0.206   c-0.008,0.521-0.84,52.466-2.265,83.634C142.141,160.107,137.924,230.036,137.87,230.819z'), path('M99.23,259.065c-2.497-5.824-2.498-18.268-2.06-27.685c0.233-5.012,0.682-13.391,1.248-24.002   c1.435-26.804,3.601-67.314,4.704-98.665c1.517-43.095,1.837-84.309,1.841-84.721l25.883,0.191   c-0.002,0.416-0.325,41.975-1.856,85.439c-1.11,31.587-3.286,72.239-4.724,99.137c-0.563,10.56-1.01,18.9-1.239,23.827   c-0.611,13.109,1.769,15.402,1.812,15.574c0-0.003-4.22,3.397-12.223,6.626C105.477,257.661,99.23,259.065,99.23,259.065z'), path('M93.1,239.757c0,0-2.665,2.267-5.917,3.765c-4.145,1.91-6.339,2.153-6.339,2.153   c0.922-9.84,4.231-96.43,5.097-123.241c0.914-28.287,2.45-84.487,2.464-85.054l10.473,0.285   c-0.015,0.565-1.552,56.793-2.465,85.106C95.506,150.788,94.057,229.553,93.1,239.757z'), path('M77.453,226.909l-5.618,3.307c0.092-1.432,9.249-143.621,9.856-177.375l4.929,0.088   C86.01,86.8,77.547,225.475,77.453,226.909z'), path('M84.541,222.798l-5.612,2.602c2.124-20.922,5.196-166.275,5.227-167.742l4.93,0.105   C88.961,63.753,86.684,201.68,84.541,222.798z'), path('M48.412,241.445c0,0-0.917,0.779-2.543,1.516c-1.626,0.732-3.001,0.986-3.001,0.986   c0.022-0.459,2.154-46.475,2.154-90.992c0-44.556-1.068-113.08-1.079-113.77l4.929-0.077c0.012,0.688,1.081,69.254,1.081,113.847   C49.953,197.59,48.433,240.983,48.412,241.445z'), path('M42.363,243.461c0,0-1.104,0.951-3.505,2.157c-2.4,1.21-4.159,1.697-4.159,1.697   c1.52-40.131,0.786-209.807,0.77-211.512l6.781-0.062C42.262,37.448,43.888,203.174,42.363,243.461z'), path('M51.185,225.553c-0.006-0.456-0.592-46.064,1.544-79.338c2.132-33.187,4.596-88.158,4.62-88.709   l3.695,0.164c-0.025,0.552-2.492,55.562-4.626,88.782c-2.126,33.131-1.08,76.46-1.073,76.918L51.185,225.553z'), path('M68.441,213.413l-4.622,3.053c0.019-0.584,3.397-119.132,4.005-149.872l2.466,0.049   C69.68,97.397,68.46,212.829,68.441,213.413z'), path('M73.073,211.979l-2.781,1.648c0.043-0.975,4.293-97.859,2.771-144.115l2.465-0.083   C77.051,115.781,73.118,211.005,73.073,211.979z')], [path('M187.421,106.356c-6.187-7.951-19.336-21.289-37.883-21.289c-14.016,0-27.949,4.176-38.228,11.457    c-14.919,10.57-24.188,27.772-24.188,44.893c0,29.383,27.463,58.22,55.446,58.22c14.541,0,29.703-6.859,41.599-18.82    c11.216-11.277,17.912-25.403,17.912-37.787C202.08,132.366,196.189,117.628,187.421,106.356z M145.86,185.089    c-25.973,0-41.479-15.675-41.479-41.93c0-15.601,5.311-28.383,14.569-35.068c8.844-6.385,22.467-7.123,31.944-7.123    c11.815,0,20.994,9.473,25.416,15.12c6.803,8.683,11.03,19.056,11.03,27.071C187.339,167.868,165.479,185.089,145.86,185.089z'), path('M150.248,107.91c-6.269,0-19.165,2.167-27.08,7.986c-7.21,5.299-10.425,13.448-10.425,26.423    c0,23.439,17.229,36.088,33.441,36.088c16.313,0,33.567-18.55,33.567-36.088C179.751,121.314,162.277,107.91,150.248,107.91z     M144.053,165.342c-12.23,0-19.539-10.983-19.539-21.603c0-6.791,0.75-14.283,6.316-18.358c4.399-3.223,12.727-4.665,19.029-4.665    c11.812,0,17.992,11.582,17.992,23.023C167.852,155.455,153.233,165.342,144.053,165.342z'), path('M148.829,126.624c-12.25,0-17.76,8.65-17.76,14.793c0,6.142,4.308,14.79,13.886,14.79    c9.098,0,15.438-7.796,15.438-14.791C160.393,134.145,156.067,126.624,148.829,126.624z M145.455,137.676    c0.983,0,2.843,0.636,2.843,3.041c0,1.716-0.908,4.439-3.343,4.439c-2.906,0-3.34-2.781-3.34-4.439    C141.615,138.223,144.387,137.676,145.455,137.676z'), path('M223.778,57.535c-14.462-12.007-53.417-30.159-79.176-30.159c-17.392,0-48.988,15.988-58.258,20.889    C68.579,57.655,46.235,71.648,41.73,80.176c-7.341,13.901-15.202,43.745-15.202,66.017c0,24.152,20.057,80.407,56.826,97.357    c22.106,10.188,42.363,15.143,61.927,15.144c0.002,0,0.003,0,0.005,0c16.97,0,33.691-3.886,49.697-11.55    c37.631-18.021,61.947-57.646,61.947-100.951C256.931,92.008,239.213,70.351,223.778,57.535z M238.834,147.868    c0,26.05-11.736,50.368-33.046,68.476c-18.066,15.351-41.696,24.888-61.67,24.888c-36.843,0-83.883-39.787-90.825-55.404    c-6.328-14.241-12.104-55.814-2.555-81.012c9.227-24.349,53.021-58.311,103.382-58.311    C205.046,46.505,238.834,107.515,238.834,147.868z'), path('M150.894,56.803c-42.987,0-91.066,35.799-91.066,83.711c0,40.894,29.747,84.677,74.03,84.677    c24.35,0,46.917-6.242,63.545-17.577c20.539-14,31.395-35.396,31.395-61.873c0-19.272-8.694-41.356-23.258-59.074    C189.94,67.688,170.022,56.803,150.894,56.803z M137.729,209.354c-15.331,0-30.866-6.946-42.622-19.058    c-12.664-13.047-19.637-30.728-19.637-49.783c0-20.006,10.344-38.687,28.379-51.253c15.947-11.113,34.757-15.072,47.043-15.072    c13.331,0,28.509,8.89,41.644,24.39c12.478,14.724,20.229,32.499,20.229,46.388C212.766,186.426,168.398,209.354,137.729,209.354z    ')], [path('M235.765,108.145c-11.413-3.522-23.79-0.75-29.445-0.75c-5.653,0-9.92-4.354-9.92-9.707   c0-5.475,2.739-10.383,11.702-10.383c9.228,0,26.564,14.99,31.185,18.17c4.105,2.829,9.032,4.287,12.693,1.71   c3.577-2.523,1.813-11.203-7.148-20.913c-8.961-9.705-26.137-13.227-35.739-13.227c-9.599,0-12.586,8.319-19.199,8.319   c-6.615,0-9.812-5.865-9.812-10.665c0-4.801,5.864-8.644,10.347-8.644c4.479,0,8.746,1.601,13.652,3.628s11.203,3.947,17.281,3.947   c6.082,0,10.673-6.826,5.016-12.483c-5.654-5.654-13.977-8.853-18.885-8.853c-4.904,0-8.958,1.708-11.519,3.627   c-2.56,1.921-6.938,6.188-12.164,6.188c-5.225,0-9.492-3.948-9.492-9.391c0-5.44,4.268-9.066,8.643-9.066   c4.374,0,6.628,1.814,9.354,4.34c2.295,2.128,4.725,3.599,7.252,2.453c2.283-1.033,3.397-2.697,2.812-5.519   c-0.625-3.016-3.612-5.522-10.013-8.401c-6.4-2.884-21.125-6.03-31.433-4.927c-8.273,0.884-12.905,4.907-12.905,10.881   c0,5.976,4.05,10.667,4.05,16.003c0,5.334-4.8,8.961-10.347,8.961c-5.548,0-10.349-3.627-10.349-8.961   c0-5.336,4.052-10.027,4.052-16.003c0-5.974-4.632-9.997-12.906-10.881c-10.31-1.104-25.031,2.043-31.433,4.927   c-6.402,2.879-9.39,5.386-10.014,8.401c-0.583,2.821,0.527,4.485,2.812,5.519c2.527,1.146,4.957-0.325,7.254-2.453   c2.725-2.525,4.98-4.34,9.356-4.34c4.372,0,8.642,3.626,8.642,9.066c0,5.442-4.27,9.391-9.495,9.391   c-5.229,0-9.603-4.268-12.163-6.188c-2.56-1.919-6.613-3.627-11.52-3.627c-4.908,0-13.23,3.198-18.886,8.853   c-5.654,5.657-1.063,12.483,5.019,12.483c6.079,0,12.373-1.92,17.279-3.947c4.908-2.027,9.173-3.628,13.654-3.628   c4.482,0,10.35,3.843,10.35,8.644c0,4.8-3.203,10.665-9.815,10.665c-6.614,0-9.601-8.319-19.203-8.319   c-9.601,0-26.774,3.521-35.738,13.227c-8.96,9.71-10.724,18.39-7.146,20.913c3.658,2.577,8.586,1.119,12.693-1.71   c4.62-3.18,21.957-18.17,31.185-18.17c8.96,0,11.7,4.908,11.7,10.383c0,5.353-4.267,9.707-9.92,9.707s-18.032-2.772-29.445,0.75   c-11.412,3.52-22.83,17.707-22.83,26.989c0,9.28,5.444,13.332,12.054,13.332c6.618,0,12.879-8.592,17.604-15.256   c6.916-9.738,17.478-14.507,30.938-14.507c7.68,0,13.441,3.521,13.441,10.456c0,6.936-5.014,9.709-8.961,9.709   c-5.3,0-9.016-2.988-16.75-2.988c-9.512,0-18.349,6.402-24.854,16.749c-6.51,10.347-10.349,23.576-10.349,34.673   c0,11.095,5.333,14.401,11.946,14.401c6.615,0,11.842-9.068,14.937-18.028c3.096-8.961,15.788-42.034,29.018-42.034   c5.865,0,9.921,3.948,9.921,8.963c0,5.013-3.841,7.892-9.175,10.666c-5.333,2.774-17.389,14.829-22.403,30.297   c-5.015,15.47-6.292,39.582,2.987,45.556c9.28,5.974,17.925-2.563,18.991-14.51c1.064-11.948,2.347-36.22,4.426-42.302   c2.081-6.081,7.68-9.12,11.523-9.12c6.079,0,8.959,3.679,8.959,8.643c0,4.96-5.18,9.049-8.953,12.686   c-3.602,3.475-9.128,10.997-9.128,25.399c0,14.401,3.817,34.528,13.848,34.528c7.047,0,9.684-6.025,9.684-12.64   c0-6.615-3.314-11.979-7.423-15.382c-3.941-3.263-5.55-6.186-5.55-11.309c0-5.118,3.048-8.594,9.13-8.594   c6.158,0,10.074,5.393,10.074,12.433c0,7.045-2.773,14.512-2.773,23.046c0,8.533,7.516,15.114,13.704,15.114   c6.187,0,13.702-6.581,13.702-15.114c0-8.534-2.771-16.001-2.771-23.046c0-7.04,3.914-12.433,10.074-12.433   c6.082,0,9.13,3.476,9.13,8.594c0,5.123-1.608,8.046-5.551,11.309c-4.107,3.403-7.419,8.767-7.419,15.382   c0,6.614,2.632,12.64,9.681,12.64c10.027,0,13.85-20.127,13.85-34.528c0-14.402-5.528-21.925-9.129-25.399   c-3.774-3.637-8.956-7.726-8.956-12.686c0-4.964,2.88-8.643,8.96-8.643c3.841,0,9.441,3.039,11.522,9.12   c2.081,6.082,3.363,30.354,4.428,42.302c1.066,11.946,9.707,20.483,18.988,14.51c9.282-5.974,8.003-30.086,2.988-45.556   c-5.015-15.468-17.068-27.522-22.403-30.297c-5.332-2.774-9.175-5.653-9.175-10.666c0-5.015,4.056-8.963,9.923-8.963   c13.228,0,25.922,33.073,29.017,42.034c3.096,8.96,8.321,18.028,14.936,18.028c6.615,0,11.947-3.307,11.947-14.401   c0-11.097-3.84-24.326-10.348-34.673s-15.343-16.749-24.855-16.749c-7.736,0-11.451,2.988-16.749,2.988   c-3.947,0-8.963-2.773-8.963-9.709c0-6.935,5.764-10.456,13.443-10.456c13.46,0,24.024,4.769,30.937,14.507   c4.727,6.664,10.988,15.256,17.604,15.256c6.612,0,12.056-4.052,12.056-13.332C258.596,125.852,247.178,111.664,235.765,108.145z    M100.981,103.898c-4.359,0-7.889-3.53-7.889-7.889c0-4.356,3.529-7.888,7.889-7.888c4.358,0,7.889,3.531,7.889,7.888   C108.87,100.368,105.34,103.898,100.981,103.898z M116.761,141.242c-4.356,0-7.891-3.528-7.891-7.889   c0-4.356,3.534-7.887,7.891-7.887s7.889,3.53,7.889,7.887C124.649,137.714,121.117,141.242,116.761,141.242z M167.358,61.734   c3.549,0,6.422,2.877,6.422,6.427c0,3.549-2.873,6.426-6.422,6.426c-3.551,0-6.426-2.877-6.426-6.426   C160.933,64.611,163.808,61.734,167.358,61.734z M169.142,164.888c-4.355,0-7.892-3.534-7.892-7.892   c0-4.354,3.536-7.889,7.892-7.889c4.357,0,7.891,3.535,7.891,7.889C177.032,161.354,173.499,164.888,169.142,164.888z    M180.822,108.145c-4.596,0-8.32-3.728-8.32-8.323s3.725-8.319,8.32-8.319c4.599,0,8.32,3.724,8.32,8.319   S185.421,108.145,180.822,108.145z')], [path('M260.174,114.721l-22.721-30.338l0.65-47.313l-60.345,2.322l-43.558-14.516L96.816,51.535L43.174,69.327   l2.872,37.646l-24.601,38.3l26.632,28.113l-2.636,50.657l68.315,2.581l42.322,34.988l41.888-28.023l48.903,1.501l-7.765-77.704   L260.174,114.721z M235.602,153.378l-28.306-18.117l8.074-22.285l38.167,4.08L235.602,153.378z M140.029,117.146l-19.164,21.013   l-0.056-8.496L140.029,117.146z M118.21,125.489l-5.777-3.025l18.55-5.291L118.21,125.489z M148.771,114.858l-8.139,24.259   l-15.85,2.044L148.771,114.858z M144.953,108.073l-35.747,10.198l10.36-10.224l26.587-0.756L144.953,108.073z M116.777,95.464   l23.055,7.09l-19.713,0.561L116.777,95.464z M122.226,91.995l12.923-1.685l9.652,8.626L122.226,91.995z M122.574,72.474   l17.929-12.727l4.132,15.747l-8.788,8.846L122.574,72.474z M130.309,85.981l-19.406,2.531l-18.52-5.694l25.648-7.811   L130.309,85.981z M110.581,93.559l4.239,9.707l-24.449,0.694l-3.237-17.613L110.581,93.559z M89.726,108.896l22.633-0.643   l-12.999,12.828l-20.941,5.976L89.726,108.896z M105.569,124.423l7.916,4.144l-21.007,13.679l-12.416-10.546L105.569,124.423z    M115.913,132.853l0.072,10.658l-21.24,23.293l-0.005-20.165L115.913,132.853z M119.66,146.78l19.234-2.482l-8.902,26.535   l-32.152-0.125L119.66,146.78z M143.694,145.446l9.102,7.168l0.332,35.847l-18.514-15.948L143.694,145.446z M145.355,140.497   l7.132-21.258l0.25,27.073L145.355,140.497z M139.518,87.619l6.565-6.606l4.277,16.3L139.518,87.619z M149.383,74.215l-3.89-14.821   l20.297,7.463l-4.293,11.917L149.383,74.215z M164.594,84.683l9.102,1.568L160.088,97.19L164.594,84.683z M199.271,91.299   l-17.328,4.194v-9.565l17.328-13.933V91.299z M200.663,96.022l7.74,11.266l-20.7-2.214l-3.916-4.97L200.663,96.022z    M164.218,107.691l0.463-0.134l18.484,1.978l-3.842,7.822L164.218,107.691z M178.69,134.501l-14.778-21.168l14.028,8.977   L178.69,134.501z M177.026,96.684l-12.102,2.927l12.102-9.729V96.684z M178.53,101.377l2.339,2.968l-10.126-1.082L178.53,101.377z    M178.81,82.14l-12.535-2.121l4.355-12.09l24.486,1.1L178.81,82.14z M177.251,141.024l-7.394,0.688l-7.282-21.706L177.251,141.024z    M180.487,145.661l19.899,28.501l-19.073,1.698l-9.849-29.359L180.487,145.661z M184.096,142.241l-1.027-16.649l18.805,12.038   l0.398,30.644L184.096,142.241z M183.49,120.026l4.88-9.936l21.965,2.347l-7.286,20.107L183.49,120.026z M251.949,111.942   l-37.107-3.967l-9.062-13.192l28.208-6.826L251.949,111.942z M232.554,83.245l-28.365,6.865V68.042l28.891-23.229L232.554,83.245z    M179.157,44.258l49.12-1.891l-27.362,21.999l-28.54-1.282L179.157,44.258z M174.24,43.401l-6.783,18.828l-23.484-8.635   l-5.83-22.225L174.24,43.401z M133.138,31.673l6.032,22.991l-20.356,14.449l-16.941-15.146L133.138,31.673z M97.363,56.533   l16.378,14.64l-29.754,9.064l-30.141-9.27L97.363,56.533z M81.836,84.718l3.563,19.384l-34.565,0.982l-2.336-30.619L81.836,84.718z    M49.929,110.027l33.9-0.963l-12.454,20.001l-41.231,11.764L49.929,110.027z M29.126,146.23l45.252-12.909l13.8,11.725   l-37.215,24.236L29.126,146.23z M52.976,173.837l36.849-23.996l0.005,22.354l-38.991,42.755L52.976,173.837z M112.936,221.675   l-59.523-2.251l39.959-43.816l34.975,0.136L112.936,221.675z M117.551,223.38l15.375-45.832l20.263,17.455l0.537,58.285   L117.551,223.38z M155.18,96.31l-4.267-16.264l8.917,3.354L155.18,96.31z M157.412,120.072l7.75,23.101l-7.499,4.114   L157.412,120.072z M157.715,152.864l9.036-4.954l9.908,29.536l-18.606,11.947L157.715,152.864z M158.65,253.976l-0.543-58.772   l20.164-12.951l16.056,47.856L158.65,253.976z M199.04,228.704l-16.119-48.052l20.712-1.843l35.697,51.129L199.04,228.704z    M240.764,223.407l-33.483-47.958l-0.448-34.646l27.431,17.556L240.764,223.407z')], [polygon('21.052,236.607 51.221,184.354 81.392,236.607  '), polygon('81.392,236.607 111.561,184.354 141.73,236.607  '), polygon('141.73,236.607 171.899,184.354 202.069,236.607  '), polygon('51.221,184.354 81.392,132.101 111.561,184.354  '), polygon('111.561,79.627 141.73,27.374 171.899,79.627  '), polygon('81.392,132.06 111.561,79.805 141.73,132.06  '), polygon('141.73,132.06 171.899,79.805 202.069,132.06  '), polygon('171.899,184.354 202.069,132.101 232.239,184.354  '), polygon('202.069,236.607 232.239,184.354 262.409,236.607  ')]]
