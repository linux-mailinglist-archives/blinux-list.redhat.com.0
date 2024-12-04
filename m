Return-Path: <blinux-list+bncBC3NDNGRUAMRBRMRYO5AMGQEYFTJSKQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mail.lfdr.de (Postfix) with ESMTPS id EB48C9E4690
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 22:25:26 +0100 (CET)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-29e4bc1c35asf366819fac.1
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 13:25:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733347525; cv=pass;
        d=google.com; s=arc-20240605;
        b=FZGfWd6/qBzqVWCmuqVAwZ5NpFPlOeWUNQ4HXzHN9+PI0X93kKHDZGTbtSOFOT0ZZz
         wpLg2WI67a7IgQc8iHH+FK/N8mp0o1cdTHiZkOWVUw2xYtxpy7TZBO1ImHMCf4LU4JWZ
         2eF9JubD6/yI1GHBKTeuxTzXQVYRFR5IgghlEbKuuS5lNtBbuy8MxtbEIjp77mx2iIov
         yMyG/qi/bWKO7mxCG5iuOWKQusc2Z+sWnsLkS+khouMAzFpAsoKxcUkKOL+FVYAPk3dY
         gX8mgO8JhCpQh0c7gXAFftn4YcRzp8mBS5GXnM6Lqi4870L/WBUX/iz3o+PiK+SKo6/c
         e+lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=8/2FuphpLhprA1bycpgG9GYlbOXRIaETd8uMQ1JS6LE=;
        fh=qf8wqicfamQWsA3rCNzV+XjAJgOB6IUOeO+Ldg8BxrY=;
        b=liIuztpgSmmrvTrQaL75RnOO6+ltIUc8fCiI36BqZ7ABuLipfh97ZQXUlkiVVx5jMn
         NOfYRxMe7muz393QEIWb80sjjdsCXn8m0sCSXZxCSf0+yPgzVQhKD3hThdfcehsyfIFh
         VOxSkBEOV5k6W0bVa20y/h2lC/03G3jb+qBXesKkDw5lLRO/400vu+izZMKktRTEzxz5
         gAGHUvNR0qTXBhc+w/BGt2XCOkRKZGGma0t6FC+TXkxict5EcBF+2Q+zEaYhn2MnVl1m
         DDQUK7w1PujDCZp8axmj70FqjfbqLg4v+nDUrtcPy8MWMv7Z0i9goU0a3CLoWOSZULY+
         2mdg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733347525; x=1733952325;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:cc:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/2FuphpLhprA1bycpgG9GYlbOXRIaETd8uMQ1JS6LE=;
        b=Kop13ftFBv81IcCuMp8rHjq3pDM2qh/EUghVl6wGDRQ6D4xPL+mtqdhocRgaVjP+dd
         c3f9Sn6CeGEWiehuJGZHh2gLz+mgISUNFh6Ys4hW4GMfioazi6dA5rGp6YO0gbjb6aGB
         GZxNYk3FC30+IlHO187C9jn3fhVpLCQqP9E5QVoDmnxBRgR2d77scp7XonUt+MuxORS9
         x85aEyp5QPpWITMd69JfxKqnaCThWDFpsHn3jHAv8+Y1WSjPrs8QIM4fMayPXgZvcUOF
         b+pRRg8UTXsv292oHb4aYkYOfi721HxbUl+maNP/CNiv7R8ZgOkwhPXff7k5cpjFFGY7
         gkiw==
X-Forwarded-Encrypted: i=2; AJvYcCVwJJvtodyOA4cVCXm7AjVBTe0wQGTizQMpogXpWYEScI6yhI5e3dc7BeBR4CFUUngBHjiQpg==@lfdr.de
X-Gm-Message-State: AOJu0YyGPNR+itiLf/PEDeX3tKVFEkqUAyD35y7l333Ob7y6QxkrFIp8
	c7JO4Rsn8pS1aWWna95xz9+WmX+dL/AON3qwrPP/eI9ROGAEX61nUk70UlxB4lk=
X-Google-Smtp-Source: AGHT+IHSyKS8xh4Pnar4oHlftV4tKQGsIpk/JK2+IxU+EaSsBqM/mj5aduA/6NseUVty/m0cAbuIcA==
X-Received: by 2002:a05:6871:7242:b0:29e:5c37:a1c3 with SMTP id 586e51a60fabf-29e8853a86amr9712838fac.2.1733347525397;
        Wed, 04 Dec 2024 13:25:25 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:280a:b0:5f2:32b1:a144 with SMTP id
 006d021491bc7-5f2773058e8ls157282eaf.2.-pod-prod-09-us; Wed, 04 Dec 2024
 13:25:24 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVCQqK7OlcBMP8gJ545JX640V1rPcL5dAG9simt8bUl9C+wZIon7mzhInah82lhQwicQUG/W5h4bMdmCA==@gapps.redhat.com
X-Received: by 2002:a05:6359:4c8c:b0:1ca:a13e:6745 with SMTP id e5c5f4694b2df-1caeac44a5amr745832355d.22.1733347524560;
        Wed, 04 Dec 2024 13:25:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733347524; cv=none;
        d=google.com; s=arc-20240605;
        b=Ffv3BkI8YeaNNPSXtO8ALYldHg24lYe44FPnvvsI/4za9j5eJIhlCdVfWbf0ncA16e
         Rd6a0rnTIqYf1y5MuPmabTgklsOuxccX04ozISigzvOTG6HRItp8UQNYBv1sPbpG5Cb9
         Rs+z+iWERRMtDStwgGSCdtz+Dy6AZKCOWU9ucP76CoU3FWn7AkGI38nQyJZl9M0EF5Ev
         KFlyHv9pSM0VXFHfl3SN6owaeZh5P926HG+dK/TaLdNtZLLxg4p0w/mZVBgZesfkoNzD
         wZwn1zI0kdlEwM6HwgMtelKo3m25ZgUORXwsFohZoEfXiZA/e5SJqAFSr7zvYXfr95Qj
         JoOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:cc:to:from:date:feedback-id
         :delivered-to;
        bh=4+PVg92xkVmRvq+3umGem/Cea0HK/fdLfIOeE4RiXM4=;
        fh=IcqJJD4qaK8LzzaTBE8+DA5eDqYnBzlACt7lWP+7qqY=;
        b=gXjuSvHuTJOQoiuupGSvg+M288hpxKUcQGK7b54jokWbpvWLiV5XA3K6bbdtZMS+ef
         HnIWcr58lkzrbJ26yaLVkWegy1othx3yYX7iwyzz51kCMTKajVwARfAPgginxCuXM2Tc
         9gTHiodDCoYnVh+h+dJs0Ng7EKbc/wq5IZGirBAAqXRKX37Nj/Zj5j5CMCNVzQp+OQQa
         BmNg3cEhjmvAcY3C+H49W/eND/rkFKE6FsrhDJztHHeMID0e4JYPWeY87CFUqgKWztUQ
         5aAG7OIyU/jBLD0seHe706nPt3TdArKctYZyVThXXYcufUzRZ2EZJugNCTlYwNWQoy60
         yJ/g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-467297baf45si420261cf.304.2024.12.04.13.25.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 13:25:24 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) client-ip=103.168.172.157;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-28-MG0sID5VOZOOeTnO1mjjCw-1; Wed,
 04 Dec 2024 16:25:23 -0500
X-MC-Unique: MG0sID5VOZOOeTnO1mjjCw-1
X-Mimecast-MFC-AGG-ID: MG0sID5VOZOOeTnO1mjjCw
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4D1521955DB3
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 21:25:22 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 489321954200; Wed,  4 Dec 2024 21:25:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 45C391956054
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 21:25:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 79D29195605E
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 21:25:21 +0000 (UTC)
Received: from fhigh-a6-smtp.messagingengine.com
 (fhigh-a6-smtp.messagingengine.com [103.168.172.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-80-RUd2r6FCN7iJwflykC70iA-1; Wed, 04 Dec 2024 16:25:18 -0500
X-MC-Unique: RUd2r6FCN7iJwflykC70iA-1
X-Mimecast-MFC-AGG-ID: RUd2r6FCN7iJwflykC70iA
Received: from phl-compute-02.internal (phl-compute-02.phl.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id C90D71140195;
	Wed,  4 Dec 2024 16:25:16 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Wed, 04 Dec 2024 16:25:16 -0500
X-ME-Sender: <xms:vMhQZ49jIOx8Qb8aUykSLiS7KnM-KD12Qfls5nQLD0uTUswQb3WNdg>
    <xme:vMhQZwv6BrVpfCPEbXem59_CORxscBx8iTzTVD26usdjOxZHIblSoQKc-VqqEAJNK
    1jg0fdFxyHbupXcqpw>
X-ME-Received: <xmr:vMhQZ-CwIlw7UeCDU9yKW63U_2u87skQ8wBWnh8jTZGJsnqzRQXdPa60QMLKc69ODafUqsF9tJ8eA78zA3WAXjCOqduyMZ6r9Xg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrieehgddugeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
    fukfggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhm
    vgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepvd
    ehvdfggeeileehgfdvfeehleeijeeujefhtedtvdekgfdtjeefuedtvddufedtnecuvehl
    uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshh
    husggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepvddpmhhouggv
    pehsmhhtphhouhhtpdhrtghpthhtohepghhuvghnthgvrhhksehgmhigrdhnvghtpdhrtg
    hpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:vMhQZ4f7EfmbEE69EiZ9nhDD4dYEsRh91AieXRTU5laVO47dU7jeZg>
    <xmx:vMhQZ9MmW2NBWOSIen1ol4entJXsR2id2hFO_xhwB5IDdQUpo2Cx2Q>
    <xmx:vMhQZym2G3jlWfxXUWqdEKGBwDmLyZR2kFoEcYQ33ewKYVCPDh5eqg>
    <xmx:vMhQZ_v23vdYwmITfCr29HlvcwkvIFl3X2bJh_NKd_BYz7OvLip_8w>
    <xmx:vMhQZ2YbJ9K0gnvWqSrt95DTMTby22Gr918IhTMslD2G1WjiGTQcbzj1>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Dec 2024 16:25:16 -0500 (EST)
Date: Wed, 4 Dec 2024 13:25:15 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: guenter <GuenterK@gmx.net>
cc: blinux-list@redhat.com
Subject: Comparing Trash Programs
Message-ID: <16a8d1dd-a5f3-7294-8047-1173558e4f5b@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: POtpgN1-N2p1JuWjRMfPFxPfWpY1lZrUsxE4R5z6LNg_1733347516
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: nHaUiejWuBn14hJz45wgXOqZT1qOYLXiy9_-_I2NVhQ_1733347522
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

Hi Guenter-and-All: I altered the subjec-line, now that we are up2date on which 
applications I liked. Thank you, I also downloaded your file-and-will extract. 
There are some rather glaring inconsistancies among these programs. 1 of them 
is trash-cli but you run as "trash" And likewise trashy you also run as "trash" 
Some of these put their files in .local/share/Trash  and others in  another 
location which I cannot think of. And I don't think "send2trash" has a restore 
option. O-and-I am in TCSH.  OK, just extracted your file, once I ran tar xf on 
it, it placed a file "trash*" which says it is executable. I figured it would 
create a directory where I would ./configure make make install. Thanks so much 
in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

