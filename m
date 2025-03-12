Return-Path: <blinux-list+bncBC3NDNGRUAMRBZUSYS7AMGQEI3FGCTY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A5BA5D508
	for <lists+blinux-list@lfdr.de>; Wed, 12 Mar 2025 05:11:20 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4768d63b1dcsf8464851cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 11 Mar 2025 21:11:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741752679; cv=pass;
        d=google.com; s=arc-20240605;
        b=QqijMUm7qivXPt6i8pzqHZkwNKZX80gFK/R3gNZKG3Ds5pngxa1iEqBgUST8Hg5evm
         wsEFKpHPc3qTX2x1c8Vxu9ko0oUWPDYgwsB+RjuqfJYc3OBkemE+RyWz0uulh0rG/KwO
         k0dqGsYve9cQlJGcSY8HDEjT4ygIt4C9up+7Luq9/vRCmD1Qb8H0xgGMBiDyADO8Vipv
         tO9C2qSJFKzAt3k+KxW79Coy/sNAHqR782nbCeQvcgFdTlJqx9wfSR04+iudR7l9FfWI
         EKnzPIzcBdvuzQxk+sEQWwGXPlOtabonrj1esQkcLcmU76l+2Y42N0bMZmX59nDAOrd8
         xxKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=eMmgGsLbPNU1wogoKZ23zaiaQv1g6pUD2t/zxR072do=;
        fh=u8OTtGBz7sFe8vgSaNZDm17QVFt/LWyGTKVOk10E4zY=;
        b=SUSvqMVLx4RnrPKBE8GbX3z0U8ai/6EfrSwG9gDEIczN+SIMKSkquyb1N7D6dCWV0h
         gEZ2fWVjzHveiPuxZXkWOoHayXiowjqatA4r9IX3y5sCe15U5I7/4W06iG3uILd6nKWu
         QeoKlYjuVGFKMhuMlHeZqFxf4JRao1zROftRj+uTJBJZ+aXmgIg4JSMja6SO4r7KRWOQ
         ylSg3CDmXN8BUiu6ylSCfJAjnNF5bnl5zjzpSIl61EeqaU7VWWV+LgxtUI7W2p851/nK
         1r8oRbqMoYbSICst2h2+RAest6rnSeaQpZ7KGSWm5Jm/II8ekoTfhVOS8rJoS/wbtsGc
         D8+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741752679; x=1742357479;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMmgGsLbPNU1wogoKZ23zaiaQv1g6pUD2t/zxR072do=;
        b=UI53KRQsMiYV+5edab/3u5B68CJF5ueKkSWXkCW7xJe9WWlUm3zpmbrwUDoPJfABqg
         J5YtdTberfLbGizxv4OwDL/urFbqYirZkA6JPFGKVItUZiZ0OEd5fKhBphC0P8/zZu+k
         2rP0Omoc1K7FA/5R3bkNdICTfPMjtlbhRbFT3H1ErnWKitMOoXfVPDQuxawVu32YQ/vl
         oFtFYpC4YwMeIVyM0mIPLIVVRuajhYFkTD4l0lZGYq1sqDP247wisN0QdEOMVVAbzKyL
         ZJVkGIsLFNkBin5lyIauhl2PYCgeZh/97D9kKsfQsn5oA+7XUKQKKFo0Qu4iz2oKq6ux
         hSFg==
X-Forwarded-Encrypted: i=2; AJvYcCUx1kSFg2IOG8jW0axKjqHNnQ3MNpXw8lUTCZ7SzyS3L9gyX9fulzHHy4ga45u069/B7rI7Jg==@lfdr.de
X-Gm-Message-State: AOJu0YzFCyjwmwjzx1py3oIot4qki/rBnpOr6/DqxdJh3XwVduD7/y1D
	swxLE6BS2T74k3XoNtJCjDUX07mbUAjZwzTpLCPSDuonRx4D7+JkBfhVnHJ4qf8=
X-Google-Smtp-Source: AGHT+IEMiHMwQ2YraRR3L8Z2mkbRvXPiyt1zzoyG37MuOjvkBMIJBp5yEvItFlsSJAcRNKuGD7HD7A==
X-Received: by 2002:a05:622a:509:b0:471:fc73:b656 with SMTP id d75a77b69052e-47699f26d3amr104200751cf.12.1741752678933;
        Tue, 11 Mar 2025 21:11:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVFwjKqASYs/g83FkCBe+xhpL/VwNEZ5Ax+moclWdD7yBA==
Received: by 2002:ac8:5357:0:b0:476:810c:f080 with SMTP id d75a77b69052e-476810d131bls9556761cf.1.-pod-prod-00-us;
 Tue, 11 Mar 2025 21:11:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXkBA5S3A65kRxEx9T02a6Va6R3W+ILPlY0IDExF/sd5jy8OzxBtM+ya09ZKfbVVirx+bUBGfYChyFHWw==@gapps.redhat.com
X-Received: by 2002:a05:622a:509:b0:471:fc73:b656 with SMTP id d75a77b69052e-47699f26d3amr104200331cf.12.1741752677925;
        Tue, 11 Mar 2025 21:11:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741752677; cv=none;
        d=google.com; s=arc-20240605;
        b=fyCWc3SG/LIBIFrGn5BcRNZoO3CC6MJpd+r+NqDCG4hhV93p8SpNL/5/16jQF2fkRk
         +EciDpk+7zIl31FnPAKFkINXaBXLgHP+QoORzLVaX2+INm5nTRXJHUa0I9jYJSaVzGvy
         0382PAcR2IA7nlp6QL3TuFSctntaUpENmsN0E3uAwP9opnmmrp9FLHr47979yOuSntV4
         cgvN4ytgy0ZlwkwwKlJbWyOOAdelnUVed+60vDgxjqgsg/ZisfrwmY4lrODuEXTUrfCw
         3jGjWpyVp+l85aneHfSncCOtXlI4oyw8J16KNZBVTEDZP8Ekgq0/isrCOOcqPTPmh1ee
         Mntg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=RxBMM6hfNF/hUUj6sfmxKpxrtj3IcRCDdMqRJx/UaMs=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=hfjR00xiNShQobWp3mqJR6D0z2nlQ/XmR2Y9QeN9DJ5Nj8p31RICTTuAdZm++McrR+
         dNipfXrQzZcMtZI0d4UmE0kptz+jF5og84ws+s0BCfJqy/m5em/Ekh9AlTevJNyD82WG
         0Q+SurfFLACfcVt+1w0mYQad53WvsC6amPrlIF3Bv3L1T+9fRodXGzKUSpu64XFaM7dW
         fJKUCaInAylZvEEAEnRZnBSCH4Egu6fMsQi4qI0Md5URyAM3Zsu5HzVKpamt2B142DPE
         q6E4cZRusujt53sAncHEweoGeIXrJbrqobR+3hO0KHwSEkL9ZTvFCsCx8PhPamotzk6K
         7ROA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4751db3c2e8si121216081cf.534.2025.03.11.21.11.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 21:11:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) client-ip=103.168.172.157;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-692-WM6wawRvNCm7-P_XzdbBwg-1; Wed,
 12 Mar 2025 00:11:16 -0400
X-MC-Unique: WM6wawRvNCm7-P_XzdbBwg-1
X-Mimecast-MFC-AGG-ID: WM6wawRvNCm7-P_XzdbBwg_1741752675
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 53A4419560BD
	for <blinux-list@gapps.redhat.com>; Wed, 12 Mar 2025 04:11:15 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4F7061944F12; Wed, 12 Mar 2025 04:11:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4CF7A1955BCB
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 04:11:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D32B51809CA5
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 04:11:14 +0000 (UTC)
Received: from fhigh-a6-smtp.messagingengine.com
 (fhigh-a6-smtp.messagingengine.com [103.168.172.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-692-kjUklnqmPNeN_V3xHMa_iA-1; Wed, 12 Mar 2025 00:11:12 -0400
X-MC-Unique: kjUklnqmPNeN_V3xHMa_iA-1
X-Mimecast-MFC-AGG-ID: kjUklnqmPNeN_V3xHMa_iA_1741752672
Received: from phl-compute-09.internal (phl-compute-09.phl.internal [10.202.2.49])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 593EF11402DE;
	Wed, 12 Mar 2025 00:11:12 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-09.internal (MEProxy); Wed, 12 Mar 2025 00:11:12 -0400
X-ME-Sender: <xms:YAnRZ8mFg6gFwbLsHHxHL2NPksu6HMsYpLAkMkXYyRwm0qws3i5CQA>
    <xme:YAnRZ72odNUPQKUUIC_GQc7vieZuqum8U-9iUt1uU2zJFAmYxag4BHkr9_Yxiqy06
    9Tvn_uwoz8ntwFgLxg>
X-ME-Received: <xmr:YAnRZ6r-4R2wIpsnYBzKTcskZ3qq1JpylGbSMTBS2sPVeDDkLK5SbiiRGiND_NXtG0jVxrjsXyo_VwlbIVgZLcjkM85Ze7Sy2Zk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdduvdegtdekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
    gvnhhtshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddv
    necuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumh
    hphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeej
    iedvkeekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhr
    vgihrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtph
    htthhopehklhgvfigvlhhlvghnsehshhgvlhhlfihorhhlugdrnhgvthdprhgtphhtthho
    pegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:YAnRZ4mWoTnbXgsqLhlTHiRBUdYhfhJV1kOTNwrpfAs-K49rMOGl1g>
    <xmx:YAnRZ63ym4eTJ7UqqeU3g_mgMkSSgiSaixEUNNCl1jNFAVAXPTBQHA>
    <xmx:YAnRZ_td0BdZnIg6J1gKp1FUnJKvVYaD18CN3n2CMI16XBLf_4udow>
    <xmx:YAnRZ2UXKRhC3OINUhdiq6k2ofvSNxngsuGWVPfch-N-Ca4PVvCG2A>
    <xmx:YAnRZ4DIn5mWXxGBlwPvkJ_e2kdZTrIAMWvzwVFXJNGf7u0-6ZGaooYg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Mar 2025 00:11:11 -0400 (EDT)
Date: Tue, 11 Mar 2025 21:11:10 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: youtube dlp?
In-Reply-To: <Pine.LNX.4.64.2503112329560.3552976@users.shellworld.net>
Message-ID: <35d3aae3-ad01-1f78-a426-dec2332a8f5a@hubert-humphrey.com>
References: <Pine.LNX.4.64.2503112329560.3552976@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: lWwx7FxWE8TfzXn2W-fmBwbPn7oftnwFNOFGTpeFPPk_1741752672
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yWEB1GBT6Tcf1Ujm1QRCC_VaRtgcuEecb_FMbHMaTHw_1741752675
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted
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

Well, Karen, I also look forward to any guidance, but I would be surprised if 
yt-dlp has any menue structure to display results. Seemingly at most they might 
just be a list of urls. As we discussed yesterday off-list, what we really need 
is youtube-viewer which has that functionality. Trizen also has 2 other similar 
programs straw-viewer and pipe-viewer. We have none of those on Shellworld. I 
am not aware of any other menu-driven youtube type applications
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

