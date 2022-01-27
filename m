Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4780A49D6F4
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 01:49:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643244544;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QDdFkYXFiCd+ro3KKCJGnntxsblTr82PiQld/hcNNLU=;
	b=iJIuQvHl0uNcP4+4kG3qtmnFmKCV/4buA/7u4DT6T3lRRP23eNMS+On2JmUQ1mt4I0L4Mf
	1C2h9Wkwn1ThkAnuVNUBDPTKC6mlyjD6RSNvGQ1kg72O9fQXKRq6o7vSFXJp7mb0b8nZda
	r+o3tk/0HBM3bFxUxmEd3koixmaHriA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-621-6v-hrkyMO52FyvWJxP2Ubg-1; Wed, 26 Jan 2022 19:49:00 -0500
X-MC-Unique: 6v-hrkyMO52FyvWJxP2Ubg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0203F1006AA5;
	Thu, 27 Jan 2022 00:48:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 090F3795AD;
	Thu, 27 Jan 2022 00:48:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 68F5F4BB7C;
	Thu, 27 Jan 2022 00:48:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R0mnfF008423 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 19:48:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A083F218013F; Thu, 27 Jan 2022 00:48:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C3232180159
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 00:48:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 91FE53C11A28
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 00:48:45 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-187-qWtzpBIlNH2WH5q506uY9Q-1; Wed, 26 Jan 2022 19:48:43 -0500
X-MC-Unique: qWtzpBIlNH2WH5q506uY9Q-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id A8EAC620237; Thu, 27 Jan 2022 00:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id A3A9D6201A9
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 19:48:42 -0500 (EST)
Date: Wed, 26 Jan 2022 19:48:42 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
In-Reply-To: <YfHMypPcZ5/yJq+k@panix.com>
Message-ID: <Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
References: <YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Rudy,
As an example, may I ask what edition  of  Firefox you are running with 
that  dectalk Express?
Karen



On Wed, 26 Jan 2022, Linux for blind general discussion wrote:

> Karen,
> I use Linux speakup with a Dectalk express speech synthesizer. And I believe speakup also handles the
> slot card version of dectalk though you'll need a desktop PC that supports it, so the software is there.
>
>
> Rudy
>
> On Wed, Jan 26, 2022 at 05:22:35PM -0500, Linux for blind general discussion wrote:
>> Kyle,
>> i do not consider my hardware decktalk provided via my reading edge to be an
>> example of text to speech.
>> By definition, and there are many, the term, which refers to taking
>> information in text format  and  rendering it aloud does not, speaking
>> personally,  equal pronunciation ease.
>> In fact one theory about this has to do with preserving the audiobook
>> market.
>> granted, as  was pointed out in a thread some time ago, I am not likely to
>> learn about Linux screen readers, no driver exists for my hardware speech,
>> and software synthesizer sources  currently do a number on my brain.
>> Karen
>>
>>
>>
>> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>>
>>> That being said, the audiophile in me cannot resist pointing out that
>>> pronunciation abilities of tts are of far less quality than those
>>> provided by many actual screen readers, at least the ones I have
>>> used...which???? does not include any for Linux.
>>>
>>>
>>> That being said, the technofile in me cannot resist pointing out the
>>> fact that every screen reader for every OS uses nothing but TTS
>>> technology to read the screen. Well, I guess BeMyEyes doesn't, but it's
>>> not exactly a screen reader, unless you need the volunteer to read a
>>> screen for you.
>>>
>>> ~ Kyle
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> -- 
> Rudy Vener
> Website: http://www.rudyvener.com
> Twitter: https://twitter.com/RudySalt
> The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
>  - A. R. Vener
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

