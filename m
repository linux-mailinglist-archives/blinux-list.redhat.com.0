Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E2449D7F2
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 03:19:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643249971;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ux6YDaWPGxogk9vu6W1Tnjhuu3k4BtqZpGZWfnjqcUY=;
	b=br7rhyiKz3tvTQ5MdSbbwLJ9OaIej0n2zoJv243sCMO9RJi9vQw/BZy/wEQSerU7kp156V
	f5EzICgySiogaUfaeQwITqTZDWQg1qnY4QXea8JN4jYdLiaj2+mtHW1poEo0DMHUhYWMtS
	xCsubB9CNQTtjiIXjNOOnuFzTV2qw/s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-35-rxTeyNFnPMOm2ySe-SN53Q-1; Wed, 26 Jan 2022 21:19:27 -0500
X-MC-Unique: rxTeyNFnPMOm2ySe-SN53Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 21CF91083F61;
	Thu, 27 Jan 2022 02:19:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56462101F6CF;
	Thu, 27 Jan 2022 02:19:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5143C1809CB8;
	Thu, 27 Jan 2022 02:19:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R2JGJQ014715 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 21:19:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 016CB112133E; Thu, 27 Jan 2022 02:19:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F15841121319
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 02:19:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D0911C05EA1
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 02:19:12 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-671-BfcaHdM6MB6BHJ2Riwg4qw-1; Wed, 26 Jan 2022 21:19:10 -0500
X-MC-Unique: BfcaHdM6MB6BHJ2Riwg4qw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 85B38620279; Thu, 27 Jan 2022 02:19:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 84E8E62021E
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:19:09 -0500 (EST)
Date: Wed, 26 Jan 2022 21:19:09 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Why do you use Linux? expanded from  Converting text to mp3
In-Reply-To: <YfH3P14/As9FjG9P@panix.com>
Message-ID: <Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
References: <cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
	<YfH3P14/As9FjG9P@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Okay  then,
This illustrates another point which got touched  on in a different thread 
as well.
The, you must be prepared to do programming if you are going to use Linux 
fluidly, if at all.
On an entirely different list I am on, folks were complaining about 
windows 10 and windows 11, because of the changes.
Computers are increasingly such critical parts of our lives, banking 
shopping, even voting, that many on the list spoke of just wanting to sit 
down at their computer and have things work...so they still use older 
editions of things like Windows  XP?  and Windows  7.
I admit that is part of why the out of the box concept discussed here where 
Access is concerned seems a bit, speaking personally, like a 
misconception.
Few on the list I referenced above are using adaptive tools, and some of 
them are scientists, with many not wanting configuring to be a part of 
their computer lives.
  So, why do you use Linux?
what makes it worth the time the training and the trial  / error?
Oh, and is it your only operating system?
Want to ask the latter because I know someone who indeed uses Linux 
exclusively, vowing never to touch windows again.
Please feel free to express in detail, never mind my personal situation, 
because the journalist in me is interested as well.
Karen



On Wed, 26 Jan 2022, Linux for blind general discussion wrote:

> Fair point.
>
> As regards the keyboard, I agree with the main keyboard philosophy, and
> in fact speakup does allow you to customize it to use the main keyboard instead of the
> keypad. However, it took me a while to customize it to my liking and
> required quite a bit of study and generating of personal keymaps, so
> might not be of any interest to those who aren't comfortable making
> some low level modifications.
>
> On Wed, Jan 26, 2022 at 08:16:08PM -0500, Linux for blind general discussion wrote:
>> Which may illustrate my point.
>> I can use those without changing what I have now.
>> Speaking personally if Linux does not provide equal access to both hardware
>> and  software speech, in both its command line and graphical platforms, I am
>> unsure  just where the advantage is for me personally.
>> One thing I personally disliked with speakup, at least the times I tried it
>> years back was the need to remove my hands from the keyboard for many
>> things.
>> That may not hold true all the way around, but I am a solid typist and do
>> not like having to remove may hands, say use the number pad, if I want as I
>> work content.
>> That is me though, which is one magical thing about personal computers.
>> everyone brings their desires and usage goals to their machines.
>> Which to my mind again personally means Linux should, if it actually can, be
>> flexible enough for all choices to work in it command line and graphical.
>> Karen
>>
>>
>>
>> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>>
>>> I don't use Firefox. I use a text based browser, either lynx, w3m, or links (the chain) depending.
>>>
>>> On Wed, Jan 26, 2022 at 07:48:42PM -0500, Linux for blind general discussion wrote:
>>>> Rudy,
>>>> As an example, may I ask what edition  of  Firefox you are running with that
>>>> dectalk Express?
>>>> Karen
>>>>
>>>>
>>>>
>>>> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>>>>
>>>>> Karen,
>>>>> I use Linux speakup with a Dectalk express speech synthesizer. And I believe speakup also handles the
>>>>> slot card version of dectalk though you'll need a desktop PC that supports it, so the software is there.
>>>>>
>>>>>
>>>>> Rudy
>>>>>
>>>>> On Wed, Jan 26, 2022 at 05:22:35PM -0500, Linux for blind general discussion wrote:
>>>>>> Kyle,
>>>>>> i do not consider my hardware decktalk provided via my reading edge to be an
>>>>>> example of text to speech.
>>>>>> By definition, and there are many, the term, which refers to taking
>>>>>> information in text format  and  rendering it aloud does not, speaking
>>>>>> personally,  equal pronunciation ease.
>>>>>> In fact one theory about this has to do with preserving the audiobook
>>>>>> market.
>>>>>> granted, as  was pointed out in a thread some time ago, I am not likely to
>>>>>> learn about Linux screen readers, no driver exists for my hardware speech,
>>>>>> and software synthesizer sources  currently do a number on my brain.
>>>>>> Karen
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>>>>>>
>>>>>>> That being said, the audiophile in me cannot resist pointing out that
>>>>>>> pronunciation abilities of tts are of far less quality than those
>>>>>>> provided by many actual screen readers, at least the ones I have
>>>>>>> used...which???? does not include any for Linux.
>>>>>>>
>>>>>>>
>>>>>>> That being said, the technofile in me cannot resist pointing out the
>>>>>>> fact that every screen reader for every OS uses nothing but TTS
>>>>>>> technology to read the screen. Well, I guess BeMyEyes doesn't, but it's
>>>>>>> not exactly a screen reader, unless you need the volunteer to read a
>>>>>>> screen for you.
>>>>>>>
>>>>>>> ~ Kyle
>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> Blinux-list mailing list
>>>>>>> Blinux-list@redhat.com
>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>>
>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>>>
>>>>> --
>>>>> Rudy Vener
>>>>> Website: http://www.rudyvener.com
>>>>> Twitter: https://twitter.com/RudySalt
>>>>> The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
>>>>>  - A. R. Vener
>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>>>
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

