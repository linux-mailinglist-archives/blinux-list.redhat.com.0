Return-Path: <blinux-list+bncBC3NDNGRUAMRBK6N222AMGQEJLFYJWQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FF2931D45
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 00:46:05 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5c7b088f063sf3427936eaf.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 15:46:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721083563; cv=pass;
        d=google.com; s=arc-20160816;
        b=tdNBTHYHhizYSkHGD9l16ido+X6FP6A1RLIDfs4+kJzwpjWm24w1zcYmo2niRD9n7T
         d+NiCDX8M13MccnB4q8MfbQG12bielDpKDjLlC9qsknt5JnC9m/b4uCvhiOd51CSKjLL
         h30rpOXYZAGpIaW90BBNoM0X+ieCrfrFMBpi7cecpsruGXVfoHqvTts/If4rD7OmwqeH
         ondJMYq6sp2Sim3FRht6D7DmddLc1iFsbPfTRxCaWtUACiwnLL27IM/zXjWo6+ke78FW
         XDTWzljL92O1BaNbmrlbsGEEnyVmUfNtlbX42pYv88jdDUcooo9fQbwiCaPqYLDITdEz
         DNDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=Nj5XZ4QZv1g9L2e/PfLD+fO0NQ9cHMhcBMbpdcewoeI=;
        fh=kBmebuF+FLCz0XkYcN2mR+WYshv6epPozIyS7Yj1qtg=;
        b=Qdoy/ZJfJfhbvDwaevF0QpBsSYROrPs8DhzLcwiftWqS3QPT5O9wDUthUNViHjzMKs
         GJzq8KGnX4RPI0TbSUudYqht+nM7Fh+YqlsXRcQVeagv41hIHnqs1H+V49Soz8fAsguY
         XL698Thn1Kv7TCElTFUJD9K88efDGgqtEkVNTiwWzBim/FVkPvOya5sU+DJ/BuoNeDDJ
         EB2qjbE16HLURvNTaWObuD/zy3wAr2uVDESyyvyZSaNhFgGYnY3b1FDw13qScKIJaMZG
         kCgtACgegSXXditq02EUEyZupQM4HW4nhW9PS85JRxM7GTDUBoezMRC1W2oum8+gwxcP
         4V/w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.155 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721083563; x=1721688363;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nj5XZ4QZv1g9L2e/PfLD+fO0NQ9cHMhcBMbpdcewoeI=;
        b=qzIaQsR5x7ysDNQu+g2jBgli8GiuPTkG1c7znDuJky6rToR9LOkZuTvgVl/okvMY2t
         4OOQHuUK0LXvvmTBv/4SSpfhAdvlyDwRBtzHwIVBVzxErRCDTTXt1x/BvNJmBp20mOQG
         wxYgjindtLWfclVCYTxjel3FBkHM3XGJTaJJ8dtZq9YtJHv2qyS0LehuNW//kbQlmmFn
         v4tp222AqLCQsoIDHQAs4semTlXF0Abl54ZXKXLhn6AdYKJqtx0YRX3zBrgYRTlkjX+d
         EZvqQiIKaJhsusChRYcwkjXtzQLTV1DL6B6EWl2SgqdXn/bZUcJyEMFvyrbz0lEYBACY
         yl3w==
X-Forwarded-Encrypted: i=2; AJvYcCVkMFbuTDIzBZKXwVhP7VbM7ICdsfKsCgjucoj0S/eMDxWIt8qMiklGc36ub/MG/EwFHIDPWgz//S77PQvcdq2+/kA2XvhRBmlX
X-Gm-Message-State: AOJu0Ywn2bFdpFh04yxjxRfsGM4ESel9BO4N44du6ou/ARWQ8GpI3Pkb
	+TsdzfKEQikLUFpeYJ+1SwRh30iAxUN9vguEvX7hZCaBvulPZKl72z7P7afzZbA=
X-Google-Smtp-Source: AGHT+IG+yZ7V8UAGnwYM73w3AtFXyj5wBu9R03KLh5fjoZ147SbUJhqWf2WkEhbUmfQN6nXkZBZpdg==
X-Received: by 2002:a05:6820:1e85:b0:5c6:927f:94f8 with SMTP id 006d021491bc7-5d2897f1b3fmr541773eaf.3.1721083563302;
        Mon, 15 Jul 2024 15:46:03 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:e092:0:b0:5aa:44f9:9b11 with SMTP id 006d021491bc7-5cab666f9f2ls3910332eaf.1.-pod-prod-05-us;
 Mon, 15 Jul 2024 15:46:02 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXcIH0HS550ZnO0yqyNAMql+R8Z/WRV/aYWZKRkW0CNvT71hvWL4NexNKa+LqUa30ns4X8zWKcnDv3x7AxyhOfNYNK916VcDmHEKPAZ
X-Received: by 2002:a05:6808:2225:b0:3d9:2920:bc2f with SMTP id 5614622812f47-3dac7b726c0mr718022b6e.10.1721083562538;
        Mon, 15 Jul 2024 15:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721083562; cv=none;
        d=google.com; s=arc-20160816;
        b=keb6xEg2UyB6UHlGulOboqK8Rs9ROWQskHvqgx77VFYwE27STIh3RtevOXa9wq6O7X
         qk1MOcXloagxrV2MlmQ32n9O51+H8AmgDyMuNY87RgMnEbm7wS6xbi4QXNi367HGEOWm
         ajVKjW4pjMrMTkXYF6MJYE/wl61fIvuGrCMsf7NYJTc99WixOh1SFBkd6S1sYND7EszY
         F1l2+Oo9JYTzhb9brVE/qIWcdtkt18UO7mwGdIdTI00irDVxqGlIkReiu/Pzf8p2Trsc
         KnaKFPRTrrGe+bYjCZjvTOVTBMrOyqwQYJdn4fLJOZFivjRN5HEsLE6v728xl/n9mruu
         Rj6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=3pqmDJnmseEnNKtYN+WOa4pUqvs9ocb6C9hyihJmp6Y=;
        fh=TqZmTODzjWoLNejSYZEMuHPxfcPjtMAaETBQ+bIkqpE=;
        b=f9+vtxmou1kljnbcZhEoqZVfm9fYbckwsyKCeQRwBGj/blzSzG8BNOJh1FHp7yyihS
         IJBjVXGrByzf9d5s5ouKzKqAyT4GQsFWS7QTahFX+LJcTDtshKlYy9QQMMERXPObQQik
         1q48jEJGVcmDQZl1dTQxsnHDyX6W37NOFbYu+fR+IBliXw2J1RVoYznBv2c5oC7VIRhq
         cmltZJm6BbGm++jizILenxygQd8KaCENd4q0E9s6NQ6aGND3Y83uPlBdxrPMk9xKOOdW
         bhHBvAVR681llHH+112JVTTOsevgHF4a3O9cP8puIFlIIiUDRvdifzMmrC+keFmjehgK
         hSVg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.155 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a160c692f6si617800385a.442.2024.07.15.15.46.02
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 15:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.155 as permitted sender) client-ip=103.168.172.155;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-99-lcV7fim9PkeDKhLnUOqmhQ-1; Mon,
 15 Jul 2024 18:46:01 -0400
X-MC-Unique: lcV7fim9PkeDKhLnUOqmhQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 40C7D1955D55
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 22:46:00 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 30800300018E; Mon, 15 Jul 2024 22:46:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2DEC5300018D
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 22:45:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9F4001956064
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 22:45:59 +0000 (UTC)
Received: from fhigh4-smtp.messagingengine.com
 (fhigh4-smtp.messagingengine.com [103.168.172.155]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-594-e9fPvJnmNsCvJbu8vHP1VQ-1; Mon, 15 Jul 2024 18:45:57 -0400
X-MC-Unique: e9fPvJnmNsCvJbu8vHP1VQ-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 2390C1148037;
	Mon, 15 Jul 2024 18:45:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 15 Jul 2024 18:45:57 -0400
X-ME-Sender: <xms:o6aVZgjR4-8V3nJY-bG4OhbYfW68TJq603lqCQbn6yG8CAs_0vR_7Q>
    <xme:o6aVZpBMI717CtT36GYNFzdIcUN1pmKBU6IWKaDvWhdUr3UWWrGggeusRPSGClT2h
    Mmkqhl4KhOb26QEiF4>
X-ME-Received: <xmr:o6aVZoFR8aqoCVpg4DDhmXzd8A3Qz1QBAcuJjQVsANfqj4UmvRf9jLt7tnw87lOVKIKFirCmiuuYpJRf8F-pHJbP8grFdu81wxc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrgeefgddufecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:o6aVZhQGyd0isMYTWdSdIdWULX186YrFeTiuMagibgXlSD0F5WMbiQ>
    <xmx:o6aVZtxSwThNrq1SczOdRAkLbwJhI3j8BiYlHEyQQrnvaVA9n2X2zw>
    <xmx:o6aVZv6LeIb4zZU8r2ZA6lTIhVkTpJ8HWqO15q-e1CPL7GcTdB5ZVQ>
    <xmx:o6aVZqxg31P1Rxwh0PY4HANk7NSoticufatWkzwwzDZGrdcSv4d0hQ>
    <xmx:paaVZl8z2xfIN6jOsj8XA_aJOnefxY0Le1UVdFZzt04ujzzQU85SxSsv>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Jul 2024 18:45:55 -0400 (EDT)
Date: Mon, 15 Jul 2024 15:45:53 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Tim Chase <blinux.list@thechases.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <Pine.LNX.4.64.2407151835130.3551659@users.shellworld.net>
Message-ID: <71538a7f-ff4e-f221-001c-12e00f1c4734@hubert-humphrey.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net> <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com> <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net> <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
 <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net> <ZpWWPBC3szmpqODv@thechases.com> <Pine.LNX.4.64.2407151750350.3550890@users.shellworld.net> <ZpWi5d1A4TkwT3n2@thechases.com> <Pine.LNX.4.64.2407151835130.3551659@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.155 as permitted
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

Hi Karen: Yes, Tim first made a small typo. After you run that complete 
command, you have a file in your home directory which you can open with an 
editor such as NANO or use "more" or "less to read or view. I just did it on my 
local machine as well as Shellworld. Quite helpful, thank you.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

