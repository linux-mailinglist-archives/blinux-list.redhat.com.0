Return-Path: <blinux-list+bncBC3NDNGRUAMRBFXMUGYQMGQEWCIYMYQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 078588AFF01
	for <lists+blinux-list@lfdr.de>; Wed, 24 Apr 2024 05:01:45 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-43478c4884bsf82649151cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 23 Apr 2024 20:01:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713927704; cv=pass;
        d=google.com; s=arc-20160816;
        b=MK1964c1qNeg1cCw4vHxpsTK3/0gVa4bJO9DjaHLhPj3cfqpXIFaZ3EXKmixGyuIXs
         hw0iLz7KkhyUOt102LldHMOTX2s1nPRfZXXuEEa6VoiENuvIWnJAuxLF7AaPrIprWNQt
         46oKQKApBelWrUFRpj3zIPUKyj14jONcMX/EPeNecun1HK7sro/N91gVaqg5TaiPZtea
         QOjiWZ+QRUSELmYifRVL/Aq0XLw92NV+wg9wbl8E+6e+G1mhnf25cPiPFqlRpGVMgReb
         bwz+E6Bl2kg1nQp0E0x0X03UqrOvxte+gI2YrEd8W9TsJ+KcCurYiS7lyp4wNytpndpE
         EHrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=h+u6VhDsDRqjxDvnGwBz5IsHbvldzSsTiD4nv7bOffc=;
        fh=hy5P5614cP22Bw13Jiq7I4yVRvuIMTwWrm34sjNJqOk=;
        b=WwqTmnfIhGkYbmIhzJnuEtk9aT+IykOX1AD+I5QGQn3jXEUiHc3uSR2P6v7eUYcJaS
         Mv6Gb7R/I5ir7GoFp3R9i+SHc8kRKVJ39p63Sn4Cc75iqoYEUfTuQtEhtmjS7+chyGfs
         K+fPP05SC11+1qFBkuzsljk9du4wFAi16xYzbxED2/wjRaRVuCxj8YKE503Jvh16Q2zY
         5iGxKV6XXfuDf6PDmED2SkOSoO1OfDSgiDtsDQ+0Jj5WZzS3RHcM9J7+yP/EMPeeEgyC
         B7gB7IjbTzyTntMNMKKCRVAlIIZEHw9Hz9lTZSO35QFqRn22gf3AnVVlin1KVr55S4Ry
         YdLw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713927704; x=1714532504;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h+u6VhDsDRqjxDvnGwBz5IsHbvldzSsTiD4nv7bOffc=;
        b=erZPrxsJ9J8dyfuytpVFHglE1gk5BCLcHC1/ZY2MGXGMs4qkm1lKWR/HOZ43/7ovOT
         GFIpjxJiF6h1X2z6u7ngTGBEnLo4XNITSA+AKS02t1yTHW7AEABN0rHbEB+UPH0DEHPy
         xR3QhNbT/53jSTsuT54rWan9s4jGzI4IE9wL+30NYC1w54bSiuGa/inrULvg5xIiTRla
         C3bnNsEZKVIqa8Q7Iq6Lnpse3RbyC9xUiqDu212buCEovmNQPGLSqAd1BL1XjXmL9IuF
         NJiCT4JPpvFiTx8p/ff6yVhcoDMh7m2GFVwJeomOUY/ZM8+YKTg11atdnPVWDi3JeGZi
         G/Bw==
X-Forwarded-Encrypted: i=2; AJvYcCUe71R9pKkajWlEpzOTwbWdE5K2VK3CpefB95pAa6A6oqP2i/EqT8BNLCotXnM/k1UQMoPoiYll/Dx+Okt0iycLeLrwkSf6lTML
X-Gm-Message-State: AOJu0YxL7Xyzg9Xv20PcO9ixWoPTkWfl6oo1co0gSbO3PQCVH4agdERS
	F18c5WtIeYVoJw2ekH7kO1Rk/sHmeooy92vPHDgWGDczZd3ge1WynnDh0+vlIaA=
X-Google-Smtp-Source: AGHT+IHz+pEgddzM7YcAZUZd5t2hL+qb9bSOVJlX9jI7/5sPIezi3Z13tmj1sOB5ZouKL+Z/fuyOUQ==
X-Received: by 2002:ac8:5a8e:0:b0:437:c4ed:cfe0 with SMTP id c14-20020ac85a8e000000b00437c4edcfe0mr1894591qtc.33.1713927703364;
        Tue, 23 Apr 2024 20:01:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7f16:0:b0:436:7115:70c1 with SMTP id d75a77b69052e-437bbaeb1e6ls55286131cf.1.-pod-prod-08-us;
 Tue, 23 Apr 2024 20:01:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCViJPYkNv51HaHfUpJTRpTPGzz5xI7jmf7LE4dfwpBugPb4Dqd7p+kw4O/M4YSMmKLKead2dYAT7MYO//3e3q6n5503jqJZZNrX5e6u
X-Received: by 2002:a05:622a:6094:b0:431:32e8:6879 with SMTP id hf20-20020a05622a609400b0043132e86879mr1456368qtb.61.1713927702253;
        Tue, 23 Apr 2024 20:01:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713927702; cv=none;
        d=google.com; s=arc-20160816;
        b=UIcghQACFpDuqF3v0EcUahB5t/K9rGrdtL3szw3AtApLIviiCLwfUX3axbzzRk9xK8
         +9kRHtDr/ued8zn/418B72LAYL8XTcar5/DB79Xf6wWNGiE0UIFARKbMcPVsjvtTy3np
         cfNjRwv0n2CjNOTX+05zU9xDJNq+3AygNRnmJ61dXlwwoFGs+g7JSzIIB+xKuU/k0iLG
         m7Ni9ypkGnTDoygjnxuZ1/LQ3E7F70Y2XDm9G4KMxGu8svxUhARKPIRXleWuIrHLPIrp
         Hif3Cfb846NRJXSoVD+LQ6ALlMs8whcgXsdeZ4P+vBMuNxlK7e8JObcgIdd54VAZt54s
         jW+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=TzbvZxHz0vtLb4Ghqa4oSPtfG0vCXfqljai95Tct5ww=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=lJFl0y9SGBD5p2UKW04sKHVGxIckXMfgns+K9T5kWPcJfz4JLTBRNwIj9Ky2X0Rb5j
         J8GogdH/dKmlHMbA3+5i0oyLdS6sLFuOYge89Mh4NklBOdyFDzH5hOH1Apx3Mlu875s4
         kCXRic9sVFKNbJTyUwkdG7uh1YGPwtuNaphA3c2lohlNZctgGP6jtIFbxkpE403duAV0
         aABIxdrKfg6USa69nSN9AK0lM5saaZvrZ7pV/2789rP9+3p06dFVDUIzkjj/Hn3Ueduo
         q+G2RHpZG+YsXgVaxFZcGXkFhKNdyPALLxZWiysPIip48EvE0TpBmG2HuIFLVZAlYZtz
         s4eg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id n18-20020a05622a041200b00437b491acbasi13791959qtx.103.2024.04.23.20.01.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 20:01:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) client-ip=103.168.172.158;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-591-yeMU6toVPwm_jgadm3vW5Q-1; Tue, 23 Apr 2024 23:01:40 -0400
X-MC-Unique: yeMU6toVPwm_jgadm3vW5Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E8ED104B504
	for <blinux-list@gapps.redhat.com>; Wed, 24 Apr 2024 03:01:40 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7AE7F2166B34; Wed, 24 Apr 2024 03:01:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 426462166B31
	for <blinux-list@redhat.com>; Wed, 24 Apr 2024 03:01:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D8ADC3804511
	for <blinux-list@redhat.com>; Wed, 24 Apr 2024 03:01:39 +0000 (UTC)
Received: from fhigh7-smtp.messagingengine.com
 (fhigh7-smtp.messagingengine.com [103.168.172.158]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-400-mXUaAINGNOeu98dy5kR2oA-1; Tue, 23 Apr 2024 23:01:35 -0400
X-MC-Unique: mXUaAINGNOeu98dy5kR2oA-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 5C7191140094
	for <blinux-list@redhat.com>; Tue, 23 Apr 2024 23:01:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 23 Apr 2024 23:01:35 -0400
X-ME-Sender: <xms:D3YoZkiRXWxClwpvpGBmuuABp8I0KKvubaMh88Dmhr2lM5eisMdSUQ>
    <xme:D3YoZtCns9owlVS0OGWGY-Du1jt7sOsrn6dLNm8Zfva5yK6t9M2TMcUiBgS6KQ52j
    ozxWogOJm956lxm_1s>
X-ME-Received: <xmr:D3YoZsGrY5IzXl81942i4RwV5SkrP7fIUuECRyljJtY0d-KWtW2LyAvESyH1>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudelvddgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepjeffffdujeelueffieevtdeiteettdekgffgkedvueejteektdehfefh
    hfdvteeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:D3YoZlTzjtk5kZ1_rdSLJB9hEvMQ-br5b3l9eB5CiCfpRVWDnKx_8A>
    <xmx:D3YoZhzXLnYbg85E3afGRphs1-ZSOt_CP_MPoFDCUYU-yA8WtTh2tg>
    <xmx:D3YoZj5b630ssyaMx2kkv1NHop7TqkxmjrTAfxjVPtuzo9_dxBAw1Q>
    <xmx:D3YoZuwe9WQGd_dbF4Zq8f-SjnZa6qM-rJOqcGpd_C7XzXCmyVvHpQ>
    <xmx:D3YoZiqVCUf211OSgXzNFS7rz9vih_ogbyXwv6Um0b2uHmnVOTJF0d7F>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Tue, 23 Apr 2024 23:01:34 -0400 (EDT)
Date: Tue, 23 Apr 2024 20:01:33 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Reading Dates in Software Speech?
Message-ID: <e8537e32-09b5-5ec7-3dff-1624911f9e6d@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted
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

Hi All: While useing Fenrir during our recent trip, I noticed something rather 
inconsistant about how several software speech engines are handling dates in an 
index in Alpine. So-far an only place I never have this trouble is my DecTalk 
USB. It will be interesting knowing if many of you who use software speech will 
hear this line as I did
->1 Apr 23 Google Alert Google Alert - iran
Well, here that 1 becomes April first 1
Meanwhile, once I am at message 32 it reads a bit more normally. Certainly my 
Wife's windows11 machine does the same thing in Alpine. Today I ran a Voxin 
Allison voice on my Debian SID machine. Same thing in Speakup. Why it would 
basicly swop around an index number with an abbreviation of a month. I really 
don't remember noticing this in Eliquence, nor the many years in Vocal-Eyes 
with 2 different DecTalks. I suppose if Speakup had an exception dictionary, 
one could put lots of entries, maybe replace those monthly abbreviations with 
reel worlds. Thanks so much in advance for your analysis.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

