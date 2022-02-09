Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A724AF450
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 15:44:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644417847;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=2GOLt3/znQEUUanis1X3D3KrnKTOlXfiCp9NtshusmI=;
	b=SrxRSeg7Rd8MW9Z+3UIrejQQXYSlE3NRo1KEBXcRM5vUkC5HN0cLsqr+QnS8asW+jhk/To
	mAatSQYOE0bxUnP01ZDd+zgaxAoQQMmsA4BRJlNrHaVFx8SFoOgRC9mRoeOcsVKm0TYfFX
	jbNtLXYbMzEWrw95y/NJK5Gxg087Ja8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-650-G8IAHR0IN42nF0LGXW52-A-1; Wed, 09 Feb 2022 09:44:03 -0500
X-MC-Unique: G8IAHR0IN42nF0LGXW52-A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D161D107B0EF;
	Wed,  9 Feb 2022 14:43:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D59D70D3F;
	Wed,  9 Feb 2022 14:43:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 77FEE1806D1C;
	Wed,  9 Feb 2022 14:43:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219Ef6De000757 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 09:41:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6DE99C08098; Wed,  9 Feb 2022 14:41:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A25BC080AD
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 14:41:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4CACE801E8D
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 14:41:06 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
	[209.85.216.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-546-7cOBvoNDM2K4GLFc4s2JuQ-1; Wed, 09 Feb 2022 09:41:04 -0500
X-MC-Unique: 7cOBvoNDM2K4GLFc4s2JuQ-1
Received: by mail-pj1-f42.google.com with SMTP id
	a11-20020a17090a740b00b001b8b506c42fso5381751pjg.0
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 06:41:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=r1oESFSHWkt0aTaPmAOk2h33shtp4RaOUFmP9iw/ST4=;
	b=bF2X6ND1a/YcgjYi2Jshhfybx/HUPz6+YcdfADPjFfx9PYyyf0Y/LwXBCo12wR2V0r
	6Cp+npZI4v3TUD5IYO6MY7XfIP7snbL7EvxVVTlzToNFLAS/WtT3Fr4SnLePM/EORDQc
	Dqsf+5dX8rZV/fWX0XQ1M6MyBH3bOtprIAVPDvPiws3WBn6b7J3Btbz+ZMkKO3WvgQpG
	McQFfGtQNZxa7R85qWna03k+uj+mS5PVELg3/6vhAswahFmP+0RpSGjqZhxyese+gexJ
	EW255iLHwfrrBwvrqWM6xMrTL0LUis9OSSMdH4fa1Q1mF/nKaSpbHLYzdovlIatt7nwV
	DR5Q==
X-Gm-Message-State: AOAM532MJ/xztwlFDn0WtOthkn+g3VM1FYOhf+Olb+anzIucQZswLCQq
	nkyw7ef9/RwVdWjoIX7BvU0LERcaT0M=
X-Google-Smtp-Source: ABdhPJyP50sPV1x0Lok3pLziY+zbMfQ2u5VgWRG/o0UA5q0OroVX/3mM3fRn4cPHVCeMMUO5IpjUXQ==
X-Received: by 2002:a17:90b:1954:: with SMTP id
	nk20mr2819324pjb.187.1644417662967; 
	Wed, 09 Feb 2022 06:41:02 -0800 (PST)
Received: from [192.168.0.108] (123-193-252-152.dynamic.kbronet.com.tw.
	[123.193.252.152]) by smtp.gmail.com with ESMTPSA id
	g11sm3268635pfv.158.2022.02.09.06.41.02 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Feb 2022 06:41:02 -0800 (PST)
Date: Wed, 9 Feb 2022 22:40:53 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Coqui TTS has blew my mind!
In-Reply-To: <284dd0af-4885-eff5-af4f-c421565e4772@protonmail.com>
Message-ID: <841ec7a9-39f-cd48-aa60-43b1ffa140d5@home.net>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<95b092c6-91fa-5c95-5ae5-f2418892d8e8@linux-a11y.org>
	<ef4109e0-e0a7-738a-a389-627329b6bac0@linux-a11y.org>
	<65db3283-530f-6961-d077-b43077f69b65@protonmail.com>
	<cbffc970-b88a-29d0-cbef-d8a84077201c@home.net>
	<284dd0af-4885-eff5-af4f-c421565e4772@protonmail.com>
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
Content-Type: multipart/mixed; boundary="8323328-1943081897-1644417662=:3728"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--8323328-1943081897-1644417662=:3728
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

Thank you very much! Sounds good!

On Wed, 9 Feb 2022, Linux for blind general discussion wrote:

> Date: Wed, 09 Feb 2022 14:23:42 +0000
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Coqui TTS has blew my mind!
> 
> Hi,
>
> There is a Chinese voice, you can use:
>
>
> $ tts --model_name tts_models/zh-CN/baker/tacotron2-DDC-GST --text ""
>
>
> Best regards
>
>
> Rastislav
>
>
> Dňa 9. 2. 2022 o 14:09 Linux for blind general discussion napísal(a):
>> Sorry! My English is not well. How to let it speakChinese? Please give a
>> sample of command-line. Thank you!
>>
>> On Wed, 9 Feb 2022, Linux for blind general discussion wrote:
>>
>>> Date: Wed, 09 Feb 2022 11:59:26 +0000
>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>> To: blinux-list@redhat.com
>>> Subject: Re: Coqui TTS has blew my mind!
>>>
>>> Hello Chrys,
>>>
>>> I think the problem is that Python 3.10 is not supported as of now.
>>>
>>> https://pypi.org/project/TTS/
>>>
>>>
>>> Though I'm not sure why. May be some of the backing libraries are not
>>> yet compatible, I remember this being a problem in the past with new
>>> releases of TensorFlow.
>>>
>>>
>>> Perhaps a virtual environment with lower Python version could do the trick?
>>>
>>>
>>> Best regards
>>>
>>>
>>> Rastislav
>>>
>>>
>>> Dňa 9. 2. 2022 o 11:48 Linux for blind general discussion napísal(a):
>>>> Howdy,
>>>>
>>>> just want to try coqui again (after a while) and just got this:
>>>> $ pip3 install TTS
>>>> Defaulting to user installation because normal site-packages is not
>>>> writeable
>>>> ERROR: Could not find a version that satisfies the requirement TTS
>>>> ERROR: No matching distribution found for TTS
>>>>
>>>> any ideas?
>>>>
>>>> cheers chrys
>>>>
>>>> Am 09.02.22 um 11:40 schrieb Linux for blind general discussion:
>>>>> Howdy Rastislav,
>>>>>
>>>>> yea Coqui is awsome. it was initial part of mozillas TTS and STT efforts.
>>>>> we really should have  an speech-dispatcher driver for that :).
>>>>>
>>>>> by the way, keep up your great work! Just take a look at the C#
>>>>> speech-dispatcher bindings.
>>>>>
>>>>> cheers chrys
>>>>>
>>>>> Am 09.02.22 um 11:25 schrieb Linux for blind general discussion:
>>>>>> Hello everyone,
>>>>>>
>>>>>> may be I've discovered America, but yesterday I mostly randomly came
>>>>>> across:
>>>>>>
>>>>>> https://erogol.github.io/ddc-samples/
>>>>>>
>>>>>>
>>>>>> And the voice has completely blew my mind!
>>>>>>
>>>>>> Like, I knew the TTS area has advanced significantly in the recent
>>>>>> years, but I thought the new neural voices are mostly closed features of
>>>>>> companies like Google or Microsoft.
>>>>>>
>>>>>> I had no idea we had something so beautiful on linux and completely
>>>>>> open-source!
>>>>>>
>>>>>>
>>>>>> Plus, it's not just the license that makes this so interesting, but also
>>>>>> the usability.
>>>>>>
>>>>>> There were the Deepmind papers even before and some open projects trying
>>>>>> to implement them, but the level of completeness and usability varied
>>>>>> significantly, even if a project was usable, getting it to work required
>>>>>> some effort (at least the projects I saw).
>>>>>>
>>>>>>
>>>>>> With Coqui, the situation is completely differrent.
>>>>>>
>>>>>> As the above mentioned blog says, all you need to do is:
>>>>>>
>>>>>>
>>>>>> $ pip3 install TTS
>>>>>>
>>>>>> $ tts --text "Hello, this is an experimental sentence."
>>>>>>
>>>>>>
>>>>>> And you have a synthesized result!
>>>>>>
>>>>>>
>>>>>> Or you can launch the server:
>>>>>>
>>>>>> $ tts-server
>>>>>>
>>>>>>
>>>>>> And play in the web browser. Note that the audio is sent only after it's
>>>>>> fully synthesized, so you'll need to wait a bit to listen it.
>>>>>>
>>>>>>
>>>>>> The only problematic part is the limit of decoder steps, which is set to
>>>>>> 500 by default.
>>>>>>
>>>>>> I'm not sure why did they put it so low, with this value, the TTS is
>>>>>> unable to speak longer sentences.
>>>>>>
>>>>>>
>>>>>> Fortunately, the fix is very easy. All I needed to do was to open
>>>>>> ~/.local/lib/python3.8/site-packages/TTS/tts/configs/tacotron_config.py
>>>>>>
>>>>>> and modify the line:
>>>>>>
>>>>>>         max_decoder_steps: int = 500
>>>>>>
>>>>>> to
>>>>>>
>>>>>>         max_decoder_steps: int = 0
>>>>>>
>>>>>>
>>>>>> which seems to disable the limit.
>>>>>>
>>>>>>
>>>>>> After this step, I can synthesize very long sentences, and the quality
>>>>>> is absolutely glamorous!
>>>>>>
>>>>>>
>>>>>> So I wanted to share. I may be actually the last person discoverying it
>>>>>> here, though I did not see it mentioned in TTS discussions on this list.
>>>>>>
>>>>>>
>>>>>> I've even thought about creating a speech dispatcher version of this. It
>>>>>> would certainly be doable, though I'm afraid what would the synthesis
>>>>>> sound like with the irregularities of navigation with a screenreader.
>>>>>> These voices are intended for reading longer texts and consistent
>>>>>> phrases, with punctuation, complete information etc.
>>>>>>
>>>>>> The intonation would probably get a bit weird with for example just a
>>>>>> half sentence, as happens when navigating a document or webpage line by
>>>>>> line.
>>>>>>
>>>>>>
>>>>>> Another limitation would be the one of speed. On my laptop, the realtime
>>>>>> factor (processing duration / audio length) is around 0.8, what means it
>>>>>> could handle real-time synthesis at the default speed without delays.
>>>>>>
>>>>>>
>>>>>> The situation would get more complicated with higher speeds, though.
>>>>>>
>>>>>> It wouldn't be impossible, but one would need a GPU to handle
>>>>>> significantly higher speech rates.
>>>>>>
>>>>>>
>>>>>> So I wonder.
>>>>>>
>>>>>>
>>>>>> But anyway, this definitely made my day. :)
>>>>>>
>>>>>>
>>>>>> Best regards
>>>>>>
>>>>>>
>>>>>> Rastislav
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list_______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
--8323328-1943081897-1644417662=:3728
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--8323328-1943081897-1644417662=:3728--

