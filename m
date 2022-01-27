Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1DC49D708
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 01:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643245137;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=spbKNp4zxhHgDUD5wJ8kxhnsAzujW2h8Z4yxkCsG/yU=;
	b=jHM6R2rF/E7cHvzzRCi7Lf2moTLfJyoLZvWnFiJjfHx88KA20Q/SCubTy7A22bZbNOpNfr
	Eefg0l+cVWLBDrHI6pKdl9icnIn86TaELJmdWZQelPigi9CUP7e9dkr12Hn7MxawyMOiCA
	J+5m5wL0r4isyvuOYxCQDAF9FE1YWAw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-452-KAlR_9yUP7OLcM1O0LaA0g-1; Wed, 26 Jan 2022 19:58:53 -0500
X-MC-Unique: KAlR_9yUP7OLcM1O0LaA0g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F1631006AAE;
	Thu, 27 Jan 2022 00:58:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5D0F5DBB3;
	Thu, 27 Jan 2022 00:58:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E2AB41809CB8;
	Thu, 27 Jan 2022 00:58:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R0wi69008877 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 19:58:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B0600C23DD0; Thu, 27 Jan 2022 00:58:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACDBDC23DCF
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 00:58:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D3CB2A59545
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 00:58:44 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-93-Z8uEuHvAMralE2IyiPHQ0w-1; Wed, 26 Jan 2022 19:58:42 -0500
X-MC-Unique: Z8uEuHvAMralE2IyiPHQ0w-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id AB6F5620237; Thu, 27 Jan 2022 00:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id A65446201A9
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 19:58:41 -0500 (EST)
Date: Wed, 26 Jan 2022 19:58:41 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
In-Reply-To: <ceec5bbb-91bf-8571-81a1-b91ae2c8124f@gmail.com>
Message-ID: <Pine.LNX.4.64.2201261949220.2111580@server2.shellworld.net>
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
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Decktalk hardware is analog. software Speech is not.
For  me personally the frequency ranges used for software speech output, 
along  with many devices like some cell phones can do me physical harm.
recently I was helping someone try to find a dectalk USB, and one of my 
associates builds a sort of USB box that uses the most current dectalk 
software speech in modules form.
what they told me was that the dettalk 5, which is this software edition 
sounds nothing like hardware dectalk, and is quite difficult to 
understand.
I asked on list once why dectalk hardware  like my reading edge does not 
work in the graphical Linux environment, and was told because no one has 
bothered.
If no one bothers to write graphical options for hardware speech, not 
because it cannot be done, but because they choose the free stuff instead, 
that says allot about Linux creativity speaking personally.



On Wed, 26 Jan 2022, Linux for blind general discussion wrote:

> DECTalk hardware is by definition text-to speech technology, as it takes 
> marked up text, but can also take text without any markup, and it converts it 
> to audible speech. It in fact does exactly what a software speech synthesizer 
> does, but it does it over a cable instead of via a virtual cable, pipe or 
> library of functions. In fact, DECTalk once was a software speech synthesizer 
> that sounded almost exactly like the hardware, as it was most likely the same 
> software internal code of the hardware adapted to be able to use the hardware 
> found in a PC. In fact, if you can still find this old DECTalk software, as I 
> recall, it was able to take your text and create .wav files in much the same 
> way that newer software speech synthesizers can do now. I know that people 
> were making it sing, not by recording their hardware, but by making and 
> mixing .wav files produced by the software. And any .wav file can be 
> converted to mp3 using lame, which is one possible answer to the thread 
> starter's question.
>
> ~ Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

