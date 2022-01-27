Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 222E749E93E
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 18:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643305419;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=F1jN+q84EgUkqSNU5zv4R6LiIiVbLdFGzX/kd/+nfPQ=;
	b=hkVgL6XN357JB1uEKNtqZj6wM5DwOPAGyG+wT3G02UNTiiJD/oqZzJYzkiwNJ9XHFpx9Qo
	jmiISuSizxDW7sapQFR0ijuHVRsBiW0QTeiDhQmYvOuVz67vNL1yCnFdatvDiuoZr1pCKW
	q0IHN1vornxzUDZ8kQKxHYWtVh5GA+k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-652-zwzg4raCOuOD_VSxqhMi3w-1; Thu, 27 Jan 2022 12:43:35 -0500
X-MC-Unique: zwzg4raCOuOD_VSxqhMi3w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4FCF1091DA0;
	Thu, 27 Jan 2022 17:43:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBF8C7A44E;
	Thu, 27 Jan 2022 17:43:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4F5271806D03;
	Thu, 27 Jan 2022 17:43:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20RHhIPP023616 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 12:43:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 692EF40885BA; Thu, 27 Jan 2022 17:43:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64E6640885BD
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 17:43:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4852C2B699F2
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 17:43:18 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
	[209.85.214.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-10-iF5k-HxLNSytF44l0_txRg-1; Thu, 27 Jan 2022 12:43:16 -0500
X-MC-Unique: iF5k-HxLNSytF44l0_txRg-1
Received: by mail-pl1-f176.google.com with SMTP id z5so3100491plg.8
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 09:43:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=JUbbgTMRK00vGtHEsT0DDap5e2hK2XG0hTY+o6s8JK4=;
	b=CJBEExbmNwLJpk4ZVyYDQJD2IP34B71F/sGGAmioyAQL3HBe11tppw6qBCz7sjrVS4
	cVcQO+a1/BI1FUuCnf6R6eQIksZGM2sjSja51sW0+nXWfzhYgnHJTh2tpjncz5AbJFB6
	1kKYiQaN7BxgwDI3oLxZBz9A716sVPGJwWk0cka8YGcWa5gKz3uIekV+Iij20DGIc3O9
	61LslEhapFUS7Qh5tetAaiehkO2kDOoy8PPieiJulQhl+m9YZ0By2DwBgApnEyF6FLwp
	cpnk6+p9v8mwzRH4yG35zyeSYqn6s4c9GICxNR9kernXIQEcyCSOl8indS/8kezFtb8i
	Etbg==
X-Gm-Message-State: AOAM533joaXASC1QcdjBb6xPLfV4AWD37BgMrcRggnp/tnrDthr8/1RE
	CEKqus8pqkW9yXjLC3QnJdllJDeMpTjxvdl2RUW5BIpm
X-Google-Smtp-Source: ABdhPJwwDgbFol7HbBtKWHBVNotT57k9Ojc+F6AovBxdSg3txcSIxCxDuwleNC8zgdymMUMcgeUSBcboxj9BrgbDnuc=
X-Received: by 2002:a17:90a:cc07:: with SMTP id
	b7mr5229094pju.43.1643305395014; 
	Thu, 27 Jan 2022 09:43:15 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:b655:0:0:0:0 with HTTP; Thu, 27 Jan 2022 09:43:14
	-0800 (PST)
In-Reply-To: <65b0122b-fda4-8521-d8b7-4231784b0e55@verizon.net>
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
	<Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
	<65b0122b-fda4-8521-d8b7-4231784b0e55@verizon.net>
Date: Thu, 27 Jan 2022 11:43:14 -0600
Message-ID: <CABKqQvEs2vow3jFJMs7T3XyXDozZRPRxA+HOWEtMcbt0WV1uFg@mail.gmail.com>
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Rynhardt,

The file
~/.config/speech-dispatcher/modules/espeak-ng.conf does not exist on
my system. There is no .config folder in my home directory either. Do
I have to create all this stuff?! Thanks.

Amanda[0]

On 1/27/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Greetings!
>
>
> I agree with much of what others have written, but I guess I'll pipe up
> a little.
>
>
> I became interested in Linux (or GNU/Linux, as some insist on) for two
> reasons, back in the late 1990's.  Software freedom was the first.  The
> second was that it had real text terminals, which I was used to with
> DOS.  The first reason is vital to my thinking, and the second reason
> remains very important, though I use the gui more than the command line
> most days.
>
>
> I was a programmer in those days, and I hope to do it again for pay some
> day.  One of my continuous and troubling tasks was to get the same
> access to the mainframe computers I worked on as I'd had using DOS.  It
> never happened, though I can't say whether it has happened for somebody
> else since then.  I had to use JAWS during those last years of the job.
> Although JAWS scripting helped somewhat, it seemed to me that (1) JAWS
> needed more basic customizing to do what I needed and (2) this wasn't
> nearly as important to the company as it was to me.  I figured that if
> JAWS had been free software, meaning free as in freedom rather than free
> as in beer, one or more folks who knew more than I did could help me do
> the customizing:  the code would have been at hand.
>
>
> My Linux journey has been long and often quite rocky.  My ignorance
> remains vast, partly because of my own inadequacies and partly because I
> find documentation often sparse or hard to follow.  Even so, I'm much
> more able to fix things myself than I can with our Windows machines.
> Yes, I use Windows most days, mostly because my wife doesn't want to
> abandon it.  (She likes the speech output better, and I agree.  She also
> doubts the wisdom of using software that few if any of the people she
> shares documents with are using, a view I think is less warranted.)  But
> I dare to hope that if I can get her Voxin or something of the sort
> working, maybe in time she'll be willing to drop Windows into the abyss.
> My reasons are practical as well as principled, but I've written long
> enough that I'll leave it at that.
>
>
> Best!
>
> Al
>
>
>
>
> On 1/26/22 21:19, Linux for blind general discussion wrote:
>> Okay then,
>> This illustrates another point which got touched  on in a different
>> thread as well.
>> The, you must be prepared to do programming if you are going to use
>> Linux fluidly, if at all.
>> On an entirely different list I am on, folks were complaining about
>> windows 10 and windows 11, because of the changes.
>> Computers are increasingly such critical parts of our lives, banking
>> shopping, even voting, that many on the list spoke of just wanting to
>> sit down at their computer and have things work...so they still use
>> older editions of things like Windows  XP?  and Windows  7.
>> I admit that is part of why the out of the box concept discussed here
>> where Access is concerned seems a bit, speaking personally, like a
>> misconception.
>> Few on the list I referenced above are using adaptive tools, and some
>> of them are scientists, with many not wanting configuring to be a part
>> of their computer lives.
>>  So, why do you use Linux?
>> what makes it worth the time the training and the trial  / error?
>> Oh, and is it your only operating system?
>> Want to ask the latter because I know someone who indeed uses Linux
>> exclusively, vowing never to touch windows again.
>> Please feel free to express in detail, never mind my personal
>> situation, because the journalist in me is interested as well.
>> Karen
>>
>>
>>
>> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>>
>>> Fair point.
>>>
>>> As regards the keyboard, I agree with the main keyboard philosophy, and
>>> in fact speakup does allow you to customize it to use the main
>>> keyboard instead of the
>>> keypad. However, it took me a while to customize it to my liking and
>>> required quite a bit of study and generating of personal keymaps, so
>>> might not be of any interest to those who aren't comfortable making
>>> some low level modifications.
>>>
>>> On Wed, Jan 26, 2022 at 08:16:08PM -0500, Linux for blind general
>>> discussion wrote:
>>>> Which may illustrate my point.
>>>> I can use those without changing what I have now.
>>>> Speaking personally if Linux does not provide equal access to both
>>>> hardware
>>>> and  software speech, in both its command line and graphical
>>>> platforms, I am
>>>> unsure  just where the advantage is for me personally.
>>>> One thing I personally disliked with speakup, at least the times I
>>>> tried it
>>>> years back was the need to remove my hands from the keyboard for many
>>>> things.
>>>> That may not hold true all the way around, but I am a solid typist
>>>> and do
>>>> not like having to remove may hands, say use the number pad, if I
>>>> want as I
>>>> work content.
>>>> That is me though, which is one magical thing about personal computers.
>>>> everyone brings their desires and usage goals to their machines.
>>>> Which to my mind again personally means Linux should, if it actually
>>>> can, be
>>>> flexible enough for all choices to work in it command line and
>>>> graphical.
>>>> Karen
>>>>
>>>>
>>>>
>>>> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>>>>
>>>>> I don't use Firefox. I use a text based browser, either lynx, w3m,
>>>>> or links (the chain) depending.
>>>>>
>>>>> On Wed, Jan 26, 2022 at 07:48:42PM -0500, Linux for blind general
>>>>> discussion wrote:
>>>>>> Rudy,
>>>>>> As an example, may I ask what edition  of  Firefox you are running
>>>>>> with that
>>>>>> dectalk Express?
>>>>>> Karen
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>>>>>>
>>>>>>> Karen,
>>>>>>> I use Linux speakup with a Dectalk express speech synthesizer.
>>>>>>> And I believe speakup also handles the
>>>>>>> slot card version of dectalk though you'll need a desktop PC that
>>>>>>> supports it, so the software is there.
>>>>>>>
>>>>>>>
>>>>>>> Rudy
>>>>>>>
>>>>>>> On Wed, Jan 26, 2022 at 05:22:35PM -0500, Linux for blind general
>>>>>>> discussion wrote:
>>>>>>>> Kyle,
>>>>>>>> i do not consider my hardware decktalk provided via my reading
>>>>>>>> edge to be an
>>>>>>>> example of text to speech.
>>>>>>>> By definition, and there are many, the term, which refers to taking
>>>>>>>> information in text format  and  rendering it aloud does not,
>>>>>>>> speaking
>>>>>>>> personally,  equal pronunciation ease.
>>>>>>>> In fact one theory about this has to do with preserving the
>>>>>>>> audiobook
>>>>>>>> market.
>>>>>>>> granted, as  was pointed out in a thread some time ago, I am not
>>>>>>>> likely to
>>>>>>>> learn about Linux screen readers, no driver exists for my
>>>>>>>> hardware speech,
>>>>>>>> and software synthesizer sources  currently do a number on my
>>>>>>>> brain.
>>>>>>>> Karen
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> On Wed, 26 Jan 2022, Linux for blind general discussion wrote:
>>>>>>>>
>>>>>>>>> That being said, the audiophile in me cannot resist pointing
>>>>>>>>> out that
>>>>>>>>> pronunciation abilities of tts are of far less quality than those
>>>>>>>>> provided by many actual screen readers, at least the ones I have
>>>>>>>>> used...which???? does not include any for Linux.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> That being said, the technofile in me cannot resist pointing
>>>>>>>>> out the
>>>>>>>>> fact that every screen reader for every OS uses nothing but TTS
>>>>>>>>> technology to read the screen. Well, I guess BeMyEyes doesn't,
>>>>>>>>> but it's
>>>>>>>>> not exactly a screen reader, unless you need the volunteer to
>>>>>>>>> read a
>>>>>>>>> screen for you.
>>>>>>>>>
>>>>>>>>> ~ Kyle
>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>>> Blinux-list mailing list
>>>>>>>>> Blinux-list@redhat.com
>>>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>>>>
>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> Blinux-list mailing list
>>>>>>>> Blinux-list@redhat.com
>>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> Rudy Vener
>>>>>>> Website: http://www.rudyvener.com
>>>>>>> Twitter: https://twitter.com/RudySalt
>>>>>>> The difference between truth and falsehood is that truth remains
>>>>>>> constant no matter which political party holds the majority.
>>>>>>>  - A. R. Vener
>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> Blinux-list mailing list
>>>>>>> Blinux-list@redhat.com
>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>>
>>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>>> --
>>>>> Rudy Vener
>>>>> Website: http://www.rudyvener.com
>>>>> Twitter: https://twitter.com/RudySalt
>>>>> The difference between truth and falsehood is that truth remains
>>>>> constant no matter which political party holds the majority.
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
>>> The difference between truth and falsehood is that truth remains
>>> constant no matter which political party holds the majority.
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
>>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

