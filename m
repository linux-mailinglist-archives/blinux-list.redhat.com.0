Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EF57349D793
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 02:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643247875;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FQne6beETTevcfWSaBM1HPXVn/ii1fUMD3ryYiLWHAs=;
	b=PnyXO33NrXE+w809ZT2lp+LmN3RIvna9iecCjsWnmui3H/9ctYoeqzHA92j3tuEvMFM4qY
	TBaNIErc1fO677PN/obWESbSmjohwOwsaicFrPRWCewCzdFqlO3YUxdMUMs6rqn9iTgDVM
	+t5g2CQPLed3dZSLOTVRLnUnWbxnugw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-84-NQNG7uoBOjGiCdmG3uzE3w-1; Wed, 26 Jan 2022 20:44:31 -0500
X-MC-Unique: NQNG7uoBOjGiCdmG3uzE3w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1B3118460E6;
	Thu, 27 Jan 2022 01:44:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 815144ABA6;
	Thu, 27 Jan 2022 01:44:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC6F21809C88;
	Thu, 27 Jan 2022 01:44:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R1iLO8012153 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 20:44:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 82B5D40885B3; Thu, 27 Jan 2022 01:44:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7ECF540885B0
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 01:44:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6560F8001EA
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 01:44:21 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-411-4ITEo2xQP42tMzjn1BJIjg-1; Wed, 26 Jan 2022 20:44:19 -0500
X-MC-Unique: 4ITEo2xQP42tMzjn1BJIjg-1
Received: by mail-qk1-f171.google.com with SMTP id g145so1345343qke.3
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 17:44:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=fipAJBrrsrvrwCnOB1+Z+2jQ09sQM7rw/UOxVc13+pY=;
	b=f6cFjElKdKcnwRDx7hLcburFAy0bKhoNPDSStkby3DvsPUJbQCZ5t4y/HA1iUWCeQD
	6ienSc22TXjMrFTF4fcHu6WSgXHnEZDL/pYhOOIVM6eZsmEv6N4pzpkL5iuymAh0iIxp
	ZOKPZYdOr3Mb/aclLhKU73sZohKcdRpR+MrdGDlH3Q9FAsqUJmwxJCB3wUSZxdmNCp6A
	EVGLi7u61pOuHVq+Y7AzN65fUf3mSfaYDReC6gP9GHc5cVVIpiFxcVPaKQh7LZ80R6v2
	C7mYYU2vVgyUjlshsfHATkiPUo8i1heAvRVSIJ/IQea4///tjcaZytDlkn5eI7eQWIQD
	fQQA==
X-Gm-Message-State: AOAM530Z+iXD1u53x0M5fPwZ0uvy4zo2HBtH+eta1nLbWvUFUNHY0aLW
	tcUG3dG2I5zPgNPrgijfF8K4UqsENozegw==
X-Google-Smtp-Source: ABdhPJwrk8o3O5sU9rSO3BfiapwTwhPu5E/tVhQleQl+CRXhoA5eMzmHqc9GNgiWv+pR/L5Tz3w1Ig==
X-Received: by 2002:a05:620a:c45:: with SMTP id
	u5mr1153975qki.563.1643247858798; 
	Wed, 26 Jan 2022 17:44:18 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id n14sm667048qkp.89.2022.01.26.17.44.18
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 26 Jan 2022 17:44:18 -0800 (PST)
Message-ID: <73320e50-9452-21aa-404b-bbe853507d90@gmail.com>
Date: Wed, 26 Jan 2022 20:44:17 -0500
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
	<ceec5bbb-91bf-8571-81a1-b91ae2c8124f@gmail.com>
	<Pine.LNX.4.64.2201261949220.2111580@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2201261949220.2111580@server2.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Decktalk hardware is analog. software Speech is not.

Incorrect. DECTalk hardware takes text, converts it to digital speech 
signals via software programmed into a chip soldered onto the printed 
circuit board, and that digital speech is translated into the analog 
sound you hear using another chip on the same board. This is exactly 
like what your sound card does. The second-stage chip is called a DAC, 
or digital to analog converter. In the case of your hardware speech 
synthesizer, the analog wave form is derived from an 8KHz, or possibly 
11.025KHZ, mono digital signal and is piped out through a small speaker 
connected to the output of the DAC. This is a rather simplified 
explanation of the process, but it will suffice here.


recently I was helping someone try to find a dectalk USB, and one of my 
associates builds a sort of USB box that uses the most current dectalk 
software speech in modules form.
what they told me was that the dettalk 5, which is this software edition 
sounds nothing like hardware dectalk, and is quite difficult to understand.


Right. It's 4.6 that sounds exactly like the hardware and produces .wav 
files. I've heard 5 once or twice, and they really messed it up bad. 
This says nothing of the quality of software speech, but rather speaks 
to either the incompetence of the developers the company allowed to 
touch their code or the incompetence of the company itself, who felt 
like if they just made it different, it would somehow be better.


If no one bothers to write graphical options for hardware speech, not 
because it cannot be done, but because they choose the free stuff 
instead, that says allot about Linux creativity speaking personally.


No, it says nothing of Linux creativity and everything of the 
prohibitive cost of the hardware. It makes no sense at all for a 
complete computer on a single board to cost $35, but for a speech 
synthesizer to cost $500 or more, especially since it has less hardware 
in it than an mp3 player, and that hardware is far older as well. This 
is probably why most of us don't even bother with dedicated hardware 
speech synthesizers, especially since more can be done in software on 
the more powerful hardware that costs far less. Time is better spent 
developing for general-purpose hardware and innovating on the software 
side than the money that can be made in other ways that would make it 
possible to purchase the antiquated hardware that costs too much. This 
may also explain why few if any dedicated hardware speech synthesizers 
are even made now.


And all of this says absolutely nothing that will help the thread 
starter with his original question, how to convert text via software to 
an mp3 file. I answered that question to the best of my ability based on 
what I found, although I don't know what is causing some people to see 
errors instead of hearing speech. The solution to that problem is still 
escaping me unfortunately.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

