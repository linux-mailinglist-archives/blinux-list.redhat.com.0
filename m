Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA5E49D768
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 02:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643246188;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9eL6ZmYvfzcR7DSzpFAy5sGamG4gsRzmBge4K8tbsn8=;
	b=LWJF7R6nJDSWIwLqlTcb8IEmmeZ9962vJSj7vS6SaIjO7XTyXS9J2MRIsVp9mV3Votlo06
	2budKSjPxnkDqHKY8dgkJ5dydQ8HYarVRLcF3MjvoA5nlPkxYhXuU0PSU+tYFYxsrRmaNf
	866YKv24mOdM6/v7lKfv046oDXmkBaw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-642-YWPzcjxUPASKjakjdKytbw-1; Wed, 26 Jan 2022 20:16:24 -0500
X-MC-Unique: YWPzcjxUPASKjakjdKytbw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CEFB2363A5;
	Thu, 27 Jan 2022 01:16:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B5F65608BA;
	Thu, 27 Jan 2022 01:16:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE5C41809CB8;
	Thu, 27 Jan 2022 01:16:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R1GDZ4010373 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 20:16:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C5A2CC1914B; Thu, 27 Jan 2022 01:16:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C21BDC19149
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 01:16:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8D6E185A79C
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 01:16:13 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-624-eog_38XENIyCtnxo7nbTIg-1; Wed, 26 Jan 2022 20:16:11 -0500
X-MC-Unique: eog_38XENIyCtnxo7nbTIg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 3096A620237; Thu, 27 Jan 2022 01:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 2FAC56201A9
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 20:16:08 -0500 (EST)
Date: Wed, 26 Jan 2022 20:16:08 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
In-Reply-To: <YfHvt+4aziezYwjx@panix.com>
Message-ID: <Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
References: <20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Which may illustrate my point.
I can use those without changing what I have now.
Speaking personally if Linux does not provide equal access to both hardware 
and  software speech, in both its command line and graphical platforms, I 
am unsure  just where the advantage is for me personally.
One thing I personally disliked with speakup, at least the times I tried 
it  years back was the need to remove my hands from the keyboard for many 
things.
That may not hold true all the way around, but I am a solid typist and do 
not like having to remove may hands, say use the number pad, if I want as 
I work content.
That is me though, which is one magical thing about personal computers. 
everyone brings their desires and usage goals to their machines.
Which to my mind again personally means Linux should, if it actually can, 
be  flexible enough for all choices to work in it command line and 
graphical.
Karen



On Wed, 26 Jan 2022, Linux for blind general discussion wrote:

> I don't use Firefox. I use a text based browser, either lynx, w3m, or links (the chain) depending.
>
> On Wed, Jan 26, 2022 at 07:48:42PM -0500, Linux for blind general discussion wrote:
>> Rudy,
>> As an example, may I ask what edition  of  Firefox you are running with that
>> dectalk Express?
>> Karen
>>
>>
>>
>> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>>
>>> Karen,
>>> I use Linux speakup with a Dectalk express speech synthesizer. And I believe speakup also handles the
>>> slot card version of dectalk though you'll need a desktop PC that supports it, so the software is there.
>>>
>>>
>>> Rudy
>>>
>>> On Wed, Jan 26, 2022 at 05:22:35PM -0500, Linux for blind general discussion wrote:
>>>> Kyle,
>>>> i do not consider my hardware decktalk provided via my reading edge to be an
>>>> example of text to speech.
>>>> By definition, and there are many, the term, which refers to taking
>>>> information in text format  and  rendering it aloud does not, speaking
>>>> personally,  equal pronunciation ease.
>>>> In fact one theory about this has to do with preserving the audiobook
>>>> market.
>>>> granted, as  was pointed out in a thread some time ago, I am not likely to
>>>> learn about Linux screen readers, no driver exists for my hardware speech,
>>>> and software synthesizer sources  currently do a number on my brain.
>>>> Karen
>>>>
>>>>
>>>>
>>>> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>>>>
>>>>> That being said, the audiophile in me cannot resist pointing out that
>>>>> pronunciation abilities of tts are of far less quality than those
>>>>> provided by many actual screen readers, at least the ones I have
>>>>> used...which???? does not include any for Linux.
>>>>>
>>>>>
>>>>> That being said, the technofile in me cannot resist pointing out the
>>>>> fact that every screen reader for every OS uses nothing but TTS
>>>>> technology to read the screen. Well, I guess BeMyEyes doesn't, but it's
>>>>> not exactly a screen reader, unless you need the volunteer to read a
>>>>> screen for you.
>>>>>
>>>>> ~ Kyle
>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>>
>>> --
>>> Rudy Vener
>>> Website: http://www.rudyvener.com
>>> Twitter: https://twitter.com/RudySalt
>>> The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
>>>  - A. R. Vener
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

