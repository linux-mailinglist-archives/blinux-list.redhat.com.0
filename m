Return-Path: <blinux-list+bncBC3NDNGRUAMRBMHFRKVQMGQEMMDC2KY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id D27F37F9102
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 03:51:29 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4239047911bsf33213391cf.3
        for <lists+blinux-list@lfdr.de>; Sat, 25 Nov 2023 18:51:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700967088; cv=pass;
        d=google.com; s=arc-20160816;
        b=UGd/+/2A4RBuaXZ9i36QqMccgsz4bv2vlnTu/MwJXcOKGmquvij2l656mhJnZm+pVp
         xo77V2A8h8hNS5eDR9AsHT/q2AiVveACE/0EPyuY+2JOtCZrXX0580Vv19yzfALIaUDm
         hG7UEwspbKiBtrABhkP9gewpqG3dBEPlDm/Zut90Lj/3zgQKv1JcqT6CRX5I13WtqmMx
         Sucm0YnqhfTtVbNzmrTgw8yYj3e7HH8+shodz4vnUaVnFpmT+ac9tRb7Av4BhxlxKU5q
         SxrtYHKGCGb/A5uDSYui6OnwiOBUQkw60ZIESJp6i8h4NDgi23TSbzoCMUaGDTXQaI7o
         ErFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=O1uuBEWJbkh2GODgeRboT4SQorU1zMLRi7G5UY5zFI8=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=BLQ6oEIIi8KJ4htnk4LRTzQGGBj5Msa4fJ4oP8dIPZ7t2NvAmWLTCDGXX0bCwwAz70
         u6HRBmAL6kpUZfBO/nV4DTSJVXPLW4lVLjrrfz2jk+SxPAezmXc4YSrB735u/p72iKU6
         ETtA/WeKA055tqoVXJUOppDmSV8T+wdYMxS2RrqHQrsCOr94jh1HkeJUA/vJ2kPfYXlv
         NlM7zbChQgQGqAYrtDq7QwrzFgfztCohatCco64jdBmSnTyT6j7OX7E/1cn0LSMkceW4
         OHTrNQ727NWijZdFBWe4e68KccYYdmL76RPTeNdsVkeBtPASM61XZvHiJQE/vCPR3WFF
         sCuw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700967088; x=1701571888;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O1uuBEWJbkh2GODgeRboT4SQorU1zMLRi7G5UY5zFI8=;
        b=EOBjD+UxzQz8PfF5jSfl/oNQOho52GGpZncr5T0Q4lMUrtITwMyXbq9/awjSB864hF
         zWHByg5obhjKbTc6MDGDKEpYXq8nqacWd65uuQFZguW8GdUhxjwiT0WNPIFL9UHQrL21
         UH9yO2ixfgaJIYtqH/sThqGXcHU7/7bFsXbXbnSKsyaGIeE1+vr0OvhMpsQSz9zSnbMx
         ffzyHE5bG7aHv5bPd8PBKd5MrjMaDHSbOhUdl8hluyTaFCMAxbQlqD0KKyVmHI8lcJ3+
         MwASvPU088pUass01gjJ/Hvo8LQ9Mw8V2Dx57mKDOCSj7Bqu9R5FF/apcvPTjdgVYn7x
         9bCA==
X-Gm-Message-State: AOJu0Yz7lGJZoQBK4XPXrd5Hplai+QztTYxp3a4q1EP+hYgTHdBs/w6Z
	fNBwasTngWgHZIawME6LluusNQ==
X-Google-Smtp-Source: AGHT+IGFxN+o6GmalViymwwNldaFwZH4wgmfNCtDvnrIauGjiJK9Z7FmFOVEEbAtHlVQpoPLjYMQow==
X-Received: by 2002:a05:622a:1987:b0:41c:e38c:5957 with SMTP id u7-20020a05622a198700b0041ce38c5957mr9282373qtc.38.1700967088608;
        Sat, 25 Nov 2023 18:51:28 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5895:0:b0:41e:8c36:f7a3 with SMTP id t21-20020ac85895000000b0041e8c36f7a3ls2827369qta.2.-pod-prod-03-us;
 Sat, 25 Nov 2023 18:51:28 -0800 (PST)
X-Received: by 2002:ac8:5e47:0:b0:423:811a:88b with SMTP id i7-20020ac85e47000000b00423811a088bmr11536641qtx.63.1700967087931;
        Sat, 25 Nov 2023 18:51:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700967087; cv=none;
        d=google.com; s=arc-20160816;
        b=V2hFq7zmiLqt6BcM1kcl8sVMX4dKQyx1zEwExq5P8YXYPwJcAEv5+LADrjCiJFniS8
         U0iucuLD1RiQCygxc5i64ooHMcqNBnRphtygWvAgROEYZYslGpF4Z1N3kKontGOoPv9N
         aUyEU9j1E3v/AAhxgwDi2FS9UILXgynOTjdnUBUiQDiK6sixJ8pO7yy47C91BociVv4Q
         iQRfTpplwrTuP8+cCQ+Ke+Ogbaja7OdAJwWJduvBqcAy1Tkb5afc07xvsO9w2NbqMzXH
         hBodt+uFTF8CyK+9c8XqE2iXHRBVx69EirqyzYq24AFLiBuKteYEd1RHxqqpsXRO5wb7
         VvHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=PkxHst+RnkjfOnlGtkTAtgM/k+4NrEFCwYAdvigf6k4=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=He8YSNsqeyYmn/kF0gyNdbMU2QLj1jWV1+gxCTEHinV+/1TrCEJ2JPFK0eZzsfr7sr
         qq7Ve95l/U2FTWiGe8IrR/xIA5NBtFv6KDjAIORdb75c7QBqFv8PsNYQ5T/b5a7nDcPP
         dfyZ6fdeoASQtPuER8vOlHuly3+olFDbBMbO9S2pkGTsyao9Ej2il1UseYNeDxqi+8+A
         RCKL4prM6++mbdYsaLo8u2UsN7mBXwi86DGMXHJX85b3f+CnWF8avEn/bIPLi80VASyq
         wkRiTgxUIcvURVi52aZegy+u/cJXcDD/N692d/qNQKDzjlQpu52kqy2Tv9p/Xc2BdMs1
         V3aQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id jc9-20020a05622a714900b004239c668f1fsi4045810qtb.623.2023.11.25.18.51.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 18:51:27 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted sender) client-ip=66.111.4.28;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-10-JYvVjMakM-Cr1SaVnSiqAA-1; Sat, 25 Nov 2023 21:51:26 -0500
X-MC-Unique: JYvVjMakM-Cr1SaVnSiqAA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E00BC811E7D
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 02:51:25 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DCFD55038; Sun, 26 Nov 2023 02:51:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D55085028
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 02:51:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B12AD80C343
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 02:51:25 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-478-sjZkqKfzMUykdJwFfA_LNg-1; Sat, 25 Nov 2023 21:51:23 -0500
X-MC-Unique: sjZkqKfzMUykdJwFfA_LNg-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id A08A05C0131
	for <blinux-list@redhat.com>; Sat, 25 Nov 2023 21:51:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sat, 25 Nov 2023 21:51:22 -0500
X-ME-Sender: <xms:qrJiZfs6hUwARgD_kiidz58b2L09FJ0wja9JiuRm1O8cz70hz3j9uw>
    <xme:qrJiZQe7EZnRH0KEkexyI4Koxjejhw6kYQOqZQuD6ruFdmvZmRmcGCNlJRzVGz7Ob
    k-TlD4sL0hHZ9bc4IU>
X-ME-Received: <xmr:qrJiZSxEaY6jDsIi5HFIV7tCNR63_8FdCeScZtVuNfPdH_Ff-juXlKExMKkclDWErkrNPOxhCUeal96XaSuRYv73xYq6R5dsaw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehkedghedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepjeffffdujeelueffieevtdeiteettdekgffgkedvueejteektdehfefh
    hfdvteeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:qrJiZeP6hHvJFzSMBMlJB7J25ANHkSjoVcRm00o7pkqasg0WA1sEoQ>
    <xmx:qrJiZf-IjnBS9t6UyZILPNuaGBDo3OnuwR91AXqTUbHMoUdyYC5mqg>
    <xmx:qrJiZeUKwOnn8GgipRWMJLyTvOe9gc8YuSRMr8B7YHvzn-uzgtn3lQ>
    <xmx:qrJiZcKnOY_W9IjPcftj8ZjxaDOMTjQIF8YHVRGr2bnYs4h7QbyvQg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Sat, 25 Nov 2023 21:51:22 -0500 (EST)
Date: Sat, 25 Nov 2023 18:51:19 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: EmacSpeak Won't Compile
Message-ID: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted
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

Hi All: I would like to try Fenrir with a DecTalk USB. According to Crys he has 
implimented support, but I must use an Emacspeak DecTalk server. However, 
whether we make from github or run an apt install here in Debian SID, we get 
the following.
Setting up emacspeak (53.0+dfsg-2) ...
Install emacspeak for emacs
/usr/lib/emacsen-common/packages/install/emacspeak running in /
Latest installed version: 53.0+dfsg-2
install/emacspeak: Handling install for emacsen flavor emacs
   Temporary log file is emacspeak.log.eiSp4n
   Byte-compiling  (~0.7 min) ...ERROR: install script from emacspeak package 
failed
dpkg: error processing package emacspeak (--configure):
  installed emacspeak package post-installation script subprocess returned error 
exit status 1
Errors were encountered while processing:
  emacspeak
E: Sub-process /usr/bin/dpkg returned an error code (1)
Back again live: That byte compile 0.7 minutes took quite a while. For the 
DecTalk we selected tty/s0
I suppose if I had to I could run with Voxin instead. Can any1 please suggest 
how to fix this? We tried writing TV Raman but haven't heard yet. Thanks so 
much in advance
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

