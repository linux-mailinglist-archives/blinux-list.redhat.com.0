Return-Path: <blinux-list+bncBC3NDNGRUAMRBE5P2W2AMGQELLTSH4Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id B63809318F7
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 19:08:37 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-447f73b3e35sf54535481cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 10:08:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721063316; cv=pass;
        d=google.com; s=arc-20160816;
        b=aJMMCTHRcPFmQ717D3hrNy+vHCH5/aaau8+Vd+83sn2VaJ/aMa4a7SR2j2VGzH4yKo
         LOwJ3wJ2yIN3TM4tEUBpmV7s7p/SQ02OtrjqX6cyt5krZ9qhanie7EeRpaPn4zTf8QPo
         VNVM2MwAtVqfQeeqN/rw0OAclZFzjAYsC/386Q7xPrDidHpK0JPPf8am9OEp6OolZoph
         bVxv01W4oHWDkwob7h+hqNftfZzTIehLrBgiMh9nUksRHLnOherRfCRouav3NFbJur0L
         405Cr093zh4MvWakcGpwN5xFUedH/zFx4e3a4uVOQIJa54wmBsLR5MMr+W/wZcQSRpzw
         W6kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=wvU6UeOsEBxC4q/Xvz2BO1n4CtoK48dG6Wya0SjLroc=;
        fh=HPoACgF1/hykC8g97I5uJ6aLXbtTupL3PKqjq118YR8=;
        b=jCkDTX+yinLocdsejPxYsL3FmIcNH6Dmq1hEy7ifTsiSQ5HRTqLKE1RN2BybYSyAFC
         1Ns/juXAvsiU1aagj3cTtLHAPSDkrDeJ8z82FM2Yp9xv+qGoJvXsB055eNJHhYP3wWzC
         1Pm742Ka7N1UIoHFxQIHIRbI0HM2h/UqH7l5s74Z2KZyBpaBVDGZP2SyJl4oY69kIjf8
         +9/SUDoEUqhvZ/kNiZQ+IxKO/N4R+MG6SVRMbYjibLNSW2NJlsZusIwLBqOX0zxLPMv5
         AzrD7a5OdNdpzZtC6FDCJW790whDpoq8Wv+SJPB37KZRNJPCPtRo4npDV0tcwX0zxjrT
         rJTQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721063316; x=1721668116;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wvU6UeOsEBxC4q/Xvz2BO1n4CtoK48dG6Wya0SjLroc=;
        b=ZZo52OQs19uGxyM7hW/9pZaxJwv7mNLRza7/4f67t3Vx9BGjr629s+uFEtfbIKiN2a
         UfAaPuGy8UCGoWBFwWeC1R0rnmUCn02RsPG35S9zSd4u7gILE/pnYaU4o7HeDmTzXif7
         gpv8KFZV3kv/ldX1uWbqMvUnfPjlUYrM4qPqY9k3w5/l8HXSP8lRc2gwvH0kVGuvMLG/
         QKnyTsr2ihSDBWrWFcubbVqvI4x97vZ/KSnzZgYBocCejUaGyI7STKtjSQ4nNJP/6A7C
         7HJ4o1+v8fN3ihpaME/nERkkXtuEOEcioMaBdXijgwUIvOiaG3q921P7GbSos4WeDS3U
         dpEw==
X-Forwarded-Encrypted: i=2; AJvYcCUdWjrLgqikXjVxLZkDdbYRlhymoqJDgmULN6y0U6aCsblH4H7BxW9ELwN7aNohHR/yqLwhblnNESQ39YIUCGgMvrNW4nSufXio
X-Gm-Message-State: AOJu0YztFs1UdAPRzYRV2OxugzEZ36d51EvbKfbOx2qIO2Q8LKvwGEPc
	VYuSpIWT1jWR1KPdo6hXwPKUy0TSrafDV+GLQVOXijwjn5gL5V/FpNEgoVKLCoo=
X-Google-Smtp-Source: AGHT+IFLBsX1TAKc9D5NdBVwR4U8hTfDuiWIvCS1WSzwdGvz5f7qNPhnCj4nfyC4BNo84oei7SYGxg==
X-Received: by 2002:ac8:7d55:0:b0:447:df1a:d96f with SMTP id d75a77b69052e-44f7918e5b9mr4722941cf.40.1721063316171;
        Mon, 15 Jul 2024 10:08:36 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:440d:0:b0:440:348c:4bc with SMTP id d75a77b69052e-44d03389e4bls76061381cf.0.-pod-prod-06-us;
 Mon, 15 Jul 2024 10:08:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWhFhNanbuhdRKKS/JJgmpaS3WQzanMeZxjdxpZtjdeYw2voKhGMAXoV/ub1GAc3q32bUjv5IRV9fb+dlZXYfVPjSizc0HhSpHPeki5
X-Received: by 2002:a05:622a:28a:b0:446:6f8f:6cb4 with SMTP id d75a77b69052e-44f7910d7cemr6532321cf.21.1721063315067;
        Mon, 15 Jul 2024 10:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721063315; cv=none;
        d=google.com; s=arc-20160816;
        b=SJvesR+vHJMYYGOjqKbk+qzCJYQgrM9g+pBZtpsU1pLiaLlbEyK+lPKQZxSbzOQAG3
         JqCJQ1OgegmexckEL0AZy8n3oZggf4j70emfzoPMpo2GyAPu0LewZN+D6jiieWHfeLAg
         VCODW5/P3T7kU+ufJnVun9c234tBlf6zD/Qk5EchlUGap8iWtBD3DFjOSn/ll3cz+Yz4
         KbvbXwKmuPY2ohWs9Hdd+/6QoHmsqAmY2pgavOuwbo02cFCvsqWjNuubk/sS3Pu5VwKG
         xWt9sro6/U17jZv6wG47JHa6edbjwokWA9/cB67L58JUPpENlfC15MywPm2hFq+Ije+E
         +DZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=ZZFLSCT3SJfu7+o09e4xgc7h5RYY1ySxMFFLVVsBarY=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=Ol/EFLecfD9oymX/PTOxUtNA2e3e8Dv83w3UT6NbTc24984dy3/D0HOOUq+saoSl7w
         GFAZQOf6hz8ZucW7B202YGeNvhXVfk+RIUsjVAyM7kIxD7N6MUOY1urwSZ8SM21Tf/u/
         ivnjVoy9ayGl6cMAvrlyv8XKQrN497yblxMEuDpf7FQSZqmHx2h2tBPY5ekLx3yiZepb
         m32cqkh7k0Qfg1oCgGD5Bz4Rv01MSGpgZE9dWFn9Q3ADYR0uztecN7bIzer/Q/NGAiNu
         yq+vAK+kOMopMBUhScydi6ae04jSf2sHsXEV23wlqRRptWEjZCysrO60PpvmK0yoYlq1
         hr4g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44f5b831a55si56604701cf.730.2024.07.15.10.08.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 10:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) client-ip=103.168.172.159;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-490-sbUnNghVN4aPMXE7Qa6fIA-1; Mon,
 15 Jul 2024 13:08:33 -0400
X-MC-Unique: sbUnNghVN4aPMXE7Qa6fIA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B5FA91955D47
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 17:08:32 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A68151955D44; Mon, 15 Jul 2024 17:08:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A38691955D42
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 17:08:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3E08919560AD
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 17:08:32 +0000 (UTC)
Received: from fhigh8-smtp.messagingengine.com
 (fhigh8-smtp.messagingengine.com [103.168.172.159]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-93-goYGDxSvMvirP29J4c4a5Q-1; Mon, 15 Jul 2024 13:08:29 -0400
X-MC-Unique: goYGDxSvMvirP29J4c4a5Q-1
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 69B5011479C9;
	Mon, 15 Jul 2024 13:08:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Mon, 15 Jul 2024 13:08:29 -0400
X-ME-Sender: <xms:jFeVZn8du1IPN9QHx0RM25rG4UBaaIIq4TPEV5nKSdvwowwkJLeOcw>
    <xme:jFeVZjvFNfHZFYlub7OOi1qc6hmn8N3A7TDT_cElfd1eveOc48AaJmMoK2I5PBcoy
    c-zyN1xyLC4qEb-nwU>
X-ME-Received: <xmr:jFeVZlBU3Pbf1pAfuSBgJIREEov3uyuNW1zGLrJ_cArh0iARk0jI8OI91DHJGH2Eg0iKUyXuRD42k0m1jNozdAx8UofEKHqpWfE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrgedvgddutdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:jFeVZjcyM279uayZiRsll2Aw0ysC2HhAsPshVDYIcsgE_NY-7udhwg>
    <xmx:jFeVZsOP4SNjWKMN5b2dtmtIQOzO_2NZEie9pFTT9QRAYVCR_prJIw>
    <xmx:jFeVZlkE3hCwL8XqlJmpcq9_SGolFzKsMuv9RWfsNsjAu71pcPrDxQ>
    <xmx:jFeVZmthGUlONRsDwoqzYEilsCuUYtJJ9Mbd_c0qV5LLoXBSLyaS5Q>
    <xmx:jVeVZlayV1kL8ahwsDg5T08b-6MFaJenN1dfY846p_e_dhQOf4l08t0p>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Jul 2024 13:08:27 -0400 (EDT)
Date: Mon, 15 Jul 2024 10:08:26 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
Message-ID: <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted
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

Well Karen-and-All, Many of you are quite familliar with my road. I came 
kicking-and-screaming from DOS2windows, slowly in 2003 Linux, but with horrible 
DeC PC drivers in Speakup. Eventually in 2006 got rid of windows all2gether. 
All along since 1995 I had Unix shell-accounts, Netcom, REXX, PrimeNet, and 
Shellworld, where I hosted my web-site as well. In May of 2020 we almost lost 
Shellworld forever, so after at least 3 days of no e-mail, with a big help of a 
dear friend, I switched my domain to Fastmail. Unfortunately their interface 
does not work in a console setup nor without javascript. After awhile they 
blocked traditional ftp access. I found ncftp as an easiest client, but now 
must use web-dav which has many fewer options. As far as your exact question, 
as you see I am not hosting my web-site nor e-mail locally, however, we use 
exim4 to grab mail from FastMail to my local machine. In addition, I have a 
laptop also running Debian SID with a quite new Zabbly kernel. The laptop has 
graphical so I can login to hotels when we travel. Eventually would like to put 
graphical on my main machine so I can go to Zoom meetings. Wish there were 
either a menu-driven or commandline Zoom client. Along the way, while I've been 
in Linux nearly 21years, I almost still feel like a beginner, but still 
sometimes when I atten a Linux LUG, I can still help some1 else. Also, 
certainly folks there are still somewhat baffled how I use a computer while 
totally blind.
I also have a MAC which I know little about, but took a class. I have a 
Chromebook, but the Chromevox screen-reaeer is much less easty to use than 
something like Speakup. I hope those details will provide some prospective.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

