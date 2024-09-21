Return-Path: <blinux-list+bncBD4OZ3GOW4PRBSHHXC3QMGQEUUOM72Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id A752797DB81
	for <lists+blinux-list@lfdr.de>; Sat, 21 Sep 2024 04:47:38 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6c351605f81sf28843616d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 20 Sep 2024 19:47:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726886857; cv=pass;
        d=google.com; s=arc-20240605;
        b=eHHiSu62xXjT98Ipw/ZSBcpoQ9hZh52dIeiF0DxtLJjsi1BXmss8sevRyFkDgISR5q
         ZslPBCcRPkEp0bFq8IvZaF05zStR0iDxIprBgXAxr2NdlAE4BlWGAVirOE1QKWgOKFrF
         GLkpf14x+NnnMRooyBiWMc7QNQmX+wDxLklzOP9ix/cGmeyBXf2BsDIKP34yxi03NqFO
         F5ebgfU/pvwAEEQVv27GyKOvWyDGWmnkUt6W2fNbsXxKRfjU1eDbiPF6lLMAtvQuEiNh
         6H0fe/ipKHdfYYNtw3ugr0ho/4Ifeo8GjEwcoqrNNgEk9D6R70yNK2NA755gl7E6+TOd
         ZFqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:references
         :subject:from:to:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=kXyMy9WKNMOk4mHEgm6UTne/vPXRAzVPWtSAupE9xSM=;
        fh=iDibJyKFNHVFUyduDcEQ5LVW5/pTW/xeYYY3t8oYQPE=;
        b=atiUDcztBnwZOrdwPv3V05VGWxyAQbEX43J22LFlM4GMrRkciRWl890Ur8PPZS+IcR
         jv3cR/I52ScZasPHqWL1odB6P3V9QY3DqNGbt+cHCIEvAFVB23M4OWrrDTHEKk8R4hCw
         SvX31exMzCQsHgUyZJpVUjyDClo1FiT711hfCIS6fd42U/2CiRHzphLq2dkMd+qrqSUz
         BwdTo/7YO0bQJ/1NQwjCnEwkZ0A2Rx2O4khMPu2I7WwFCv6ThZMhiYZjqJsaUXVmO6lO
         EfkJvHjsU7gsBoF3/y+S5D4ofNVw91hU3G1qhSDmQ7QGzuI/7RvGV9jcn7K8ejdIoxEw
         R2Ig==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of tanioms@yahoo.com.br designates 66.163.188.206 as permitted sender) smtp.mailfrom=tanioms@yahoo.com.br
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726886857; x=1727491657;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:references:subject:from:to:user-agent:mime-version
         :date:message-id:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kXyMy9WKNMOk4mHEgm6UTne/vPXRAzVPWtSAupE9xSM=;
        b=xKOU0Zrwddx7RBuXxnj6B3wlwKYiV+B3I3OV10j5dDCYq5mcyt7t97ZcNSW/oUG78K
         lxcbRDwyauJ9A9/M06RH4GJbhjcQYmTeLlFetlb8HGvHZU+eNIQ2MgOcmha/NRnz2HY3
         P0tAuvM6lSASNMUwUWB2l8JFy7Y5w7dJLdhFZgaaXGH7Wf4xSlwYcsotO9DAq/JOBoJD
         DpZdDvDmzLWiyoHzl1RbJhTk3GpvI56HMWLhk2q62bG95WafGMQ9eJsyuO0s5MiBz1GZ
         3iqMT670qw7wOXx4WO/q5MMWeICMq7M3/0hQjME1aQsn13N5HJyVMxXPvTTLBSlUg2Pf
         JIgQ==
X-Forwarded-Encrypted: i=2; AJvYcCX1ARu2RnV4UEcPip/w14CT7CXekeyHk2Zuj1cXJA+uHtOaOBxKSnYp8kK8d4zs38tCP7JRBg==@lfdr.de
X-Gm-Message-State: AOJu0YyPbnATneU8qRC7lHGxQfFmy6ymobht2PT+9G19AgZeL9KpQ9LO
	xncu3CXQeKmfw73AUeD9yMNvpqD7yYSExDnPsVNeUE9ZTC6P7QT9w8Kx7RQs+zM=
X-Google-Smtp-Source: AGHT+IGhaN5f8iWVQBn9NhQiRv3u5He6AscONqI2Q4sYZl5YuAdEXBqu0ICeMccKoGYPIpFE4rCOsQ==
X-Received: by 2002:a05:6214:5247:b0:6c5:7df1:7de3 with SMTP id 6a1803df08f44-6c7bd4863d7mr76055816d6.4.1726886857145;
        Fri, 20 Sep 2024 19:47:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2342:b0:6b7:96a6:c5e7 with SMTP id
 6a1803df08f44-6c69129bd84ls31442136d6.0.-pod-prod-08-us; Fri, 20 Sep 2024
 19:47:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXNupwGot3U0LRnFsfpVcu3YOj6P+rE+ULpQ58yw8s9ucO0KbNQWJsm3HIVrPw9UmUFBMMqsdslWPQKww==@gapps.redhat.com
X-Received: by 2002:a05:6214:4906:b0:6c3:5d9f:cea6 with SMTP id 6a1803df08f44-6c7bd516ac5mr61662456d6.27.1726886855789;
        Fri, 20 Sep 2024 19:47:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726886855; cv=none;
        d=google.com; s=arc-20240605;
        b=SSvAQepaGKmQmQAdHK3MrwMImty/kmRVoMnvCPCf5zxpWfVNHVPQ9MdwCXkXa+ENj+
         LtbIBlw2b9fRblDkhg6+wlY+VSAShUOrXC5H/CE7/D8vLdzDWFuAFvV2O4azPu0XPipZ
         odjI3x2q1rdOGc6+5oaflOcSruV8hx7degpWf8Ex7M34uooi21PdxrQ2fUlrm8chtuaz
         cmrE4pBPvIG/4+NE52JIlEybOjk3xCW9+D5hdMmInCmP0NG4zKmczItLwl570hTuQd/u
         dSfwlXocGaDQgEPYpApjBB+aZe7NlRyfNRlJC0xeoBdSVfCQky/4323/QnVDzicqKlt1
         NjrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:references:subject:from
         :to:user-agent:mime-version:date:message-id:delivered-to;
        bh=mY/YZibPtgU6IJEwS4srke6ME8FvCv1tHwuMa3QiaFw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=dcjhB14dz4pbg0H47wvSeXYLsFugYJY+NEMqwVcyqpVZsLvtuDNv65XnGMVG8RYeP5
         1wrWpHplbQNsiEcyQ/+2fCQEA403JyakXihcPGRnCfYGWH6dbSk1D5sQDZDhreMgAJPa
         T4HW/T4jQyKJO5MZBJKDLVfbU46yLO650tlm1FH3oTA+mmeCCjhB+OdUkvOv6jFfTlJY
         G8feN7c1rsmn/VH/1x7CE6oIR+tJrWY2UItNTeEX8S0SgKO9AM3dUBrxG9rbRjpFxYnp
         Y1ciEwNFAMYqosla4DCniJ2JIlz00Lg1fNrOjhU9+DmbgQ+fPfgpY+ZAxWqr3vB+AlOc
         8/ig==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of tanioms@yahoo.com.br designates 66.163.188.206 as permitted sender) smtp.mailfrom=tanioms@yahoo.com.br
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c75e5abf15si54831816d6.539.2024.09.20.19.47.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 19:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of tanioms@yahoo.com.br designates 66.163.188.206 as permitted sender) client-ip=66.163.188.206;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-38-OgPssLu9PSqtPWrkMSS-yg-1; Fri,
 20 Sep 2024 22:46:54 -0400
X-MC-Unique: OgPssLu9PSqtPWrkMSS-yg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6A94B192DE3F
	for <blinux-list@gapps.redhat.com>; Sat, 21 Sep 2024 02:46:53 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 685B83001FEF; Sat, 21 Sep 2024 02:46:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 657263001FE8
	for <blinux-list@redhat.com>; Sat, 21 Sep 2024 02:46:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D088E19188FF
	for <blinux-list@redhat.com>; Sat, 21 Sep 2024 02:46:52 +0000 (UTC)
Received: from sonic311-25.consmr.mail.ne1.yahoo.com
 (sonic311-25.consmr.mail.ne1.yahoo.com [66.163.188.206]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-311-7Fb9clRHNuOdMuAMYw209w-1; Fri,
 20 Sep 2024 22:46:10 -0400
X-MC-Unique: 7Fb9clRHNuOdMuAMYw209w-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1726886770; bh=JbAKaSc3YmY3/hZ7eWuBfHpBWqlhP678JoZUtu0B32A=; h=X-Sonic-MF:Date:To:From:Subject:From:Subject; b=adw6PJkW1NV+JKHF/Bi5qk7Oj2LIbuAvihFjDsykriJJ7q1+7LymUG8qONx1swhiA4My7QiVFeV1HcfnhPqLBkQ0rSXYRIuVq/i6D+0pYmp1dcUuwcaXdVm4uqi2ZcIGGeOMHFGZ0OlzR3V8yiDgl+KIi1TySfeP5LTq7GiEz8NqLzRSPgZT7XWfyTk9Yti5DERkGI16whPnu3v1KS1Zap4lZ4/dIxdCeOUadn+gwJV1pTvz0Lj23b1cDwsqEV8jkQLbM0/QoEFQW9Hg2Y9CZsinSbYX7DfMyBqykWyL/ogfAYvl8wZkzPN9FlP2w9tOMZq3p+DKnyTf+j6raVzTPA==
X-YMail-OSG: wLqEEMEVM1k3ko48ATF8hNhXZmfK8663tbB6qEkJkpF1h8svy6P_MzzFyiI3tOm
 JEJWFje8oRfTna_7ApdQcxLW_3qmf8h_yU92dri.9SjFgqen4JU6Z9r4vLJk7ANWBGHzP.YYSanq
 Fj.LB.Fd9cocL1hdlJwPoxFSGLD_LWDUyg0wAEVbdHg8EvsLzfY30lngQxhsJcBHTiulklds.ANF
 G20ejWoh7.RddXdi6oaArFFW304gzfI1bzC2I6mkilKkO97wi5OFKY_UcFQZB5hOaAms18iElkVK
 eqpZCKwSh2KFzcJBUothU1FwWDQhMDmxb1TZCCVL7kYaaB.R_bWho_BPNJ4lW_C6vbeNQVreK4zL
 A0nDdfFz_6YIeadItDBiJQeSJV19gdAxoUDSDsiy00mNRaDory6OobWne1H7BrA1.v68EByc0_UJ
 r2k0e92i5EBQZPgAi8GPkf3hD.cQTVEBamK1zV0N9nzsIi7bfZf.4BvkZQcofHnH2grNL72.pMoG
 KahTP_ibf.fAzXO75mvJCeJI6z2O5RlMycSW6_OLDlsCCi2fySSYp6Wocdej31i5aOJCODCWPzm9
 TKWzpvpDORXeqfSaoC5pFtaBD2_y_EkHON2EZ9829O4HiTWcy06MWIBaWILwQOJ3Phz1QmCwgEFc
 It8MCKL9c25uPh3aq0URRILJIxzR2ubkBeF0X_uX1jW8wouyC0ZtyOwU4wib15y_6UwOnZtKKZXo
 4mWTK_NH2bxMkGpiwWGbQmhZXUeDoPBWfrPLtTrgv93GCNEk_jJywAYfb5mCgW850jdaA0IGb86_
 GevgyCGY62k4onr_8xEZt2pjy_sNPdawSA1p6x02ddhhjIct0qM75wDhBKyFOp_j1bIE18K4Qq0m
 rtKkmlRbCHMf6.mlw_YNHwRx7MXCqsmpev64VeWrWeAV0GSdx3NpKnjyBLFAFYFa.sqf4kZ6Dei4
 tk16kJ8sMTbEt3JyKpD1a3C4WTHmqAYBZ1VnJJpsH5ifyilYmeAdjOdv7njP4ZsUC2qBcHoQ5f27
 g.IFQHX69FcuWoL9FQxHiIKlJn5BOhdECtDyeSfrMNl2Ugcs5yjVtbFQBVFJHHuwFnYLkVdU.Kp1
 WsmJNR0yLa4sB2Cm9BaHEDCh8PbXTY0.LI_DlkUurTYWGqmK6Z99xpPt01O3uS359hiBN89w9uAY
 FwnOmZ4pK18T955x8F5De.gTWB8bMlvE1jnDN81D9IakKIrdA6JjShfRSOXZ66vTXKcrwohpWIjO
 4tGYYzkW1E9Mof8lHVOIjz5Gq1m8i2CJ_5oI5mohwj6vfa8h6bSNwnt24v5O3cLcnfU723BNYLaO
 uGfc.Jf43uts_a1kesbXw6.aXvq4IIa8SCzNwtZUH7aHCiWL7gX2xzpXDtPlQy9aw6IIiAHfxn_Q
 r7vamG2dyvg8RP6WFvePVS1LiJ.WXlNO126nN4ZBnMVyvCmKOviA_s3jh9ndIVmUuY1knTdQpxKN
 .dIln39c.4UnJohunyC55z8hnZz_nDYIaVKOa.cOnH_U4JajcF1j4dGaFx0LN8T8RbxD24PKMoEa
 _wgGa4D0b3z5O5EfGDo6_Ps97kqNyFpqM7qznEkuQtFrBnjUnuJkKMhYc0Xx0cfatt69aBr8mW.F
 27WUdEmKdTM7jbsAoNE4JOemgmKu6__6LpLtmWS4xxrDyuikWEkEhRjLo.xqYT.EHvTkdr33OBXA
 AJA3cIIxltpjllFc02bMVdMbycFTtGrIgf3CgyzM4H1jCO5ERB8guqtTq5yrnZ4C9kTo_Yg5TbJ8
 gRrd2NebF.Fzl.CtkBtFaVO7AT1iW_nyoNUcJKr8qyC7ZXqCZvqe6pwXXkNgo5duztVNWzu9crn1
 KHiYnTFc1nRPhYpqu23YTkK6p4RDUBeX6walUieCsJxe7mZnz9iFyAah0k3OQnKZdPD1943v7h.b
 RSsMjzwdkvKkYnUnzx5SH5iTMZJCSIM67_xTy9nQevNq6m_eHlV5a9BZb4BAgQT9WMmhRfQhxqX8
 pA2ClRtxFs4lGRIcmOtaH2HcRpyJDJpMftoVKH6MbU60qLfW3ck6sdPJG.PFIYuZy2oKkfkQzK2s
 ZHgNhB7.okErOvi00vyna1FrFO_zTVCbMEvUfuJiL0pbmR5KvwroUjc63gmYhismbF0Re6zAD5HA
 5STukR9JTNgVH0.QbM3CQkxGOCw55hPWw.jFVoiO6RELb39pa1fQWgkzoWpOknom8F387Z.3iJNZ
 mgwmQt6Zlt14URUFUG_MxlDjxRpLd1s5CQCDRZDgAyWIhNzRlsOmI4lqv3nfCBzKP9EyAW7dYuFA
 ZTwR3I7VpHU4.nhczRg.ToJ7SeEVH
X-Sonic-MF: <tanioms@yahoo.com.br>
X-Sonic-ID: 305f96d4-ff26-43ee-a25d-f54d4733b702
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.ne1.yahoo.com with HTTP; Sat, 21 Sep 2024 02:46:10 +0000
Received: by hermes--production-bf1-774ddfff8-jfhxc (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID b2110a985807a2a992cdaca449a26782;
          Sat, 21 Sep 2024 02:46:08 +0000 (UTC)
Message-ID: <a143e0ae-12e9-4b02-9844-7dc38b5727d8@yahoo.com.br>
Date: Fri, 20 Sep 2024 23:46:03 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?B?J1TDom5pbycgdmlhIGJsaW51eC1saXN0QHJlZGhhdC5jb20=?= <blinux-list@redhat.com>
Subject: COSMIC Desktop System76 Accessibility Survey
References: <a143e0ae-12e9-4b02-9844-7dc38b5727d8.ref@yahoo.com.br>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: yahoo.com.br
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: tanioms@yahoo.com.br
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of tanioms@yahoo.com.br designates 66.163.188.206 as permitted sender) smtp.mailfrom=tanioms@yahoo.com.br
X-Original-From: =?UTF-8?B?VMOibmlv?= <tanioms@yahoo.com.br>
Reply-To: =?UTF-8?B?VMOibmlv?= <tanioms@yahoo.com.br>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hello!
As some of you may already know, System76 is working on their new Linux 
graphical interface, the COSMIC desktop. They have created a form with 
some questions related to accessibility. If anyone is interested in 
participating in the survey, please access the address below:

https://docs.google.com/forms/d/e/1FAIpQLSfQcq6638l0yNIQf6GFalMqwTVGFiZqYsaLt7TFGSCtktVDdg/viewform

Best regards.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

