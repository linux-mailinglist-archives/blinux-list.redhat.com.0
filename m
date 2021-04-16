Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 25EF536282F
	for <lists+blinux-list@lfdr.de>; Fri, 16 Apr 2021 21:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618599663;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=4NN13BRN+9RwAjFdKYy4iKML2cUNQJCi04Tv+7RXTEM=;
	b=i9IuBnAI2W3F/DHlnxSLZAMko+AF7/aBLiWOfTf8yViyZscOYxH6Q+AoRO9fZXWfKIfeHA
	6qHjsJEXcV35R5IkSbRMcYxAT5Nl2tHpQ+3AS0ye5GMhWNUCfb3FozhixrR+BR+31sQFqx
	2ppLejZDSpGHfNOb/K9jVokCeH46mVo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-475-HTeYoHJ2MeecxInzVSIBbA-1; Fri, 16 Apr 2021 15:01:01 -0400
X-MC-Unique: HTeYoHJ2MeecxInzVSIBbA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A930D1008062;
	Fri, 16 Apr 2021 19:00:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 126B95C3F8;
	Fri, 16 Apr 2021 19:00:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 32A331806D0F;
	Fri, 16 Apr 2021 19:00:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13GJ0elV027197 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 15:00:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DCFDD10379A; Fri, 16 Apr 2021 19:00:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D79DC10340C
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 19:00:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F1CB80231D
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 19:00:38 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-470-5OrpZc4NNDOPvqv6s8nVzQ-1; Fri, 16 Apr 2021 15:00:36 -0400
X-MC-Unique: 5OrpZc4NNDOPvqv6s8nVzQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 0D49C621C46; Fri, 16 Apr 2021 19:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 075D4621C36
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 15:00:35 -0400 (EDT)
Date: Fri, 16 Apr 2021 15:00:34 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Would you be interested in having natural sounding TTS voices
	by Readspeaker on Linux? demo link included
In-Reply-To: <PH0PR14MB4296C45B393DC59DA08B8B64C84C9@PH0PR14MB4296.namprd14.prod.outlook.com>
Message-ID: <Pine.LNX.4.64.2104161454040.2346012@server2.shellworld.net>
References: <161854841366.7.5044640704122711519.5900574@slmail.me>
	<a292b20a-bcd7-0b81-b44b-2721e1453e6d@debian.org>
	<Pine.LNX.4.64.2104161344520.2344535@server2.shellworld.net>
	<PH0PR14MB4296C45B393DC59DA08B8B64C84C9@PH0PR14MB4296.namprd14.prod.outlook.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-452308652-1618599634=:2346012"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-452308652-1618599634=:2346012
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

I experience an auditory processing disorder caused by a vascular accident=
=20
occurring during an eye surgery where I was given too much anesthetic=20
impacting a part of my brain that manages verbal  communication.  as a=20
result, speech in certain frequency ranges can stimulate my brain's dizzy=
=20
centres, impact how I speak, and if prolonged, can have other=20
consequences.
Happens with  more than just speech, some headphones, even cordless phones=
=20
and=20
cell models cause the same issue when used even if synthesized speech is=20
not involved.



On Fri, 16 Apr 2021, Linux for blind general discussion wrote:

> I'm curious, how are the eSpeak voices physically dangerous?
>
> --
> Christopher (AKA CJ)
> Chaltain at Outlook
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On =
Behalf Of Linux for blind general discussion
> Sent: Friday, April 16, 2021 12:52 PM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Would you be interested in having natural sounding TTS voice=
s by Readspeaker on Linux? demo link included
>
> Speaking to the remind below.
> what interests me here is the possibility that, if made available, one co=
uld  select these voices at the start  or near the start of installing Linu=
x.
> for me this is critical, because as it stands, the default Linux voices a=
re  potentially physically dangerous.
> So, knowing that a choice I can safely use is an option might be the diff=
erence between not using Linux in a stand alone form at all,  and using the=
 platform.
> So, yes I am interested.
> I believe though you  might wish to expand your research sample, other po=
pulations use screen readers,  and if the voices work in say terminal form,=
 they may be viable options for mac terminal users, perhaps even the new Li=
nux incorporated in some windows systems.
>
>
>
> On Fri, 16 Apr 2021, Linux for blind general discussion wrote:
>
>> Hi,
>> First, small remind: so far 2 high quality are available for Linux
>> (non-free): Voxygen (via Hypra) and Nuance (via Voxin). These new
>> voices seem interesting to me. Linux needs high quality voices (to be
>> honest I am not fully convinced by Voxygen in other languages than
>> French). The medium price is about 20 euros per voice in the existing pr=
oducts.
>>
>> So would be happy to have this new product.
>>
>> regards
>>
>>
>>
>> Jean-Philippe MENGUAL
>> Debian Developer non uploading
>> Community team member
>> Accessibility team member
>> debian-l10n-french team member
>> President of Debian France non-profit organization Le 16/04/2021 =C3=A0
>> 06:46, Linux for blind general discussion a =C3=A9crit=C2=A0:
>>>
>>>  Hi everyone,
>>>  This is SL.
>>>  Some of you may remember that lastmonth, Chime and I were trying to
>>> find a  way to legally port Ivonavoices to Linux.
>>>  We have been in communications withReadspeaker, a company which
>>> creates  its own quality TTS voices andis also an official distributor =
of Ivona.
>>>  Unfortunately, due torestrictions and incompatibility, we are unable
>>> to  bring Ivona toLinux at this time.
>>>  However, Readspeaker is willing to considerthe possibility of
>>> working with  us to bring their own high fidelityReadspeaker brand
>>> voices to Linux as a  TTS option to use with Linuxscreenreaders if
>>> there is enough interest in  the community and if theventure would be c=
ommercially viable.
>>>  Right now, we are onlysending this to the Blinux list, so please do
>>> not  forward it, as thisis not an official survey.
>>>  If there is confirmed interest withinthe Blinux list as a baseline
>>> sample  group, then we would send anofficial survey which would be
>>> reviewed by  Readspeaker beforehand,and widely dispersed amongst
>>> multiple blind  Linux/tech groups to gageinterest, pricing, language
>>> preferences,  screenreader preferencesetc.
>>>  Right now, we simply want to know if anyone else on thislist would
>>> want to  have Readspeaker voices to use as a TTS option forLinux
>>> screenreaders  before engaging in any further outreachefforts.
>>>  We first need to know that we are not the only ones whothink it
>>> would be  worth it to have Readspeaker's high fidelity voiceson Linux.
>>>  If there is enough interest in this potential project,it would
>>> likely be a  model similar to Voxin, where the consumer paysa
>>> yet-to-be-determined fee  to have their choice of Readspeaker voicefor =
their Linux screenreader.
>>>  We can refine those particulardetails later.
>>>  For now, we just want to know if anyone on thisBlinux list would be
>>> interested in having Readspeaker voices on Linuxfor a more natural
>>> sounding TTS experience.
>>>  If so, then we wouldknow whether to confirm interest with
>>> Readspeaker and  work on anofficial survey which would help us
>>> determine price range and  whichlanguages to focus on etc.
>>>  So, in this email we are including adirect link where you can listen
>>> to  demos of Readspeaker voices andwe ask that you let us know if you
>>> would be  interested in havingReadspeaker TTS on Linux.
>>>  Please abide by Readspeaker's termsand conditions which prohibit the
>>> recording of said demos.
>>>  Inthis email there is a direct link to Readspeaker's official demo
>>> pageon  their website which features a variety of voices to sample.
>>> Justselect  which voice you want to hear in the combo box, then press"l=
isten".
>>>  This link is preferable as you can accessmultiple voices which can
>>> be  included in a Linux compatibleSDK.
>>>   =C2=A0However, you will need to use Firefox in Graphical toaccess it.=
 If you
>>>   have the ability to use graphical Firefox, pleasedo as this will give=
 you
>>>   the largest variety of choices.
>>>  Weunderstand that some users may be accustomed to only using
>>> Consolebrowsers, and some multi media websites that work just fine
>>> withGraphical Firefox will not render on Lynx.
>>>  If you areexclusively a Console user and cannot use Graphical
>>> Firefox to  access the link below in this email,Readspeaker sent us
>>> two mp3 files, one  with a sample of a US Englishvoice, and the other
>>> with a sample of a UK  English voice for Consoleusers to listen to if
>>> they cannot switch to  Graphical and use Firefoxto access
>>> Readspeaker's official demo page on  their website.
>>>
>>>  It is ourunderstanding that mp3 files cannot be posted to this
>>> mailinglist. (If this is incorrect, I can send a second email with
>>> the mp3  files if mp3 files are allowed on the Blinux list).
>>> Otherwise, if anyone  on this list is exclusively a Console user and
>>> cannotaccess the link to  Readspeaker's demo page included in this
>>> message,please feel free to email  me, SL, at my email address which
>>> I willpost at the bottom of this message  and I can send the two mp3 fi=
lesto you.
>>>
>>>
>>>  However, the mp3files are only one sample of a US English voice, and
>>> one  sample of aUK English voice. They are created for Console users
>>> who  cannotaccess Readspeaker's official demo page which has the full
>>> variety  ofvoices.
>>>
>>>    Even if you are a graphical user, you may still want to listen tothe=
 two
>>>    mp3 files because even though they are only a sample of two select
>>>    voices as compared to the variety on the demo web page, they read a =
very
>>>    long sample of text and itcan help you get a feel for the flow. So
>>>    anyone who wants to listento the mp3 files, just email me.
>>>
>>>  If you have theability to use Graphical Firefox on your setup,
>>> please use  Graphicalto click on the direct link to Readspeaker's
>>> demo page included  belowin this email, which offers the full variety
>>> of voices, multiple  options for US English, multiple options for
>>> UKEnglish, as well as other  languages. If you would like to hear
>>> longertext read in two select voices,  email me for the mp3 files.
>>>  Graphicalusers please click this link to Readspeaker's official demo
>>> web  page,select any voice from the combobox list and press"listen":
>>>
>>>  https://www.readspeaker.com/text-to-speech-demo/
>>>
>>>  Consoleusers, if you cannot access Readspeaker's official demo page
>>> andwould like to listen to two mp3 samples, also to graphical users
>>> whowould just like to listen to the mp3 files which read a rather
>>> longpiece of text where you can really get acquainted with the flow,
>>> feelfree to contact SL at:
>>>
>>>
>>>  software.liberators@slmail.me
>>>
>>>
>>>
>>>  Thanks for your timeand we look forward to your feedback,  SL and
>>> Chime  _______________________________________________
>>>  Blinux-list mailing list
>>>  Blinux-list@redhat.com
>>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>
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
---1404930036-452308652-1618599634=:2346012
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-452308652-1618599634=:2346012--

