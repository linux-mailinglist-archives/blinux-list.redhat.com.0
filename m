Return-Path: <blinux-list+bncBCFJ3VNT5EIBB3X7XDAQMGQEF7PTRGQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A74ABFE9E
	for <lists+blinux-list@lfdr.de>; Wed, 21 May 2025 23:04:48 +0200 (CEST)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-742cf6f6a10sf4932624b3a.1
        for <lists+blinux-list@lfdr.de>; Wed, 21 May 2025 14:04:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1747861487; cv=pass;
        d=google.com; s=arc-20240605;
        b=Xrt4vUyadKPM4/Gb7Xn2uqT23q0WchCzkeyPCOwyBCXXJ2iJb+W6V5HGOkCSckUZvo
         As7QUWTBSpp7H7WkCdhueUvYexZKwtN0OHgJm1zyZDbYJAQUVv8vFHnddyvv1xD9De1T
         MvucmtwEq8H2QF3uiyjAgnwQb5MRTmbdxqGdzTPs7PqBh3DCmIQaBsIlubkxKb+DYeCN
         AQiOArLv7FaCM1gEXalcF2mOkh78qojyu5Fa0qDdJ0y2zeny6xXyOYL/aaQxNwlZETRS
         zGCafEQYglLhznFAW2cSflIDcm7WclnkMcvUfGsm7w2OQDEFA0qNhMklOk05xn9XO4rh
         hPhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=ppcbwdmI54Yk0r5DlApzJ/pPMIcs0VGsF85YWSnedH8=;
        fh=WaX/PxF7jnZigNdpEzZDmw6ZpOh5ZTlvddd88Y8QvEE=;
        b=bK8rMoEXtuhJoYoL7WYjJmm3qCJ2b2C9IuZPZGATCU5LpPNOEXgu75CUuVsMnXYhvn
         GrhfWjsPag9ZgNa/iBN2zQulI89zxU3riOpqxG+F62hYns0LdHKy+nbfhOVkxjNiNxA6
         26BaGawNlgLIS2Tp1t7snP/l//COTxRh9f8MMlA7HXQZHxMTNMKWnzlELYFqfuFvyWld
         vTu1UI0a+CHhCqr7iqKhouQngsRktBgjTrRhoF8mbzLNF4HrrMMyGcwu2OI7H11iU4cI
         4oWGLUFORE7HHh60vm456LvExUZe6S63Y5vzvtz24Fp1kc9R9+ypm6xng0tdu8X1nAmh
         RekQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.176 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747861487; x=1748466287;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ppcbwdmI54Yk0r5DlApzJ/pPMIcs0VGsF85YWSnedH8=;
        b=TzcIjcMLzdMV4gRYkL1Qx/57ctBfLmPR5aHu8nOgkGSK3n2ANEuQxYuWN6gseFN+BY
         oDNiVRucIxhiH7Aw0bxfETOW+FMDkT0nrp7taYYTu/B6l/nG5OipeNzoLBWgDuu00x+2
         UDQRi49IEGeultwrekyiGxaLcnKoRrQTFFreABdt1GTRpgca263pjgRzcHTqMPvgW9x7
         VkTV+/Lk5sWMgseiWW4RlxULC8IgZz4o3KaJTUQSgvbjmoKtA7MU7sVJfugiZZ36J/Ik
         O8Yas/WkWwn37wDc/F1EnDJ10nxZd+knxAOp+wEUo5f84fkF/I4y4Opoc24XaV83iUK2
         WuNQ==
X-Forwarded-Encrypted: i=2; AJvYcCU06SMdAztTVKvPPcOmlyctg5ugT/p6D4Idrsvdp0KphQ7OWwuvMPaEvITV99K5Bi6pIMSIdg==@lfdr.de
X-Gm-Message-State: AOJu0Yw8aw622ycyf28ChNYtWb20Hx0cWWg6Z+06N28wUepELQyUwfhD
	atjQXo8Jy4zYk3wD58U0XW2vBr4aNs8MQo7UQTv1SU+t/voTvuLa+wd5BSG2fWyoCH4=
X-Google-Smtp-Source: AGHT+IF5y4pyIYLM50uZrjCO03+PgsLIVKSNUsE/eMonCEaGj+mIABbXRpsSFgwzRY1PwcrAusWegw==
X-Received: by 2002:a05:6a20:2595:b0:1f5:64fd:68ea with SMTP id adf61e73a8af0-21621882852mr34575189637.4.1747861486894;
        Wed, 21 May 2025 14:04:46 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AVT/gBF+b59Tngm9z3H8FttoqZrWxTNDz/lq1aCzqdV2/fiXvA==
Received: by 2002:a05:6a00:1904:b0:736:dc82:1c47 with SMTP id
 d2e1a72fcca58-742968ef5eels2467563b3a.1.-pod-prod-08-us; Wed, 21 May 2025
 14:04:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWmcdAaG65aPwT43OkIWFa3teFkQetRSqtuedPM0si+MfMUJiw7yHAHzleQjwkarWTcQZssaBbmNjPpKw==@gapps.redhat.com
X-Received: by 2002:a05:6a21:e89:b0:216:1ea0:a51e with SMTP id adf61e73a8af0-21621a0232fmr33552355637.41.1747861485075;
        Wed, 21 May 2025 14:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1747861485; cv=none;
        d=google.com; s=arc-20240605;
        b=CRJ9y+uYX2SrDibaAS28f+qV4j/z7HuzLO1CXyQgInL0l6Zv9rxir8sOH+3d9SZO+s
         pOJc7vEsddT8UBM9j23DFAN0K8r7m96LuHxs9UrFFfZXhXVTnAtQcmetxVGUCwDx5vSB
         KjvBDYlKfnN+Kp01FwneuwWWN5MgbbjqoYSNP8c193Yb0Su427zgrWudvk57vv+G/dee
         zSj6/e/68a5wgwlhyz4tlIj+jmYhAm5+z/FcoC71VTZnsP7YW8ngFLu6SGyr1H0hlSCF
         s7E3AHt4ebbjoojUz90b15B+CshvYvm5VQSerAxppEHFDfRBZtL83IlGuJvGcm+WyrUE
         uq0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=ggGqJQECAVx0sodYvOcEAL3cjuaHLB/AsAFs/Qvfka0=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=AdPMhyIFyDa3bqETk0yHWzZxEbeVfTU6nbYCDb2b2FXUFxxgzou6onjRdJJSImwKEJ
         5xf3cNQle9Z+RVmPj9M4CedJbD8PbcnqxjCvlVM5TH4o2scSvzjlitVWCHk0x4FQLBdA
         kyZQrpDUwL2mzmmvbykSUjpZ/6Gn/D/jkbseAOnS6aMmgXcoeEWYrI56vg7ZOmDfsQRH
         Mp5wAoCvc49htw0sPmxvxxMPVc2AHm7pHMBh3ly+bueF1hNsLQKPRvnfF7//hKUQAW6v
         oYQQGkGBOgvymhrt60X6noMo9p79s2pOSL9lPk/d36qzhaiCUCrJPdWbi67PK7hK6eg2
         T4mA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.176 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d2e1a72fcca58-742a97cd728si16122423b3a.190.2025.05.21.14.04.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 14:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.176 as permitted sender) client-ip=209.85.167.176;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-22-_FZ3rFtFPIqeI5BvMyhz-w-1; Wed,
 21 May 2025 17:04:42 -0400
X-MC-Unique: _FZ3rFtFPIqeI5BvMyhz-w-1
X-Mimecast-MFC-AGG-ID: _FZ3rFtFPIqeI5BvMyhz-w_1747861481
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9CE461800446
	for <blinux-list@gapps.redhat.com>; Wed, 21 May 2025 21:04:41 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 97C4B19560AE; Wed, 21 May 2025 21:04:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 94C2C19560A7
	for <blinux-list@redhat.com>; Wed, 21 May 2025 21:04:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2C7121955DB3
	for <blinux-list@redhat.com>; Wed, 21 May 2025 21:04:41 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-263-i1WKIj7ROnqamaearG8RVA-1; Wed, 21 May 2025 17:04:38 -0400
X-MC-Unique: i1WKIj7ROnqamaearG8RVA-1
X-Mimecast-MFC-AGG-ID: i1WKIj7ROnqamaearG8RVA_1747861478
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3f94b7bd964so5681801b6e.1
        for <blinux-list@redhat.com>; Wed, 21 May 2025 14:04:38 -0700 (PDT)
X-Gm-Gg: ASbGnctGgmL/NH8D175Z2F2/qcDJE2vg58AHhxLZ21742U8EhXBFNOLdqBRQazHBAbh
	dOHO6Z3/DTKuLs1WLNXZmvEojxKEndRV/ugTi37IaccKQtFrXj3muZlR1VzPdwaetUzpaCgpz7s
	GMUedGCfxdSz2mEU/4rPBItahwCu5aQV+uYJoRQ928nG73S+ODREVCBZTE4voVIsGxVYWboUeSo
	9nSL1urJaNmJCeB6U76OA4tFCl8WxByW3X7ap49nyTa4rsRZoGDJDXT9CMLlft5PjxF5VNidCg9
	MEsYQAhNqVUt1kDRNlCKxRQaQ3ZLcrUHEsygXVyrAPwTvaQctBqH0HCM6MkcNZ1MzLI8RKwQL8H
	s1/5Kzn683/2uGEjIRwTENorsJEChHp4aZAI=
X-Received: by 2002:a05:6808:1c09:b0:3fa:3a0:137b with SMTP id 5614622812f47-404d887941cmr13682374b6e.29.1747861477333;
        Wed, 21 May 2025 14:04:37 -0700 (PDT)
Received: from smtpclient.apple (c-76-138-99-100.hsd1.tn.comcast.net. [76.138.99.100])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-609f2f1e2desm2498159eaf.5.2025.05.21.14.04.36
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 May 2025 14:04:37 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Brailliant 40 and fedora 42
Message-Id: <02F3AD23-3AEB-489C-82FD-609AD74AD268@gmail.com>
Date: Wed, 21 May 2025 16:04:26 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: BvU9Z8HGJri8WKI0UmyzG6Ezu62duH7s7_4kVtxo_j4_1747861478
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: SIaji_6ZtZh9NAqvXaO-id8GQXBLI2n4HkN23Q9ubz8_1747861481
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.167.176 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I have a Brailliant 40 turned on, the u s b is chosen from its menu, and the cable is plugged in.  What other step is needed for this Braille device to work with linux?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

