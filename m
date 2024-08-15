Return-Path: <blinux-list+bncBC3NDNGRUAMRBHMM7G2QMGQE3K5Y4TA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0C89539C7
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 20:17:03 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6bf7aa9dbe3sf6895326d6.0
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 11:17:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723745822; cv=pass;
        d=google.com; s=arc-20240605;
        b=QeLYJXX6jTeR8cvkyOasSuq1f6yy4aK1GLK2ApSEzYfZ/++YInrOAr6kFDAE1van86
         awQCSdtrkYpaKeYOq/hy5NEyEzLH/uuVykXflrVqobp9spCk/jvKBWvv6Q9aAb5iuenQ
         qH3eTTVovBAS16Yojx7ZUdvNddhk6b3mgNdQBfQBlDNREKEcrd1A1ZiaST4C/t5tjdjU
         mg0MBU1dmZzXhpQj2zVUa0vS4ioV0T77o4EdylKQ7BnXmIaVsuCYNgRvP8Dr1X0Zs3B8
         r7yoTN0a+OrOgpDSkweSoC3GFxWHTJzuG18+M4leFqRsoBF/uZR+8vlKk2mUn2Zc99cb
         jaDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=OScLzblztet7bMg3OSwaB67XXe1zG4xhJWClesk1N0Y=;
        fh=c8RjqIN27P8Z7qDwPm+TagziTr4SyOXNajmuCFBqgYI=;
        b=HyAV6HBw+7qg5WwpOV3wEsyHryHNzHowBMrZZ4fpELCs72KPt9BeqJtNGIYJ8KBMA1
         KsJLmKOdjCh99G45ZjeJWreApSFN/yaNG77F323a5itiGjZN/uQOcLIqK1nV01ApkSqJ
         XBEhMLh1s+6Orbrj1jj7s5GvfXdJCXGFQWgIZ+ydkjf88NxB1AAitu4hieY/LOccwUTI
         Bn9rxN/Q2/Zn2Xvl3z7ZbOXYGFB2CLqsF0mvv/vRWfKy0oNld1xjaVm5ixImDrZvKDZU
         ZaAKeMOayaGlFD4WRTaZq66ezRi/YpH6BoSDHDf0W7cFrn1BOTRYGCZqdIX+1/SF1twa
         IYcg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.149 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723745822; x=1724350622;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OScLzblztet7bMg3OSwaB67XXe1zG4xhJWClesk1N0Y=;
        b=RVMPoVjaTBnSYilC0juhP0XD+/i2QumebkiHDBvXRxnpHKAno3pst6yCLaFsXJlvHX
         kxDgzqYhOjLXw5hejcact2w+2xDfd3q/vDvPCyxU+fsoEnAW3FT/UPalu8w4D5AoT4d0
         jrQi/nfIVuNsjjMAezEbJ964kvsxYEghHLxgOAYpvCIonsNBfRSN38bjAc3nNfMRC2H7
         1S+6kXqC8kPEHhzpvsKIZSOHlMro89B8pcMG8BbVhSPyY7EZTwhdmQhevnCw//MLjK7M
         iFjFI71YTM2leghG9uHW3/m57JR/EOK/1U4HaccnlEEKIj9VMdhcGyhudrtNsZtOd3vm
         +AjQ==
X-Forwarded-Encrypted: i=2; AJvYcCWGXWN+ImsT+PDzjcjPAs6+CLVa1VSaF1D/YsoAF/3K9GgahEUsASnUkFT8JwPxjDgfJYoYj5IIa4NzU5PjelcOdOVbVXEe3z0H
X-Gm-Message-State: AOJu0YwBZZjOOAyrSbVSPOc3OQJa/nMwoAZHsNhE8oAz3r4V8dhbKmQD
	6jAgOWa76XZCGoZgorWfY7zU+mcHd6x0F5xbVWEzYx9Uf998FIEjZ/jv9tDVoRo=
X-Google-Smtp-Source: AGHT+IEjkP1vDeyrcr6BsF0yT3xWB161IWWqzDWSI+8gV+I2dMmp0vG+kK5hqlz+8KkM/B2VttRd0g==
X-Received: by 2002:a05:6214:3988:b0:6bf:6a4e:4fcb with SMTP id 6a1803df08f44-6bf7d546046mr2021196d6.14.1723745821694;
        Thu, 15 Aug 2024 11:17:01 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:3cc:b0:444:f3d0:bcbf with SMTP id
 d75a77b69052e-453672f0c60ls24625491cf.0.-pod-prod-00-us; Thu, 15 Aug 2024
 11:17:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWoEi3FKgHrUb3PWOKFhiRw58mrKiAccmf4SgI82MmsjkPRHsJahvIn+3LStbZfq4Kr8noOcRc5dGp+H+Pa8Y6NA43js3/DtNtfg/yz
X-Received: by 2002:a05:620a:45a8:b0:79f:18f1:b6e6 with SMTP id af79cd13be357-7a50749283emr23936485a.10.1723745820878;
        Thu, 15 Aug 2024 11:17:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723745820; cv=none;
        d=google.com; s=arc-20160816;
        b=yQGnwKUhlIwPV2E7h0cLoxk1AN8bdDVbZ12Zbm+LGJxyG1YU6Q0SZp9psWrGuv1jQP
         3qw8ksCqowxbIGnbWExh2tyoVq+bi6BXMmNWN2c0Fo9c0x2M7VtRpfX87ygyMxE/lHeM
         IgsZGPlpET0p6GTCrOBocxp5QH2/af10UHBB1OdXDOEbVQRvfgu+JizgwwRaRZYoG5Ck
         6S2q2hh1hEMTb7E94R+mH6MdV5QSFEwfdG+mazTUssFvWUc84zsityhFyevZ3F0fMj1P
         6rXqQxsihtPCu5LQiXiVkLbdF1HK1RMRR+yA+D9FUCJMz9ey18qIPeJDzfhozCwQoKZC
         5C5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=XKBu57eD956taEdH35JDnSLAqQpBv2OVR3ByrmkeKkI=;
        fh=egCYbaVhLEDbDgD7NHRJ3aPzFufLHmM1Hfl4V7AEd/g=;
        b=aykzQOb7m9qxNOb8zmoHv3X3ZMxLoLI6Ws/9rLas1tVptK2GLmEihKoxTdBHuRKKVq
         moF8DUkBr7BFR5QEJd6EFklVtkpHXQWUgsllwpMfKCKtxHnUl6s9ZFbh+ZByvI63uDpf
         Br0WndZdeZgfDMmB57apzfZ27leqBBduvRlatiXmoKLy8S1EAplp2ygzBcwpLxtDo1Dv
         8SIpLIoDIZP1r47ynCCnpiP9TpUOgb3KpFMmh7NbuvArQYlyVz9b6T2/xSz6ZUmUeIo5
         VhTsipoI78Er81DwYy384AaEZiwjksxinrj6ErzSHN74GbqPu6VZgnN96ERfldg/MthH
         p2bg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.149 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a4feffd455si221829585a.119.2024.08.15.11.17.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:17:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.149 as permitted sender) client-ip=103.168.172.149;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-629-8yUzq3COPBmwEWiglvqhCw-1; Thu,
 15 Aug 2024 14:16:59 -0400
X-MC-Unique: 8yUzq3COPBmwEWiglvqhCw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 630001955D58
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 18:16:58 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5C4291955DD8; Thu, 15 Aug 2024 18:16:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 57EBA19560AA
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:16:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CFE611954B1E
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:16:57 +0000 (UTC)
Received: from fout6-smtp.messagingengine.com
 (fout6-smtp.messagingengine.com [103.168.172.149]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-480-uJFVhwd7P5mdWHFz2AWPWA-1; Thu, 15 Aug 2024 14:16:55 -0400
X-MC-Unique: uJFVhwd7P5mdWHFz2AWPWA-1
Received: from phl-compute-07.internal (phl-compute-07.nyi.internal [10.202.2.47])
	by mailfout.nyi.internal (Postfix) with ESMTP id 3CE5C138FC80;
	Thu, 15 Aug 2024 14:16:55 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-07.internal (MEProxy); Thu, 15 Aug 2024 14:16:55 -0400
X-ME-Sender: <xms:Fka-ZvZA3yIxz8iz-Bq0u-X3XLrYluIzfdYOMDM65H9j4KiTn4RZaA>
    <xme:Fka-ZubIKeyS-HF7xHLExlfM4Cy9O6TePO5DWQwaWW2LPVGM8oQEawdn4KepSGjmP
    6mqv0foNnCvD_-5Tdk>
X-ME-Received: <xmr:Fka-Zh-GsbciyZKiQoeEbG96rCMDW3qvR92w6L-yRdnkLHQ8zkXTjWXmE_Qa9piUwSYhecJHqWTz7Gfc26ef23oabm1_dGlGeuc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtiedguddvgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    evufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegt
    hhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrh
    hnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffefffeludeftden
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimh
    gvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphhtthhopedvpdhm
    ohguvgepshhmthhpohhuthdprhgtphhtthhopehkhihlvgesghhmgidrihhtpdhrtghpth
    htohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:F0a-ZlphjYCKqtsFpgZSYKQMu4cWbfJjx-uoMGuBNRnIYTCRiY_b4Q>
    <xmx:F0a-ZqoT5cjZ9GCuwE4g4FEFogTCrCxjKFLejJashoWe267FvZBCtg>
    <xmx:F0a-ZrS30mYKGoo0ODl4r76-zYh-pHSdhKrRszJBuaKZlAJPKaf_rA>
    <xmx:F0a-ZiqBUf1wCXf2vNtnlW4stbcYEZbX-v2ilfHHXq6wfMiW1Qoq3w>
    <xmx:F0a-Zh0sG1cdqnLiuYjDp0gaTrmkt3xxIuECG2Z5QZ73SVX2pJcPpmBj>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 15 Aug 2024 14:16:54 -0400 (EDT)
Date: Thu, 15 Aug 2024 11:16:52 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Kyle <kyle@gmx.it>
cc: blinux-list@redhat.com
Subject: Re: Can I Easily Run Wine with NVDA in Debian SID?
In-Reply-To: <82e292a7-ad8f-430d-820b-b51d22517e84@gmx.it>
Message-ID: <9ac9a8b2-1647-aa75-5015-a7ae1259faad@hubert-humphrey.com>
References: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com> <82e292a7-ad8f-430d-820b-b51d22517e84@gmx.it>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.149 as permitted
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

Well, thank you Kyle-and-JG: Originally ORCA was working until Python3.12, but 
even trying an older version of at-spy, ORCA will not run, but for errors. It 
also didn't matter if it were 46 or 47.1. I had it working in Voxin with 
Allison.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

