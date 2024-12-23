Return-Path: <blinux-list+bncBC3NDNGRUAMRBAXRUK5QMGQEI6WUKBA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2519FA8E2
	for <lists+blinux-list@lfdr.de>; Mon, 23 Dec 2024 02:10:28 +0100 (CET)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6f482362asf513256185a.1
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 17:10:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734916227; cv=pass;
        d=google.com; s=arc-20240605;
        b=hW8tHtxX08kiXHMzKW1q4QCwDsXh7YijKLcT/SBPf6ByNV/Dl+bsaxmUP6dSibF9UW
         gm6AouJi4FalABS0qwHklf99+iIX7tSjzFCIpnsbm4FR7RvLGq+AiTbo0vwyklR5va0H
         7EWo2GPwhT+GLogts+MvDSsSCwVumgC3EJklm9U1ggKkBc68ISyrHCgIpBUM3j5EDZMA
         TQk5BwltlvsRwOBanUti9h5KHNNxRL+OqDsqLejrAmzzWBZSpLsa9TZLl9A7xdTrKQg9
         RmtMiYCkeG5TFtqJGsJCJzzA0leoGbm5KNs99GWbTCNONb2oIF2fNdad4FmR3wq7bvKT
         3bKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=LN4F23A1JDSeXuGOf5qFathvxZjFsxFgL5R5fDjcXHo=;
        fh=7szO7fcNfFJ2eHX6Ow7tKmGOVxZ6K8Q5eB6qQ57LA40=;
        b=cu2+uk22SHcfehhtqB0jQL95U5HHscqRb719HLunqsnXt2p8vedxBn+Qcu6IsG4G9Z
         l+VzTLKLKfeb3Dx65pORU+NUjK/IvWjmPc2r56KJyWypNEzqws3LvKvBGrrajA+5paC4
         5Z/EylxOlI8bIHNJimJ3OnM+u1MTZI50wHgINz4qbI1bLGWwZCNax4MNDfOV7wehOfyO
         eFO0/LX2ngmkMoXma+JQd8256MOezl6XY0dyAWU3MysWVbuTyvvV2oUjHw4hb7L0sUJ4
         f1IwNmPfdQXbzyltAQyBu1ao3XH+bxD+7Rqw3AOERCyk5HXBOkxTDez+ft7UTDrnRyF9
         L14Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734916227; x=1735521027;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LN4F23A1JDSeXuGOf5qFathvxZjFsxFgL5R5fDjcXHo=;
        b=uaCjVhw3kO0rR6Oc5T2WHXH+g2rejKpVJoU2yPivgsoBgQhU4RjPtFIp+w1uNsTGxp
         4gOhaWFhJ9DYDjrxw37ns8rHh1aiUT0gXK9PcUZkwYOX8X7nEj9u9h30NBc9FREQd2Vx
         0xNYtcptk0CFq0clx8QMB/CgTsY09CqKsEfJL+VSBiGCBXpm+C9edB7JK5PxytO9EZBp
         Hp5lhN/RzIFGvxZ1ySarsFFnq7pkyWvaTaeZgItDp5P4bxhYJSrBQbkyjV+fqrVF/FKd
         LiTYdbmEER+hP8Vs5wklhT/pJx9D9boI+Drz+vsjI6Gvp4mdtEjZBmc1T6+K9Ib2cVRf
         +SPw==
X-Forwarded-Encrypted: i=2; AJvYcCUIL0PtqLWqwhbS09MRfNK70op7iCZQtvHnCqA0ha8mlwPgIjnaC50J2/0JI4WpsHscpIrW/A==@lfdr.de
X-Gm-Message-State: AOJu0YzyeZlX1hty2VStd5AzCInSEB+A4An9Sl+j9XxaoffdRggtBsLK
	zg9exJbHbRLZhBYF28x9tk5PsLJyWJdLjmKWBIxtTSEohgtpy35KwlD4TKfuZNI=
X-Google-Smtp-Source: AGHT+IGGhKHAowWBgiayyfn06R/lR1s7lDrFFpy7HHfUZTOVfMVhoTIXd2FGlbJgSlui8l0nJsxYgw==
X-Received: by 2002:a05:620a:800c:b0:7b6:d88e:f192 with SMTP id af79cd13be357-7b9ba7a49d9mr1617013985a.28.1734916226846;
        Sun, 22 Dec 2024 17:10:26 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:251b:b0:466:9e59:9807 with SMTP id
 d75a77b69052e-46a3b15d06cls81907751cf.1.-pod-prod-05-us; Sun, 22 Dec 2024
 17:10:25 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU6STZ55PAsWUkFGI6g0n6szD0MtqtNBLkqWOEgvAJe0vysC5TDG7aLaUp1HATgL3P2zjfAswYZNG29hw==@gapps.redhat.com
X-Received: by 2002:ac8:57c4:0:b0:467:7cda:9375 with SMTP id d75a77b69052e-46a4a8e69e4mr183875271cf.24.1734916225778;
        Sun, 22 Dec 2024 17:10:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734916225; cv=none;
        d=google.com; s=arc-20240605;
        b=DJr2MPpHvSzmQYY6BvNY22GGmWXTvXku7sBGWwEFndYGf/TUSgUtZknvjQGy1vfMh9
         tltNcjtDXmD04zK0USBgBWwkLQL9cZeXq851FYIkHUJBl7KFhr6U0swMmqo6XYDhuaQW
         ujlKixAZlpH/Wc07z7nvufEJ/0vG/YDIF+U4OCmx9VSdM3J9QxPRe5q5F+MxNSmE07f0
         OqzfkD6pjhMRe+MqOsocK8ElGR/OEqDZebHZOfeNof+oWG4u6eLt2nwrFWwFzKh5eoDe
         jplinDCq+kCDVVaC1L/w+LX55m/uV3DiVZAG0OUK41lyx4438aPYsPGlK/lIMsoWZDLs
         FwAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=7L6Qy7a6CGok0OVfAfdBqPwTiptqgS4vJXKXeNVpez0=;
        fh=RYxCEWsAO6agnaLpj5IwU5Vlud7DVx2rj4v22zmVdeA=;
        b=YyFnWsTZEeN4LUc06Yko4sTHUMm9wDzgXpTN2zLDTuLvvRG20P/olXVoGdKjronld0
         bkqi0G0EeC+ycQIr2qY6OV70E15TdbS5qlHMuJr8evW7FmqfjG7B7nsnWqMsegmI1aoQ
         szaoxPpDaKcF/nwc2YoWC5we7LI99neq1iRxvo2Rnn1W6Gvc+GwEE3UhXSyu2J4XK6Yn
         YHphG1NoU68z86VUmtK90XJvlROP5cjCyVf6gsI5TJT5LwYogxPFH70posiiotOYVn0Z
         SRxgeY7OzdSnC3kkeXeufw+3+zx1wRg/NUNZoHR07dlJmepPzsXkQRL7D8pVAiLoDJ3e
         /v8w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac2ada6esi967968885a.95.2024.12.22.17.10.25
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 17:10:25 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.147 as permitted sender) client-ip=202.12.124.147;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-583-vNcsw78SNaeY68HpjO9k9Q-1; Sun,
 22 Dec 2024 20:10:24 -0500
X-MC-Unique: vNcsw78SNaeY68HpjO9k9Q-1
X-Mimecast-MFC-AGG-ID: vNcsw78SNaeY68HpjO9k9Q
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7BB771956088
	for <blinux-list@gapps.redhat.com>; Mon, 23 Dec 2024 01:10:23 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 75FE619560A3; Mon, 23 Dec 2024 01:10:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 733D719560A2
	for <blinux-list@redhat.com>; Mon, 23 Dec 2024 01:10:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D838719560A5
	for <blinux-list@redhat.com>; Mon, 23 Dec 2024 01:10:22 +0000 (UTC)
Received: from fout-b4-smtp.messagingengine.com
 (fout-b4-smtp.messagingengine.com [202.12.124.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-492-NRwm_Fa_MPGQyQ8v5z7ZVw-1; Sun, 22 Dec 2024 20:10:19 -0500
X-MC-Unique: NRwm_Fa_MPGQyQ8v5z7ZVw-1
X-Mimecast-MFC-AGG-ID: NRwm_Fa_MPGQyQ8v5z7ZVw
Received: from phl-compute-12.internal (phl-compute-12.phl.internal [10.202.2.52])
	by mailfout.stl.internal (Postfix) with ESMTP id 4B6D6114007E;
	Sun, 22 Dec 2024 20:10:19 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Sun, 22 Dec 2024 20:10:19 -0500
X-ME-Sender: <xms:erhoZ1rmZPBHZE9edr8EUZljuPWBqiEW5CRc0A_oSZ9BvfjthgZ1mg>
    <xme:erhoZ3oM2bAR-n8n2xPYX94yWJVkRpD_EbqX1PWHvHJx75quwm3KB-rrR_5ZubcnH
    YbHMFJuHcf5uaJfNL4>
X-ME-Received: <xmr:erhoZyNEeJEOwH-3W-94de2eBmV6GPLwn33UNGyrEvmdVt5QdWEORTxwchZ9DRRcg7p2B791H3oDmm4mncao8JDJqoAEUNJaYhA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddruddtledgfeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecu
    hfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedv
    keekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgih
    rdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopehjuggrshhhihgvlhesphgrnhhigidrtghomhdprhgtphhtthhopegslhhinhhugidq
    lhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:erhoZw7hk2xmCx2Osd_-sRgUgUbNQ3_pYsp3E6Hp-u9thnZL0JYgnw>
    <xmx:erhoZ04rVfDxKzzWhLhrvK7rxT_74Dj6lVnfCHFL1mGkAqlTQv0BAw>
    <xmx:erhoZ4gg-um8_aqr3gE_wNEGqETrFIkVx_4ZfUoGCh2Ac4xqdB_l9w>
    <xmx:erhoZ26bt7i4silwKF-TM-AYA_IqncZ1qk6g7FEYiYtFcMWy4ZLjBw>
    <xmx:e7hoZ0EU8VFcn-8vd3cRND8ntAgi5R5kSF4-6LRiYNhY4hvLC3UzOouq>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 22 Dec 2024 20:10:18 -0500 (EST)
Date: Sun, 22 Dec 2024 17:10:17 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jude DaShiell <jdashiel@panix.com>
cc: blinux-list@redhat.com
Subject: re: youtube issues
In-Reply-To: <Z2hB3hnS-T8uW2DC@panix.com>
Message-ID: <f418d7ec-e79d-2a87-38a3-046cc6063a19@hubert-humphrey.com>
References: <Z2hB3hnS-T8uW2DC@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: dQpUZHRJlDWdDEw4iH-xr1oybl26mqr2xGuM7kuNj6s_1734916219
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6LHVRLurXBJTfSlbHhYkqlvWe_pio5mIO13pM5UureU_1734916223
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.147 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Well, when all else fails, consult duckduckgo. Seems there were postings from 
June-til-November about this error. They think youtube has blocked my ip, but 
some say even useing a vpn or proxy may not help. Its not like youtube is an 
item like Napster.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

