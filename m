Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 67B683633F3
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 08:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618725940;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yACXie6V+rCfNLAFM8pSFVTEcKVCX41W2oNDvPy+mP4=;
	b=HCY22TenEGguKG9LZcI5tMB3yYVwHoBmOsEWe1a22p5GpCsSQ6VnQHPFqV18TMJd1RdK8U
	7ytJlTxDjDiT85y+f8bYurh9MYdV+N9reWS6UQuVYqaTlppJWtdfSlQh6Y9GNBGu8OS1wn
	dS8MwP3xN6s2YfZBt7G77h8dUiNT1wk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-Mt89_WW-PfeKjqw6LJ-J-Q-1; Sun, 18 Apr 2021 02:05:38 -0400
X-MC-Unique: Mt89_WW-PfeKjqw6LJ-J-Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 268D610053E7;
	Sun, 18 Apr 2021 06:05:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36C045D72E;
	Sun, 18 Apr 2021 06:05:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 036191806D16;
	Sun, 18 Apr 2021 06:05:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I65QT8027877 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Apr 2021 02:05:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 93E191111C92; Sun, 18 Apr 2021 06:05:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F89C1004C76
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 06:05:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EAC96101A531
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 06:05:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-168-lvwx5gJNPEOKcsQvJgp5mg-1; Sun, 18 Apr 2021 02:05:20 -0400
X-MC-Unique: lvwx5gJNPEOKcsQvJgp5mg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FNKDc1xS8zg7f
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 02:05:20 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FNKDc1Dvtzcbc; Sun, 18 Apr 2021 02:05:20 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FNKDc0thtzcbV
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 02:05:20 -0400 (EDT)
Date: Sun, 18 Apr 2021 02:05:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Formatting - was Would you be interested in having natural
	sounding TTS voices by Readspeaker on Linux? demo link included
In-Reply-To: <Pine.LNX.4.64.2104180111320.2518410@server2.shellworld.net>
Message-ID: <alpine.NEB.2.23.451.2104180158400.20962@panix1.panix.com>
References: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
	<161870350119.8.17896736538043458897.5969450@slmail.me>
	<CAO2sX33vz_y4yBAAy7JDdv5PWmRoS_QvTXxV+ghoWpyuhuRSig@mail.gmail.com>
	<20210418.010302.720.1@[0.0.0.0]>
	<Pine.LNX.4.64.2104180111320.2518410@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

My answer to this repetitive question is most definitely no and for the 
same reason speech synthesizers weren't originally given naturally 
sounding voices in the beginning of their development.  Speech 
synthesizers in the early 1960's were top secret equipment and put in 
military fighter aircraft and maybe also bombers.  The reason they didn't 
get natural sounding voices then was that the air crews needed to be able 
to distinguish speech synthesizer announcements from other natural 
sounding speech from over the intercom and over the radio.  Having lived 
with synthetic sounding speech in my case since 1987 not only am I used to 
it, as a result of research I did on its origins I understand its purpose 
and proper use.  Can synthetic speech be left synthetic and get around 
people's auditory difficulties?  That I don't know but that could be a 
helpful line of research.



On Sun, 18 Apr 2021, Linux for blind general discussion wrote:

> But this is one thing I find confusing...at least for Linux.
> tts is not a screen reader program.
> One may incorporate a tts  module into the workings of a screen reader 
> program, the way drivers were written to allow hardware synthesizers to 
> communicate with said program, but the tts itself is not going to, on its 
> own, manage things like responsiveness while typing and the like...and that 
> is before you talk of latency problem possibilities.
> It is the screen reader program itself that, in my experience, takes care of 
> inflection, allowing the user to get more or less, same thing with 
> punctuation marks, pitch and speed.
> If speak reader is strictly a tts, the company   may not understand the need 
> for  things like making sure the tts can follow activity and control of the 
> computer itself.
> before  writing this email I did a quick google  using the phrase tts 
> defined?
> with  the first several options discussing how those with reading challenges 
> like dyslexia use tts to manage small blocks of words on the screen  with the 
> recommended rate of 180 words per minute..or less.
> It is, speaking personally, very unfortunate that some think a tts is a 
> screen reader program, when in reality they are different.
> I have a friend who likes to use her amazon kindle to read fanfiction aloud.
> We have these discussions because my screen reader has  no issue  properly 
> pronouncing say  the name of Ron Weasley from the harry Potter books, but the 
> Kindle tts cannot pronounce the word correctly at all.
> Do not be surprised if you end up needing to demonstrate how your screen 
> reader, orca or speakup, does more than just read text, which for many  is 
> the only   purpose of a tts    tool.
> Does that make sense?
>
>
>
> On Sat, 17 Apr 2021, Linux for blind general discussion wrote:
>
>>  The problem is that all the so called human voices are spliced together
>>  syllables and word fragments taped together. So you get emphasis on the
>>  wrong parts of the sentences, pauses in the wrong place, and stuff like
>>  that. If they would devote more machine learning time into proper text to
>>  speech rendering instead of sensorship and other nonsense, we might get
>>  somewhere.
>>
>>  ----- Original Message -----
>>  From: Linux for blind general discussion <blinux-list@redhat.com>
>>  To: blinux-list@redhat.com
>>  Date: Sun, 18 Apr 2021 00:42:25 +0000
>>  Subject: Re: Formatting - was Would you be interested in having natural
>>  sounding TTS voices by Readspeaker on Linux? demo link included
>>
>>>  Don't get me wrong, more natural sounding TTS with proper inflection
>>>  would be great, and for me, the holy grail would be TTS capable of
>>>  reading a digitized novel in real-time or reading subtitles on foreign
>>>  media in real-time and be indistinguishable from a human cast
>>>  recording a audio dramatization or dubbed vocal track... but unless
>>>  there's been massive improvements in recent years I'm unaware of, the
>>>  natural voices are at that point where they almost sound human but
>>>  fail in a subtle but unsettling way that's hard to qualify, and until
>>>  we get over that hurdle, I'll take the obviously robotic monotone over
>>>  the almost, but not quite, passes for a human reader voices for daily
>>>  work.
>>>
>>>  _______________________________________________
>>>  Blinux-list mailing list
>>>  Blinux-list@redhat.com
>>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>>> 
>> 
>>
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@redhat.com
>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

