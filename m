Return-Path: <blinux-list+bncBC3NDNGRUAMRBPULWWVAMGQEZWCKZOA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 498C37E7310
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 21:49:04 +0100 (CET)
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4084b6f4515sf2882965e9.1
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 12:49:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699562943; cv=pass;
        d=google.com; s=arc-20160816;
        b=NzgZ3EgAZ24G+0o00PVmdaqrB3H9OMSmPegKHGHtGxiSZcErCHLvVrZrn9/ZnFFTEj
         vhGhai6/3KVIpH7E5rVzrdt6XBI4PrNWWEcyhvGNRCiXCGkPKrabmYEV+mnr1g6a25Ic
         Zj6QVJ2HGiELZTMHNjawkCtxQepl1iMZMHnol5WspbQF666tCMFz9EgGggb0IuetoTOA
         UvZ83Ibfqzc0+nOnLoMrgvPjddCmdqL8DacX0B8Y7UvPMf1M4di6WvEfVbB5tQQceLg7
         QzvFDsQRNzPNhktAsTBDwc1MLkNYyowjB+6CvG6voQ76mpl9tyQG/M3+OWaEWdIrtNHf
         Kwew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=0dbnlPW175FsDy1C6iuO6HRyzoXpgFvoMXQKUWUJChg=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=yd5ZTV3zDkuZEAswyf3UJTmNLST49+cC6bQ5OlmhT6stjIEUc0JOXTXrs43wpvlfOC
         BrhDa1rS5fr+B7y6qZ8QkHgxwyJyTQvFoHNFFubSzhtSeWJcKF9uy6fxj4cNdK60VtkC
         aL1Up6G+uuolwRwoEeT3/B3t6qpb6zF2/OlXIiK3dTztDK+YMIeW8x9e5DpLhldvl3+L
         7tWVRf3SGFSwuM/Ur5YPIuBtEae5z4dhROtAMo4RP2+xkBi/Zs46GV4i5jIx+vl2966h
         BxA55pYDwpCN9i/y57V+G7HU9ptMv5+yJbLrvTPsDjou8NJB5Ds5FoWw28LkL03qLCuP
         Fmwg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699562943; x=1700167743;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0dbnlPW175FsDy1C6iuO6HRyzoXpgFvoMXQKUWUJChg=;
        b=Ukmfh8XmmPUXwq3jbA4DfgVJKj1fZvA5/fyehtWuct/Q+5/QWtK4v6q1YJIfdO8exm
         hW0tgryh2SJ5a8I0vmTORebzP5dnoote20l/7zX+FcDqVOfOHZoKvq2bg42NzdXxefre
         dXaDatgS8/7U/btPC2hFCKHf6E3rSdIdvn+BwiUm0uv1pHKSQxBA/yQs7cNFrpslvorI
         XBZH5lO588wHIN2BNXYCe1t07LzxCcRPI1s9pYPORlT4exn+afZFHoiqyi+nLvlejkXc
         W6231LdCTXXo+3chZs5zayLOKKnlFHTSP1TEw45ZsGOltXeaPnkOjKoJaEb6smsDMaEZ
         3YGA==
X-Gm-Message-State: AOJu0YwRpcfx5ycmsh0muDeMM0lyU+P6ibTT5I7BY0A4QM5HKSDg6SRW
	RikHW1FSotRtAQpoOzQ//Ytbkg==
X-Google-Smtp-Source: AGHT+IHqMVdwYuiX1dk83vVhWlHrFgvXezBfX2n2lwFtTzfiqjsEES16bFADOSar6vMXW/E/7WHlXA==
X-Received: by 2002:a05:6000:154a:b0:32f:8966:c3fa with SMTP id 10-20020a056000154a00b0032f8966c3famr5440687wry.0.1699562943378;
        Thu, 09 Nov 2023 12:49:03 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6000:1c05:b0:312:831e:ec96 with SMTP id
 ba5-20020a0560001c0500b00312831eec96ls603032wrb.2.-pod-prod-09-eu; Thu, 09
 Nov 2023 12:49:01 -0800 (PST)
X-Received: by 2002:a05:600c:a0a:b0:408:fc62:f825 with SMTP id z10-20020a05600c0a0a00b00408fc62f825mr5627117wmp.21.1699562941613;
        Thu, 09 Nov 2023 12:49:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699562941; cv=none;
        d=google.com; s=arc-20160816;
        b=Xs1op3v4dHBr66D/jwEC4ETNmreg3LFDF51GlcSdyJjMjQyePtuohx3jfDPMrevB4f
         NTwyAGs/muco83cKOXqyeWo58WW844wGMW7ptXGDHmTa5FUkfB6WWdSyOe1gx5/aQfmX
         kHwvWbHb7j3SkK2kZzjgCbJ7rguyPogFi63xNK9BVWQMKzu1w70ZWumheF93FxMdJWia
         gQEovKKCjwvtnymSTCao31Fwoow/YVllRXGaB1H0KQ44q2WoGatz+ofNmGS9kk86/rZ3
         D7yl0e4nq2aks4yH3OWvKFgBAzW7zLYyxGEwmIn1pezCjn6w/tI8IMalIQDGCPIjqCnJ
         wUBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=Y9ONlRQA+pYmGJL/6X0Gyi1cGVUkUb45iW/9nUHOWVw=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=rPrYho9Sgjcd4CzUpIkirdPOEZYuXhLIBPvlkaVS5aU2qA5wz0QPK7tYsw/0y+oArK
         VFh2wkMCxKfuy0twlVCLU+rNiUy8yeQ0NmJAJ+524h29Gf6AOSHw2H7F2npMLXc7iTdl
         ENNXpAZRuizMZHnt9NrkhQ53rrFASYgRvc3ySa3ZNxIxN1a9PMajwHzMkC9DeTrHYcxT
         lWbKMsu1I5XaB2nkHNmRgtomar2sheIO7uUZypN1vUSxYFK0rh3H7nsx1l4iksRXCzOl
         lLaHXVbzoqBtlR9cyCLm3UEaySdfWsdm3IkU/Nl2hQwQm8gY6/IRfvm7+838F4TM14An
         sYlQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id fl11-20020a05600c0b8b00b0040559ffcd1asi1997402wmb.157.2023.11.09.12.49.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 12:49:01 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) client-ip=64.147.123.20;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-450-eMu1AeqsNHmfncE_zWulFQ-1; Thu,
 09 Nov 2023 15:48:59 -0500
X-MC-Unique: eMu1AeqsNHmfncE_zWulFQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F2791C01B3A
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 20:48:59 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1BD9C40C6EBB; Thu,  9 Nov 2023 20:48:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14FFD40C6EB9
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 20:48:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D547129AA3B7
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 20:48:58 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
 (wout4-smtp.messagingengine.com [64.147.123.20]) by relay.mimecast.com with
 ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-416-0XiNIC6HNIO8Orj8kHzniQ-1; Thu, 09 Nov 2023 15:48:56 -0500
X-MC-Unique: 0XiNIC6HNIO8Orj8kHzniQ-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.west.internal (Postfix) with ESMTP id 787C43200A95;
	Thu,  9 Nov 2023 15:48:55 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 09 Nov 2023 15:48:55 -0500
X-ME-Sender: <xms:tkVNZXjFZQBbdlJpyw02G9KLGWaQY5pyQEKh6iOQLYq32RxwvuMMbg>
    <xme:tkVNZUAAVf00FEGoi65r_YYXPYyS0j3BirC9nP1S03KDY0dIIJ56HbDBD5M2IV-7z
    j1xrefTFKeYH46H1U4>
X-ME-Received: <xmr:tkVNZXHzyu0UVyID1xf6tdmBkE6fFamsHIyEyUOu2-sfzwkC3T_AawtYnZ6phSGEWcIKWQVJf2bZd7ppkPW-sNuFWbaLKrIruA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedruddvuddgudeflecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:tkVNZUSZMEV1Jze9jgxEBx8h3A49d2AqSnX14Ad0_5-FtcucrdyFeQ>
    <xmx:tkVNZUweWJ5N26icH3AgljWVvMlXhNDG-y-Y37TrXi2DsCIKwwEyDw>
    <xmx:tkVNZa7Ks-06tVZJqZtW5hld7ei29pIVVTAbwfkM3yO2sUU2gBeEKQ>
    <xmx:tkVNZaat_jpgRqKadxyv5YZdOhEbYUY-Gt51kxITqRXLx6rO3tyYSA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 9 Nov 2023 15:48:54 -0500 (EST)
Date: Thu, 9 Nov 2023 12:48:51 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: insuring alpine's setup menu speaks?
In-Reply-To: <Pine.LNX.4.64.2311091532130.3312735@users.shellworld.net>
Message-ID: <914d2b89-e0fa-7eb1-bcac-fb51fd255c59@hubert-humphrey.com>
References: <Pine.LNX.4.64.2311091532130.3312735@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted
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

OK Karen, 2 settings I can think of which make Alpine or Pine less frustrating. 
Disable kee menu, otherwise you will hear these groups of single letter items 
which are probably designed for beginners. 2nd would have to do with cursor 
tracking, but right this second I cannot think of its exact name, what you can 
do is open alpine, m for menu, s for setup, c for config. Then hit a w for 
search, type in cursor. Its probably a checkbox, so mash enter. Lastly hit an e 
to commit changes. Hope all of those steps will help.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

