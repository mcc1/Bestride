local L = LibStub("AceLocale-3.0"):NewLocale("BeStride", "koKR")
if not L then return end


L["GUI.Options.Open.GUI"] = "설정창 열기"
L["GUI.BUTTON.SelectAll"] = "모두 선택"
L["GUI.BUTTON.ClearAll"] = "모두 해제"
L["GUI.BUTTON.Filter"] = "필터"
L["GUI.BUTTON.Copy"] = "복사"
L["GUI.BUTTON.Delete"] = "삭제"
L["GUI.TAB.Mounts"] = "탈것 목록"
L["GUI.TAB.MountOptions"] = "탈것 설정"
L["GUI.TAB.ClassOptions"] = "직업 설정"
L["GUI.TAB.Keybinds"] = "단축키"
L["GUI.TAB.Profiles"] = "프로필"
L["GUI.TAB.About"] = "정보"
L["GUI.TAB.Mounts.Ground"] = "지상"
L["GUI.TAB.Mounts.Flying"] = "비행"
L["GUI.TAB.Mounts.Repair"] = "수리"
L["GUI.TAB.Mounts.Swimming"] = "수영"
L["GUI.TAB.Mounts.Passenger"] = "다인승"
L["GUI.TAB.Mounts.Special"] = "특별"
L["GUI.About"] = "버전: " .. version .. "\n" .. "제작자: " .. author .. "\n" .. "디스코드: https://discord.gg/6bZf5PF" .. "\n" .. "설명: " .. "\n\n" .. "        " .. "BeStride 애드온은 북미섭의 Anzu-키린토, Cyrae-윈드러너가 만든 YayMounts 애드온에서 시작되었습니다." .. "\n" .. "        " .. "이후, 북미섭의 Anaximander-불타는군단이 방치된 것을 발견하고 버그를 고쳤습니다." .. "\n" .. "        " .. "버그를 고치는 과정에서, 코드를 정리하고 모듈을 추가하면서 현대화되었습니다." .. "\n\n" .. "특별 감사:" .. "\n\n" .. "        " .. "Mindlessgalaxy: 베타 테스팅을 도와주셨습니다."
L["Bindings.Header"] = "베스트라이드"
L["Bindings.Regular"] = "탈것 탑승"
L["Bindings.Ground"] = "지상 탈것 강제 탑승"
L["Bindings.Repair"] = "수리 탈것 강제 탑승"
L["Bindings.Passenger"] = "다인승 탈것 강제 탑승"
L["Zone.AzuremystIsle"] = "하늘안개 섬"
L["Zone.BloodmystIsle"] = "핏빛안개 섬"
L["Zone.Deadmines"] = "죽음의 폐광"
L["Zone.AQ"] = "안퀴라즈"
L["Zone.Dalaran"] = "달라란"
L["Zone.Dalaran.SubZone.Underbelly"] = "마법의 뒤안길"
L["Zone.Dalaran.SubZone.UnderbellyDescent"] = "마법의 뒤안길 지하"
L["Zone.Dalaran.SubZone.CircleofWills"] = "의지의 투기장"
L["Zone.Dalaran.SubZone.BlackMarket"] = "암시장"
L["Zone.Dalaran.SubZone.KrasusLanding"] = "크라서스 착륙장"
L["Zone.Icecrown"] = "얼음왕관"
L["Zone.Oculus"] = "마력의 눈"
L["Zone.StormPeaks"] = "폭풍우 봉우리"
L["Zone.SholazarBasin"] = "숄라자르 분지"
L["Zone.Wintergrasp"] = "겨울손아귀"
L["Zone.Vashjir"] = "바쉬르"
L["Zone.Vashjir.SubZone.KelptharForest"] = "켈프타르 숲"
L["Zone.Vashjir.SubZone.ShimmeringExpanse"] = "흐린빛 벌판"
L["Zone.Vashjir.SubZone.AbyssalDepths"] = "심연의 나락"
L["Zone.Vashjir.SubZone.DamplightChamber"] = "안개빛 방"
L["Zone.Vashjir.SubZone.Nespirah"] = "네스피라"
L["Zone.Vashjir.SubZone.LGhorek"] = "고레크"
L["Zone.VortexPinnacle"] = "소용돌이 누각"
L["Zone.Nagrand"] = "나그란드"
L["Continent.Draenor"] = "드레노어"
L["Skills.Riding"] = "탈것 타기"
L["Settings.EnableNew"] = "새로 배운 탈것을 자동으로 활성화"
L["Settings.EmptyRandom"] = "체크된게 없을 때, 임의의 랜덤탈것 탑승"
L["Settings.RemountAfterDismount"] = "탈것 해제 후 즉시 재탑승"
L["Settings.NoDismountWhileFlying"] = "비행중 탈것 해제 잠금(낙사방지). 체크시 땅에 착지하거나 스킬을 사용해야 합니다."
L["Settings.UseFlyingMount"] = "비행 불가능 지역에서 비행 탈것 탑승 위주."
L["Settings.ForceFlyingMount"] = "비행 불가능 지역에서 비행 탈것 탑승 강제."
L["Settings.PrioritizePassenger"] = "파티일 때 다인승 탈것 우선"
L["Settings.NoSwimming"] = "수영중일 때 수중 탈것을 사용하지 않습니다."
L["Settings.FlyingBroom"] = "일반 탈것 대신 비행 빗자루를 탑승(할로윈 축제)"
L["Settings.Telaari"] = "나그란드에서 텔라아리 탈부크나 서리늑대 전투늑대를 항상 사용합니다."
L["Settings.ForceRobot"] = "약초채집을 배운 경우 항상 하늘골렘이나 기계화 목재 추출기를 탑승합니다."
L["Settings.Repair.Use"] = "소유중 + 내구도 문제가 있을 때, 수리탈것을 탑승합니다."
L["Settings.Repair.Force"] = "소유중일 때, 수리탈것 탑승을 강제합니다."
L["Settings.Repair.Durability"] = "내구도 알림 기준(%) - 착용템"
L["Settings.Repair.GlobalDurability"] = "내구도 알림 기준(%) - 전체"
L["Settings.Repair.InventoryDurability"] = "내구도 알림 기준(%) - 가방"
L["Settings.Classes.DeathKnight"] = "죽음의 기사"
L["Settings.Classes.DemonHunter"] = "악마사냥꾼"
L["Settings.Classes.Druid"] = "드루이드"
L["Settings.Classes.Evoker"] = "기원사"
L["Settings.Classes.Hunter"] = "사냥꾼"
L["Settings.Classes.Mage"] = "마법사"
L["Settings.Classes.Monk"] = "수도사"
L["Settings.Classes.Paladin"] = "성기사"
L["Settings.Classes.Priest"] = "사제"
L["Settings.Classes.Rogue"] = "도적"
L["Settings.Classes.Shaman"] = "주술사"
L["Settings.Classes.Warlock"] = "흑마법사"
L["Settings.Classes.Warrior"] = "전사"
L["Settings.Classes.DeathKnight.WraithWalk"] = "죽음의 기사: 죽음의 진군"
L["Settings.Classes.DemonHunter.FelRush"] = "악마사냥꾼: 지옥 돌진"
L["Settings.Classes.DemonHunter.Glide"] = "악마사냥꾼: 활공"
L["Settings.Classes.Druid.FlightForm"] = "드루이드: 비행폼 변신"
L["Settings.Classes.Druid.TravelToTravel"] = "드루이드: 전투 중일 때, 이동폼이나 수영폼으로 바꿉니다."
L["Settings.Classes.Druid.FlightFormPriority"] = "드루이드: 움직이지 않을때, 비행폼을 우선합니다."
L["Settings.Classes.Druid.MountedToFlightForm"] = "드루이드: 탈것 타고있을 때, 비행폼으로 바꿉니다."
L["Settings.Classes.Hunter.AspectOfTheCheetah"] = "사냥꾼: 치타의 상"
L["Settings.Classes.Mage.SlowFall"] = "마법사: 저속낙하"
L["Settings.Classes.Mage.Blink"] = "마법사: 점멸"
L["Settings.Classes.Mage.BlinkPriority"] = "마법사: 저속낙하를 쓰기전에 점멸을 우선합니다.(낙하중이라도)"
L["Settings.Classes.Monk.Roll"] = "수도사: 구르기"
L["Settings.Classes.Monk.ZenFlight"] = "수도사: 이동중이거나 낙하중일 때 참선 비행을 사용합니다."
L["Settings.Classes.Paladin.DivineSteed"] = "성기사: 천상의 군마"
L["Settings.Classes.Priest.Levitate"] = "사제: 공중 부양"
L["Settings.Classes.Rogue.Sprint"] = "도적: 전력 질주"
L["Settings.Classes.Shaman.GhostWolf"] = "주술사: 늑대 정령"
L["Settings.Classes.Evoker.Hover"] = "기원사: 부양"
L["Settings.Classes.Evoker.Soar"] = "기원사: Use Soar"
L["Settings.Profiles.CreateNew"] = "새 프로필 만들기:"
L["Settings.Profiles.Current"] = "현재 프로필:"
L["Settings.Profiles.CopyFrom"] = "프로필 복사:"
L["Settings.Profiles.Delete"] = "프로필 삭제:"
L["Settings.Classes.Warlock.BurningRush"] = "Warlock: Burning Rush"
