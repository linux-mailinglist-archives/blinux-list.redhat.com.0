Return-Path: <blinux-list+bncBC3NDNGRUAMRBB7R3G5AMGQEUFKOVBI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 3775A9E8A8A
	for <lists+blinux-list@lfdr.de>; Mon,  9 Dec 2024 05:56:41 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6d082a457sf153341585a.3
        for <lists+blinux-list@lfdr.de>; Sun, 08 Dec 2024 20:56:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733720200; cv=pass;
        d=google.com; s=arc-20240605;
        b=k3LXd/9fipP91jcLoE7OGb2el1AXY80uwITjOjl1tzjF06PmSHuXvrnV5qG5mxRaTz
         hkx63EwdQRd5C8qWjk/7/CCI0h1cDT9DHMHX/OYqmcsQIpf/wNcWPbNWHr663OPi75QG
         xKMMJqm3UUkcl3r4oDynby/r9QsDBikEYkktvo6WzWIrH5RlFu1VO+Q5sWICuN4DoH04
         SHjw1Ysre4fb+kiCIMJuZqVDtDSnxxcTMTZWtwlylsbe7g4wxwV4Mt+HU3EhOZWiMVb8
         zuMT6E9SqO7EBZocL5cJqELSh/RVthFnfDI580TYXUHbHWWOev3wRL5aL8au6u88sfGj
         FESA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=VWrnm+YJ2l8L24OLy/nqYEWreDV0uszKAuBhhiCfVOU=;
        fh=qTQBt+IKPh3vzpFxlcv2c0ixvdRbwnEeX901A5Ynq54=;
        b=aWFuc6cs/Cx9RAcAJXkFQkNn12rthQaazlj5oqjhnbp9zY1ioFkF2Rfsl4F89fTQht
         WhWY9uVPYaIhg1nxrTaTYKmgTOCd7kmkEbF2CwjnG4ro7kYJfcvcOjbH95lW8/0ctPT0
         Z8NwOEDCksUKdvDn2MmmhlQLtzTG5+9jFVkGd6RZ1bCZVC6HGh209pZlQVLZLOpmUktB
         X9ifSD92trHn59TmI3UEumVJ0eWn3QgVwpK3XUCx9AotLj6LCp6Pm8Wye0SCV7LexGMd
         O1ujC/9lhdzGUj0s1FFRAOcLjuhyTQuvy0wz7gg/Io/rC4YX4Jm8xD83+JJKVEialBPe
         O0gA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733720200; x=1734325000;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VWrnm+YJ2l8L24OLy/nqYEWreDV0uszKAuBhhiCfVOU=;
        b=lxsaM6IghgKSoZaqNNXaanGSATcORFA1uswdBEyKcdSZoFKxj2sjMt4NrVCW3lTT/J
         c5mRMkWoi8aWLhPDmKRyZBBrPBKiWMyzLI0hvFxMB24r8Fq+f34x3/N5Uw0iEsSmNPRl
         +ydLPRRetePZd5GHvWyTAiAZN1ArGePMkBllZa9zKi1u5CS4Km4JuBkOXaYM1lQlzo12
         0dO6SpPv0FV0Wr6DpiiIzKm8LtCmHhxC60XeiT44bsRXzUtqBezWLgYYmUxFo/g2h61M
         ja/UC+pZSff6Hds7HtJp1gRQCgBW45H5KKzXEz+aRAON6aHy+a1iiM5F8Z2Lk47zHjSD
         ss+w==
X-Forwarded-Encrypted: i=2; AJvYcCUZbmlDxrM5wXQ03aM1n4Og3OrplqxK3wlBxt9PKgHTBIwKgShC7HsX0m09qKhwAdoE/YcEZQ==@lfdr.de
X-Gm-Message-State: AOJu0YwKv033C6MPWSpkoq6axj25e0neTIlDsXa0x6ElsR6NPgzDcDRG
	/S84pwi/DsZVAu5Hr9UAech+eT6NpKMG/xrsiewzP+8Mn8sjRTSa638oVhq+pJA=
X-Google-Smtp-Source: AGHT+IG0+9OKEaKq5K70Rz6NrPOf2mA9M+LF4Xvvpki3TxI0ZhIlU54/+lErbXjBy/8/x4xbunPisQ==
X-Received: by 2002:a05:620a:1a0f:b0:7b6:d4b9:b5a7 with SMTP id af79cd13be357-7b6d4b9b7c2mr413556785a.6.1733720200035;
        Sun, 08 Dec 2024 20:56:40 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:800c:b0:467:5eb7:7178 with SMTP id
 d75a77b69052e-4675eb77cd7ls10860301cf.2.-pod-prod-03-us; Sun, 08 Dec 2024
 20:56:39 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXEamFD+1woBSMJ2nFLfFiZa0FddInFEHlZDNWE1/bVvOPqW3HAWk1aLirEJJftM7Hk2wsUmRugU/HGjQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:1111:b0:463:1577:2416 with SMTP id d75a77b69052e-46734cff63bmr221574331cf.32.1733720199151;
        Sun, 08 Dec 2024 20:56:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733720199; cv=none;
        d=google.com; s=arc-20240605;
        b=AQfgWA3cje44nJNmjXnIvys3GrvkRGnm0oDhSIYw0aWzZQ5R/sqfVKDMNhZ3emNd7j
         gfxyxaOiHdmrvIpX+VLWm7tim8nItynXTBCOHb4XtBoBSoBOsAkg02aqnewWaFmzs953
         lHmhRQ0zI4+L6dW0GdV4KoA6HWmEQFqq8gpzi7jb0qxXELBwyeMBB6Es1jwBw/a7+hY6
         bRPbP2AO0cG0mp9u37nCz69F/aH9u1xNRCpO3Q1aSSTOhS4g8G2rhNJfmQ35Ql/ZSLKF
         QNutrvYE5/y3/cGGgrc0oeIBOf+Ymxn7TzhT9h3kAIIr9eIOp4bwKqJnlA1Rl0+ZpmIp
         HFJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=SIqW2Prceej6C5qYYVV+xErcunT6iUgP88V0Sy0UIpc=;
        fh=71dRKId0vhc2OBbBdNyFr5e5jwSd8uHPlX/mmKgg3wU=;
        b=J6+Yk+Ml5yvO74/g/9r33/c5cWhdzazmw7m7pMu+xZvTxBYICo26RizcV/In7OfGTl
         G4ARKINZktsp1IGszuMX6vUXw0+MTcbeoGLUiPnTfxmvruPedHkYvvw+PXZv+iuK5Uba
         wt/sFMN3Ld/1ngAYsJEUSkXANJ/V98qo3e8gETs5kkbLfBMVYgdXHIDoLOVSLLfFTM+f
         tNtZje5zez5rO7c73MuKUiUZwHehC9ofHVXY5M1KXEDSk/UdYloO7aR00un+KFDJnaxN
         gngLgtVIFN9RH6fA8s9reiuevC6Kay2dlJaza1wOqLmEqum8WGbZXrH/wgurVHMB5wLW
         vwuQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b6b5aaa84csi1034442785a.428.2024.12.08.20.56.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 20:56:39 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.159 as permitted sender) client-ip=202.12.124.159;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-267-gnQb6J_gO4m8em__A0TTjg-1; Sun,
 08 Dec 2024 23:56:37 -0500
X-MC-Unique: gnQb6J_gO4m8em__A0TTjg-1
X-Mimecast-MFC-AGG-ID: gnQb6J_gO4m8em__A0TTjg
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9B00A195609F
	for <blinux-list@gapps.redhat.com>; Mon,  9 Dec 2024 04:56:36 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 95B5419560A0; Mon,  9 Dec 2024 04:56:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 935E8195608A
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 04:56:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0D39119560B6
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 04:56:36 +0000 (UTC)
Received: from fhigh-b8-smtp.messagingengine.com
 (fhigh-b8-smtp.messagingengine.com [202.12.124.159]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-518-dt64Q9_XMy6qL8xyC4fZbw-1; Sun, 08 Dec 2024 23:56:33 -0500
X-MC-Unique: dt64Q9_XMy6qL8xyC4fZbw-1
X-Mimecast-MFC-AGG-ID: dt64Q9_XMy6qL8xyC4fZbw
Received: from phl-compute-03.internal (phl-compute-03.phl.internal [10.202.2.43])
	by mailfhigh.stl.internal (Postfix) with ESMTP id E6DE725400E9;
	Sun,  8 Dec 2024 23:56:32 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Sun, 08 Dec 2024 23:56:33 -0500
X-ME-Sender: <xms:gHhWZ8SrWTRt3dcM9m-EyRcEpetjeoZykVAo8n5zA9KSPcZ6nG-JFg>
    <xme:gHhWZ5xWJnMPfhiYw_IpRkNNB0mo5lvlRvez8kxoihXKm66EkzQME83aFmRqDkBTB
    LQjUibzMzWegT8Da2M>
X-ME-Received: <xmr:gHhWZ51gU5D4wx0ufp6Ot2I2gV4hA8k8u5t4hRsNPv87qsULIKt-RRk2oo15_Np8jfYHnxy9_XBhFTZyAGEOdNdnmFjOcVxvbVM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrjeeggdejiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuf
    gjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhi
    mhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpe
    dvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffefffeludeftdenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvse
    hhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohgu
    vgepshhmthhpohhuthdprhgtphhtthhopehrohgspghhuhgushhonhgpfedukedvsehgmh
    igrdgtohhmpdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:gHhWZwCd7Ne4LELuM36Lss17jvXaSZO5E6AyJeucUyfcryG-idVYDQ>
    <xmx:gHhWZ1idEH1LZTQboxuzI9xo9T01sZMBG4ca4o_HByAHNXzRzzLyKQ>
    <xmx:gHhWZ8qqdgsoPXrZ1Al19uBBKHg8TDKg1w2exOeaNDf-3b7EMS2aOQ>
    <xmx:gHhWZ4jFzY8VUXqmHHu7UU9Xw8xvyYU68WPedL8GhAbiPWO_jwPWDQ>
    <xmx:gHhWZ4v9YJOJRsyQdiAyiAjpYkFDW3VEmIab0Cys3mv2SO6YdYIYts1V>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Dec 2024 23:56:32 -0500 (EST)
Date: Sun, 8 Dec 2024 20:56:31 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rob Hudson <rob_hudson_3182@gmx.com>
cc: blinux-list@redhat.com
Subject: Re: My Sound-Cards Are out of Order Again
In-Reply-To: <20241209.043800.647.26@[0.0.0.0]>
Message-ID: <20ccc5fc-d10b-edab-7aa9-9ef3365491bc@hubert-humphrey.com>
References: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com> <20241209.040341.694.24@[0.0.0.0]> <41ed14fc-97e7-bfd8-b13e-ad14d429cc1a@hubert-humphrey.com> <20241209.043800.647.26@[0.0.0.0]>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: ARxBi9erYpAoOFoDTlyW5fEyJEgccmBq8l-PdkNd77A_1733720193
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: DLZP0fgTn_csBxbmXnmb2xOoRonofnFZHYOZlMx-qmw_1733720196
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.159 as permitted
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

Hi Rob: I don't have either of those config files, but I sent your suggestions 
on2my Linux expert. So is their no way of altering the defalt on the fly? 
Thanks in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

