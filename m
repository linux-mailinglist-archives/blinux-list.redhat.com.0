Return-Path: <blinux-list+bncBC3NDNGRUAMRBRW43G5AMGQEZLN5MMQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC539E8A2D
	for <lists+blinux-list@lfdr.de>; Mon,  9 Dec 2024 05:12:56 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8860ab00dsf66980526d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 08 Dec 2024 20:12:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733717575; cv=pass;
        d=google.com; s=arc-20240605;
        b=DmLiF65RMHCY37Sz5ueNoaD+H48cikK3f8x/9R05STYXnhW8lSBeEHKGVHkMPaXF++
         KJkQgOQ5Y0uED/Kia5qP0lSzIYLJyWaGaauQ0hHy/d1f1U/MSS84KVfh+g4SueT4sP9w
         FFO4NbOyRl4lN9VVwF71oVs4nFdKnEiSyBspPqCQWOz91qvZNHAXKvPvtiDogP5ZgnI8
         ISFv+8/f0KzcJ/98DY9Vuk2yUcuodVRwxbIRj2TMN75MCy5MisRVRJtONV/0ImLilYKk
         z7/bIPp4F75pueap+dn5o7syt9joMHGgxqB2sjz33rA+8f3hWMfMC437kYJblbMBcqu5
         6pSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=5tFe6UvUUxiz0ToOg8+KWvJeklO8bhEKJmRtUuH/iFY=;
        fh=rOL2cnRl8MDlaubmtsLWLtBZ4MynhqDgADQwzT9n0h8=;
        b=O5rcs3qj2DjfYkQvsi1vcLdJMC4P7sED5VdoGLr6eGNJbb71EiPLJHQ76iIaYdCJC0
         JymHqAOtkCGmrlbvTGyjW1s6zEigSrCNe+uppIsYBXE4acTESsK5LyUraweqEdHbpuZe
         1A/dpAKTbJqzkFW/7JGjhgUDi/PQ2UbImMZMpTNQHSotc4pUS774l8QE2YO/sil9ygna
         w3a++hXU9vmdGUQ7LJKLHEW3iTuZAgbeVPZqYBiwE4YUOrpsjbnRjlupvjQFptpegRaD
         QoA77L2rRXfzZR8iCCxs2CJ4ztLwUtg/6ttDD2FLBS+qRR2DkeIfoVO0P7qHC1ty+SD7
         6n8w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.150 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733717575; x=1734322375;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5tFe6UvUUxiz0ToOg8+KWvJeklO8bhEKJmRtUuH/iFY=;
        b=OM8yYa0BB+cmFGnV06SfM7cQ6py5IW3BF4dROC1KptnYZiNmFGzFpRwzzAE9vi+ePu
         WkjhtRqEvvbwTCDC+ifgOPVZKG11+dSON2/NSx7HYuWcPMBVcLJ6QapyJHvYazOuABSb
         aFmR33sinABLtOxH3v3ww6PUd0T8DJZ93k21DK/OrAUu9Vm81LwaZH9v6WlIT6yqy6k2
         7TqWf12nuu+EsNjbg4K3SRRogcWL/KaygBAyzxs+kOnT/AlKLbXxAJtUImsy9ggFA7kp
         Hfe3inhxL0SI6Wi2T/AlHFdcM54bGS3evGD4Sy12pPnIqb/4DDS4Ic0Jnk3UQ60MBHRf
         lZew==
X-Forwarded-Encrypted: i=2; AJvYcCWTlQPk/n4xnTWiIIoG/tc7PzyQGp9JqFtn6mVvoybcUZ4QsA9DQuY8hpMxr/Bon7DcqRtpXw==@lfdr.de
X-Gm-Message-State: AOJu0YxuRd8hmr+mbhgGrQlOriq51JXphIDYarJOQwdCC7DVu3/FFnYO
	2L17goQVjnrXXDaOqGvX4F3uN94MoHEV06fNI4qT3aD1/DbCxQLizub++WQfJrg=
X-Google-Smtp-Source: AGHT+IHjeek/fOTrriSlfk9anb6+SSYeKAuwqK0cAjsK8MkJK+DtMuju/gHyGybAzpeVhmcrjoMRVQ==
X-Received: by 2002:ac8:5d8b:0:b0:460:7b6e:9475 with SMTP id d75a77b69052e-46734c8aa51mr222559801cf.10.1733717574862;
        Sun, 08 Dec 2024 20:12:54 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5fd1:0:b0:466:ac8d:7337 with SMTP id d75a77b69052e-46727a8b05dls50615811cf.0.-pod-prod-02-us;
 Sun, 08 Dec 2024 20:12:54 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVyOU7zHg31uMUWVFk8zaiIw7zJ+IMsYa9gZkUDMi95E96D8jbEzLPrTQTSroaZbIEy6sm5WXJV+sotTw==@gapps.redhat.com
X-Received: by 2002:a05:620a:63c3:b0:7b6:d1e1:a22e with SMTP id af79cd13be357-7b6d1e1a3d9mr651856285a.29.1733717573962;
        Sun, 08 Dec 2024 20:12:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733717573; cv=none;
        d=google.com; s=arc-20240605;
        b=FVBfLNX8NDq5/t6a5oBPRLweIxNfqTRwt+vfIN0C++4zSqjaMxEbcbV/23YuHBAxEa
         pU/VkpeU89geVEI8ADbKqZMGsntVymEpjW/6pJitmcqdh2dRLUFD27AgS0rB/k8JhRaV
         3Cb7gHTBrXncZph9mPIanoA6XtxWO/zzFdvXZATKW3Vcfr3Ve24TGp9rD+mLarYb0TWF
         /bDiE4LcZMWwEWuMg92fFkW1hoGc4W05fo5ak11/qSEXo1WGSNvip1Ffvk2oHtdRh8G9
         xvqSIGOzPIlAeJ3Rq9oNj+y0RqSv2LxuvRnMY2e/03LpfnWDkEt2NIpSaachVNaJNS7G
         ULIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=VoUre4COKH1Z84/atMdAdG4UfJBIpyHgWY1PBW1yFGo=;
        fh=71dRKId0vhc2OBbBdNyFr5e5jwSd8uHPlX/mmKgg3wU=;
        b=i4O+v9ADErceav4zVwuXzrNOllBdg2nKldhHJkJRaNL/vwYk/Z5ns5v1v+UdbBDONH
         8DJmj2vjt/RQt8ayRDGopqU5dKF4UMW5d8CmsMOaCmLT/5xjKfsTkgHXLvwqK3xqc6y6
         Jt43Ye+vL9hVtZc42pQG+nJbocDI2JwqEnWAa8yNcYi+kgP2cJaVU2YEB0uXju+xgFO9
         aRPYCKE+0DqEQmsZi3wJfkBUWJYdwf+5dGf/r5n1wJCLkYP9BMFmbr4da4Uf+DbpymbK
         3lPoQDpv35uYb9NEuAXvncOsAB6czQ7IYguYeErRjVv7HC3zuIQMyPoR6uHR1HNxY7RG
         K6gA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.150 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7b6b5a466fcsi1091638785a.99.2024.12.08.20.12.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 20:12:53 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.150 as permitted sender) client-ip=202.12.124.150;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-554-V69UCz2gMnC0PdCqe6YvNQ-1; Sun,
 08 Dec 2024 23:12:52 -0500
X-MC-Unique: V69UCz2gMnC0PdCqe6YvNQ-1
X-Mimecast-MFC-AGG-ID: V69UCz2gMnC0PdCqe6YvNQ
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7E9F01955E8E
	for <blinux-list@gapps.redhat.com>; Mon,  9 Dec 2024 04:12:51 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7930819560A2; Mon,  9 Dec 2024 04:12:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 76A4B19560AF
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 04:12:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 152FC1956089
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 04:12:51 +0000 (UTC)
Received: from fout-b7-smtp.messagingengine.com
 (fout-b7-smtp.messagingengine.com [202.12.124.150]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-235-5OzzCn4MNL66kg8-6N0pEQ-1; Sun, 08 Dec 2024 23:12:49 -0500
X-MC-Unique: 5OzzCn4MNL66kg8-6N0pEQ-1
X-Mimecast-MFC-AGG-ID: 5OzzCn4MNL66kg8-6N0pEQ
Received: from phl-compute-11.internal (phl-compute-11.phl.internal [10.202.2.51])
	by mailfout.stl.internal (Postfix) with ESMTP id C91C71140114;
	Sun,  8 Dec 2024 23:12:47 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-11.internal (MEProxy); Sun, 08 Dec 2024 23:12:47 -0500
X-ME-Sender: <xms:P25WZ_Oh15ncN-RonHrZunG9_Z_kF8WcwWe2DOUJa5SyJeRJlaBzCQ>
    <xme:P25WZ59iSooL1ud2PKPATDqOnrphYXUFI4Wjg9sw-UoHoNKnxsZECkmxvAbbeOqo3
    7SBde7Ov5utNi5P818>
X-ME-Received: <xmr:P25WZ-QvO3oP4ZWO2svVZpcyqDu11Ylz8AQFw6HSxYCPf8o0z6qv3vjtq_XzI-Lo1ZjoUUzTxopelNFmtDS1VoF9xC7RMeKhOvQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrjeeggdeikecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuf
    gjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhi
    mhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpe
    dvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffefffeludeftdenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvse
    hhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohgu
    vgepshhmthhpohhuthdprhgtphhtthhopehrohgspghhuhgushhonhgpfedukedvsehgmh
    igrdgtohhmpdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:P25WZzuoTVvy23zI1IiQvxtB47hqFBo3sMSX6SZLqhcHxnwJz9IIuA>
    <xmx:P25WZ3dn3SGF8DexF62wCeOr-jngvikC_bZ8tCW7fWN7CysBo7NeZQ>
    <xmx:P25WZ_2T1GpbCnrXFe1LWw9CmqOBWm-aWrMglWq2YoR6CEyNYAMOHg>
    <xmx:P25WZz_iUb9E6An0XH2R6MH-EUuE4qNL3eHjB3wVY15qE9GB4uAK0Q>
    <xmx:P25WZ4pMy3rhmTUom48y1B9Ia9nr2I0VqM7nJf2aamijJs-AjkasOP3I>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Dec 2024 23:12:46 -0500 (EST)
Date: Sun, 8 Dec 2024 20:12:45 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rob Hudson <rob_hudson_3182@gmx.com>
cc: blinux-list@redhat.com
Subject: Re: My Sound-Cards Are out of Order Again
In-Reply-To: <20241209.040341.694.24@[0.0.0.0]>
Message-ID: <41ed14fc-97e7-bfd8-b13e-ad14d429cc1a@hubert-humphrey.com>
References: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com> <20241209.040341.694.24@[0.0.0.0]>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: bhtaWR23ZrtiHwPX288EnRnYnbIUWxybkR4_bh6BH5c_1733717567
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: SJhr8dpPOBTXfFl9hFVFk-9XBCFuSJAjpAF8SrSegI0_1733717572
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.150 as permitted
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

Hi Rob-and-thanks for a rapid reply: I think I am useing both, although I 
prefer alsa, but we have I think pulse running through vlc for an audio editor. 
When I type paplay or aplay, they both play in the same card. If there is an 
accurate way of answering your question, please I will be `quite happy-and-run 
commands. I am in TCSH. Thanks so much in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

