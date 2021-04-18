Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7BA533633D5
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 07:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618723823;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UMn6DMQe1DFiRMY5U8Z9MRrD7ZzRPA0HxwBxQ3qiI3A=;
	b=PT2Ck3nPa0MaNjrT8eF00kXCgpQ4RpWNJVxl9TSrutEogv1g9wNep/VP6GzwlkIDAHZhfL
	KQ5dCYEMJPpvZvlCX9ShmgdwONz42WLb1GpRtJA2o8xG+OztP1GyItcpkaPOH9V7akFirU
	2aMCs1wsneqSnjD7uHpl0Bo65SmSN18=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-530-ewxATzqrN6Go_4z4ZKWUPg-1; Sun, 18 Apr 2021 01:30:20 -0400
X-MC-Unique: ewxATzqrN6Go_4z4ZKWUPg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE5E18030B5;
	Sun, 18 Apr 2021 05:30:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C546219C66;
	Sun, 18 Apr 2021 05:30:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5B2D8383C;
	Sun, 18 Apr 2021 05:30:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I5TtU5025082 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Apr 2021 01:29:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 36AA82087A40; Sun, 18 Apr 2021 05:29:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 314FC2095BA9
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 05:29:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA4BF185A7A5
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 05:29:52 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-580-zRwfeVDFNb2WUwkkbM5_mA-1; Sun, 18 Apr 2021 01:29:50 -0400
X-MC-Unique: zRwfeVDFNb2WUwkkbM5_mA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 3FEDA621C3A; Sun, 18 Apr 2021 05:29:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 3C5A0621C28
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 01:29:49 -0400 (EDT)
Date: Sun, 18 Apr 2021 01:29:49 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Formatting - was Would you be interested in having natural
	sounding TTS voices by Readspeaker on Linux? demo link included
In-Reply-To: <20210418.010302.720.1@[0.0.0.0]>
Message-ID: <Pine.LNX.4.64.2104180111320.2518410@server2.shellworld.net>
References: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
	<161870350119.8.17896736538043458897.5969450@slmail.me>
	<CAO2sX33vz_y4yBAAy7JDdv5PWmRoS_QvTXxV+ghoWpyuhuRSig@mail.gmail.com>
	<20210418.010302.720.1@[0.0.0.0]>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

But this is one thing I find confusing...at least for Linux.
tts is not a screen reader program.
One may incorporate a tts  module into the workings of a screen reader 
program, the way drivers were written to allow hardware synthesizers to 
communicate with said program, but the tts itself is not going to, on its 
own, manage things like responsiveness while typing and the like...and 
that is before you talk of latency problem possibilities.
It is the screen reader program itself that, in my experience, takes care 
of inflection, allowing the user to get more or less, same thing with 
punctuation marks, pitch and speed.
If speak reader is strictly a tts, the company   may not understand the 
need for  things like making sure the tts can follow activity and control 
of the  computer itself.
  before  writing this email I did a quick google  using the phrase tts 
defined?
with  the first several options discussing how those with reading 
challenges   like dyslexia use tts to manage small blocks of words on the 
screen  with the recommended rate of 180 words per minute..or less.
It is, speaking personally, very unfortunate that some think a tts is a 
screen reader program, when in reality they are different.
I have a friend who likes to use her amazon kindle to read fanfiction 
aloud.
We have these discussions because my screen reader has  no issue  properly 
pronouncing say  the name of Ron Weasley from the harry Potter books, but 
the Kindle tts cannot pronounce the word correctly at all.
Do not be surprised if you end up needing to demonstrate how your screen 
reader, orca or speakup, does more than just read text, which for many  is 
the only   purpose of a tts    tool.
Does that make sense?



On Sat, 17 Apr 2021, Linux for blind general discussion wrote:

> The problem is that all the so called human voices are spliced together syllables and word fragments taped together. So you get emphasis on the wrong parts of the sentences, pauses in the wrong place, and stuff like that. If they would devote more machine learning time into proper text to speech rendering instead of sensorship and other nonsense, we might get somewhere.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Sun, 18 Apr 2021 00:42:25 +0000
> Subject: Re: Formatting - was Would you be interested in having natural sounding TTS voices by Readspeaker on Linux? demo link included
>
>> Don't get me wrong, more natural sounding TTS with proper inflection
>> would be great, and for me, the holy grail would be TTS capable of
>> reading a digitized novel in real-time or reading subtitles on foreign
>> media in real-time and be indistinguishable from a human cast
>> recording a audio dramatization or dubbed vocal track... but unless
>> there's been massive improvements in recent years I'm unaware of, the
>> natural voices are at that point where they almost sound human but
>> fail in a subtle but unsettling way that's hard to qualify, and until
>> we get over that hurdle, I'll take the obviously robotic monotone over
>> the almost, but not quite, passes for a human reader voices for daily
>> work.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
>
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

