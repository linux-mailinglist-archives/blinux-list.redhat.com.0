Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8D849D57F
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 23:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643236507;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DoWZUEad+/GmK9ZidZ/f5SJ6NisBacqtKb83SoxQYFw=;
	b=gP53E/SyihfFl1SNRtxkpqCp09OvVv7S2XRnKjHGRUeimoI92dLiQmDkVWCClB4T9XZmgk
	gUcJ6W4Hp24oXuGBy31Ax68iPfVyUTH/Ad5ywTlYatlpAWpDp48nIcLE0tXVaBX69D869I
	WH1O/ixZh4UItN0bWdgc2Xvqgp42og4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-aI92CmWANOC55Jst66Tt_Q-1; Wed, 26 Jan 2022 17:35:03 -0500
X-MC-Unique: aI92CmWANOC55Jst66Tt_Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0666C108088A;
	Wed, 26 Jan 2022 22:34:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 94E895E26D;
	Wed, 26 Jan 2022 22:34:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 47C621809CB8;
	Wed, 26 Jan 2022 22:34:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QMYqZp032343 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 17:34:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B04FD202699A; Wed, 26 Jan 2022 22:34:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA93F2026987
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:34:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7B212802A5E
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:34:47 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-428-dLrZBvidPeOPiGN6Hj9IKg-1; Wed, 26 Jan 2022 17:34:45 -0500
X-MC-Unique: dLrZBvidPeOPiGN6Hj9IKg-1
Received: by mail-qt1-f175.google.com with SMTP id r14so1007642qtt.5
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 14:34:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=q3DVz266PzhVLkrsNQiB1Qt6qdJMET/b6wPd8IgNWn0=;
	b=U6HDTJckrjMUcL5CkPo1HQHPKMOiEZc68b70XdUTbSJu4UU7gnB+bFHcioHy5GnXAC
	AhDgo/xBBWzyiy/YkfAbHqQYmaCMZXZ3Bk6xPzYjxv+tiBKvnGr1x8CV4OlgspgglovQ
	0zRE4fnctfiulAcFb/+k1Dk62pag0DIRzQTY6aViSA6BuKjMkZ7gCpZ5Pf1rCsHmL8zb
	eCAOTTnYgoNbM7FzPzHgy2x7/3c1+hKQ8TJ/VDVQdAJLvm487ofDkF0Ib2wUI+CdPjDK
	mFG8Jwt40wpFa4SUTqxirGfkgivtXH1iIVdps9Tse0iaRb1B2uGCZtW4wu8AJ/vDNWXj
	A3lA==
X-Gm-Message-State: AOAM533G3bv/AQ6GqX3sc+YSzvsfhQ/ilk3N74sQB6DeH4bdJLo3SMVA
	yk7Vs7GVZtjThSL8Isi9jLt4IQ0BheKptQ==
X-Google-Smtp-Source: ABdhPJzG3THKhAlOcOPlou4O2MjbYAyDnLlkwDBrCLoCWRxUU4/8ZfSrs2zhJD1Fxn2pu7yRi155CQ==
X-Received: by 2002:a05:622a:254:: with SMTP id
	c20mr660413qtx.429.1643236485220; 
	Wed, 26 Jan 2022 14:34:45 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	m130sm324049qke.55.2022.01.26.14.34.44 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 26 Jan 2022 14:34:44 -0800 (PST)
Message-ID: <ceec5bbb-91bf-8571-81a1-b91ae2c8124f@gmail.com>
Date: Wed, 26 Jan 2022 17:34:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Converting text to mp3
To: blinux-list@redhat.com
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

DECTalk hardware is by definition text-to speech technology, as it takes 
marked up text, but can also take text without any markup, and it 
converts it to audible speech. It in fact does exactly what a software 
speech synthesizer does, but it does it over a cable instead of via a 
virtual cable, pipe or library of functions. In fact, DECTalk once was a 
software speech synthesizer that sounded almost exactly like the 
hardware, as it was most likely the same software internal code of the 
hardware adapted to be able to use the hardware found in a PC. In fact, 
if you can still find this old DECTalk software, as I recall, it was 
able to take your text and create .wav files in much the same way that 
newer software speech synthesizers can do now. I know that people were 
making it sing, not by recording their hardware, but by making and 
mixing .wav files produced by the software. And any .wav file can be 
converted to mp3 using lame, which is one possible answer to the thread 
starter's question.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

