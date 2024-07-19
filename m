Return-Path: <blinux-list+bncBC3NDNGRUAMRBMWK5O2AMGQEWGGRW6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C71937DCB
	for <lists+blinux-list@lfdr.de>; Sat, 20 Jul 2024 00:14:12 +0200 (CEST)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5c6927f9593sf1691076eaf.2
        for <lists+blinux-list@lfdr.de>; Fri, 19 Jul 2024 15:14:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721427251; cv=pass;
        d=google.com; s=arc-20160816;
        b=t15zuzT5Is12crOH16lmd1rkVaGxGFQoNZ9Q2YhNkoe16r5ULjAy9e2uthi5anZKXz
         /RXSGGR9N0klSX4xmv9iaNGnvc07sJEW2OVTCysj1DviS0ijTlUo+AOgbFtAK0Ok7ho2
         od9V/8KxVSNC74R2Duh1TJg/jFHrXBgu5EMOuV995i64cw/UOLAFK2mMO/5k0fE4JJMG
         SLkqZRZjwneHpJw66NQ5kgoVCRjBxzWT0QMVLgivmOnEqrqq/81P/BRBzzbnMGN8NbfY
         F1502oBhRdVEdmncF2Myjqmy+eQd1KHaw9KrXHdE0aEXbK54UMtrBl2yVctMNVrYyWzQ
         E6hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=51jAFpiy9HZx1h//nratPAy2Dp1xtpaDIJr41JenTBQ=;
        fh=ZwbsZ0evJOKgGASdRUnBPCBZ5IXdlDtm3cJXNYhZQn8=;
        b=Q2D+epml7GYWTRay1b3Q9EryUDLAeFmXRnzPjg82aQqZvB3UcEHFHvoz/sMyQMQkNw
         UvqxSto3l0LLowobeii+tEYdyuOKx9YyRc5sUgBjimA7wBRfnskwxlDv9k2mDKz1scLD
         Jb3A735FNpn7kPzj4gsOcP+xZCYc+FbS22VJ5c42JfGO/cILf+H6vLKg31N3s9Lj4WAA
         md/9KRDAYHkCD+960nBr/BYVRpxgco+vGwCxCyyxVi80wB6sn3tGZuFykYxQ/1qyHxBN
         GGnyq2daQnhZXZbeGhZ1bixSBbh7ab/uKtpDXcO8Bh9TTyZEcnVyJAHZIzn52VCovZwP
         s/7A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.145 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721427251; x=1722032051;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=51jAFpiy9HZx1h//nratPAy2Dp1xtpaDIJr41JenTBQ=;
        b=nUuBmjxUvJ5GTDlfaFCx70L6mnWKA6vHl1Ffg4d7e6x18dVQUipItKHDRxV59BY/1c
         5T7bt6pMZLOuaFwKXimNtPrdV5ypXo76j1Hr7KkWA8zTMqgIuytyfTmJZq10//RI5lE3
         b+t7sGaJAu7ZPJ7IOiGPQIqGL/9mSCmNL+TL6fVUSqvSpLHLtgOEft3933v+hupLNBhS
         C++6//seZnKe4437wbRCNjg/sfxd/nbhNA/lqrWi85MOH0MN5qLoPOUDvO46avDkLFrY
         T0gF2fyaAZtcaU342d3eejyJC93cT57TFxN0BHvnZEY+JLJSo+ggg5jeh8AaoftYZRFm
         Ss+A==
X-Forwarded-Encrypted: i=2; AJvYcCXiSV+lKP5ToyYulcJ/SPFdYKh5R4p205wSeJXRDvudeQ2tNdZVqCMMdi1T5pydsLBm2Rs2bSAV07ZZELPIfVyEyuUQ253PJo+8
X-Gm-Message-State: AOJu0YzzG7pt8auscVObuiT7Me17xbGv66WCB8GBiZMBPi8jOUYRu9bM
	ay9Vfjc81WAL1o01jb19tU1Jf2HuylyTCUXzdt1Z2Y24WCNCf9rP1q1komdGmgo=
X-Google-Smtp-Source: AGHT+IGKx2xHh1k8ZsX4jvYtajLTxwrs6mO+SanBkvrNMtWBlFhd7cp+i2vM8zBuV1KBp1fL1yiGoA==
X-Received: by 2002:a05:6820:a02:b0:5ba:ec8b:44b5 with SMTP id 006d021491bc7-5d564fb673bmr1447952eaf.3.1721427250671;
        Fri, 19 Jul 2024 15:14:10 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:ac47:0:b0:5ba:a73a:6de7 with SMTP id 006d021491bc7-5d51f681052ls1695632eaf.1.-pod-prod-08-us;
 Fri, 19 Jul 2024 15:14:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWmLe47E3ixLY5pktR/xZdNHrDlxASwXVe9t3qwkNmyBecb+cgS5fL9rS9bD0gE/A37LE9IZFwv1vEVZdoJD+7ES8OkvbV+cJv1O13v
X-Received: by 2002:a05:6830:6e10:b0:704:b58d:377a with SMTP id 46e09a7af769-708fdb39c7cmr1652770a34.19.1721427249677;
        Fri, 19 Jul 2024 15:14:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721427249; cv=none;
        d=google.com; s=arc-20160816;
        b=1J2bKRuLvD11nfpASfokpyvCXOznXbvZBBqLxmfw4G6TF7gVdjMK2507j7BkwJCXTh
         s9c3txYMOfQu2NZx3zpbEhBcrE//vXfCnckCkVw6e6i1qITSsSfzeRjRqN0IMIQk8ITv
         fJkPJYkQARshjz0v5Sha64d1WCHpiG8f9yspM4wCA/9TFNApj8U3Odrrs16mHewYorGh
         7C+1ZEj2o9bq/B+WZqT6optDGPR/j1gq99KoE5z0Ulg4G7hXwYQzqiNRv8wTKgJ6yVum
         t3E5DeUS79bhAnVmsEmryDO/rqLB90Rf4sAzaWYqBXUqbwcTljExU+JEwDPym2P46ZPm
         zO6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=v8o1ZQD4zaLFP2hqlpbfr/N48ENA2UqD1Y4+GhBJims=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=vP/Wm//KqiBY5A/IyEVChRJCACLxSj6WXQO3+vhVdgqY0aREYrhKvgO+BigD2IrXNu
         s9AMDZ6W8n6J3vVVB/V3sgu61grBmxTdYwVkdlA8/BTgnsS3cJoGgqiviw/OWLaGEo7b
         HftTMo1CBjhG7Q0xEDuwfEuK9Gdd4YUOxDMTpCDLQfcWyWZE6BQiV9czM5gAW8ayYKfB
         EuZtcKWLu0i3Z1JBVXqGPPiyUIuVk758P4BWteuQ7rrQN81jn6yUdzWDs76kFxkAYlcA
         hudyHBhQnldnDbqDkA7UdP66NK+lvCog3kzbnyssAiY/rjijjPmptQbezE9BGZqa5tAS
         HcGQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.145 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a198fb22f7si264644685a.182.2024.07.19.15.14.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jul 2024 15:14:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.145 as permitted sender) client-ip=103.168.172.145;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-692-FLavGUlANmSOhSvXyH_Bjw-1; Fri,
 19 Jul 2024 18:14:08 -0400
X-MC-Unique: FLavGUlANmSOhSvXyH_Bjw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5D4A11955D44
	for <blinux-list@gapps.redhat.com>; Fri, 19 Jul 2024 22:14:07 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4D524195605F; Fri, 19 Jul 2024 22:14:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4ACD8195605A
	for <blinux-list@redhat.com>; Fri, 19 Jul 2024 22:14:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D415C19560B0
	for <blinux-list@redhat.com>; Fri, 19 Jul 2024 22:14:06 +0000 (UTC)
Received: from fout2-smtp.messagingengine.com
 (fout2-smtp.messagingengine.com [103.168.172.145]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-347-WChie6d8Pv2cOn2M2O8yYg-1; Fri, 19 Jul 2024 18:14:04 -0400
X-MC-Unique: WChie6d8Pv2cOn2M2O8yYg-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailfout.nyi.internal (Postfix) with ESMTP id BB897138016E
	for <blinux-list@redhat.com>; Fri, 19 Jul 2024 18:14:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Fri, 19 Jul 2024 18:14:03 -0400
X-ME-Sender: <xms:K-WaZlRtC49tHjXR9VuVF49U7c224fC-w6nQIZQzF50oHlPQS2Zk9w>
    <xme:K-WaZuwgfRVQJTmWvpvYFJrme1hmz4YeLz6B4VTH-exkFHmmp0lZ1o_HRxPemjVQA
    LH20HuxEArA9IoicIU>
X-ME-Received: <xmr:K-WaZq1ky4pZgqnDxXT11U_6wmBwIKk3p4cXmEXJdlYFO1-t4N7WjMLpAUpdYEMYuSGnE2zMDEa8HswUD_FQfyKVXf24fAVYyag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrhedvgddtlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghr
    thcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrg
    htthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfekvdeujeetkedtheefhffh
    vdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:K-WaZtC3bO9lmChZ-oBB1eX537FTw7xsCrrZQao_-jSQuUtuThBVxA>
    <xmx:K-WaZujncq4WGJ_bj2VGegqxyJmpL_L-GaZLqhDh670h5Y0IEQaWdQ>
    <xmx:K-WaZhrKDf6UKZDouAVM7E1DTAx21IMb3aOjoaHl9f9XBVyUA8T6Jw>
    <xmx:K-WaZpj6B97QQZXRwtKphfHIYdlwitde0pkl7a74Hdhm-WmhFgKEGw>
    <xmx:K-WaZibtlD9i9EfxBvD6bIyeDN2HLQEEcZOs1MkKFTOnAsKOirT70GNe>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Fri, 19 Jul 2024 18:14:02 -0400 (EDT)
Date: Fri, 19 Jul 2024 15:14:01 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: I Would Like to Run Piper TTS
Message-ID: <29c84ac9-27a3-4933-4e12-2d30e38de329@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.145 as permitted
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

Hi All: Several days ago I also asked about this on the Speakup list. Last week 
Storm of Fenrir told us of these marvelous voices from Piper. My favorite of 
these was too large to install, so another similar is installed, however, 
running spd only switches to Allison in Voxin. Likewise running "talkwith" only 
seems to switch among Allison-and-my DecTalk. So can any1 please inform how to 
get Piper running with Speakup? While I don't mind Allison, like many similar 
software speech, it has trouble adequately reading dates in Alpine. Thanks so 
much in advance-and-O, I am in Debian SID
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

