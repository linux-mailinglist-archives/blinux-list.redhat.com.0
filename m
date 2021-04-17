Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EFA7D36313E
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 18:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618677736;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MBZ13l8RlsH2tw/+agZZU8C/ox5meLib02W+KAMGRqg=;
	b=RJBek1yYoKkvTdmwbcH3COSRYnnld574NlsFLc5s1tWqpXnhgSWaBLTXVEDHfvRN2otqIr
	HykCvSom4uw6pkqf46Qx/HYX0Uf8MtYk1hdL0G+vHygxTjqAbatECWIGzYGzHHQZAPdHqP
	+/i4Ch6WEiODH/YRShJvQzxK6nKP6Y8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-462-WrzkdsuaMReS_j1SqBgItQ-1; Sat, 17 Apr 2021 12:42:14 -0400
X-MC-Unique: WrzkdsuaMReS_j1SqBgItQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6610683DD20;
	Sat, 17 Apr 2021 16:42:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1D8C37DD;
	Sat, 17 Apr 2021 16:42:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CE1023809;
	Sat, 17 Apr 2021 16:42:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HGalm0001833 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 12:36:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 788662095BAE; Sat, 17 Apr 2021 16:36:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7072C20824FE
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 16:36:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03FE4802C19
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 16:36:42 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-65-vCgqfu4xOCmH5Yb8Rn6BGA-1; Sat, 17 Apr 2021 12:36:39 -0400
X-MC-Unique: vCgqfu4xOCmH5Yb8Rn6BGA-1
Received: by mail-wm1-f52.google.com with SMTP id
	o21-20020a1c4d150000b029012e52898006so6110717wmh.0
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 09:36:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=NzgCSnMZnsC6Wa4EgXR6C1le7gMDu6KRFjdadWC7r9A=;
	b=o063E9qpKURYq3bNcMuLclikaUjlgdBiMlAeGWkXyQ+2rxXkUGvRhLbmm8+LQCj5f+
	bBR529jYRLrVGCOb7olSUgEBxsyjaYiaX744m8hKogaWr/0q2xP5RBw8CP8x6CBY1WhH
	pj7NoNnw3+qQQwD6IUzTGXopFw97rwBHfSvvy20Ikwpci0QA+DeVlNsBY94Hbwg6zOEC
	20102sGPKpvjLpwyX34e7dwHtjn4fP8B88HDQq52XTBMpJTxTyxhjnoe88Qj/F1rvltb
	DtSu9Nw13h4L0K3B8zIDjcefhskQ/rFm0+fEzOCvvniijj0Z5apNtItnMy+lcGVMURJW
	G7fA==
X-Gm-Message-State: AOAM5327QP2clq3hZ5lgyoFjFW96WOrzhoov3fhI2SkkS31inp1ON7aN
	o7PgTqlI08zuGTbNfWH375SwWzXWscg=
X-Google-Smtp-Source: ABdhPJzmIOmMbygGhK87vKuPIYD4C+DPasEatNCrt/lKCiJKjt38QpTzUU/+1VzEIgHusJTWlrmNpg==
X-Received: by 2002:a1c:6382:: with SMTP id
	x124mr13320632wmb.142.1618677398455; 
	Sat, 17 Apr 2021 09:36:38 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id
	186sm13333927wme.10.2021.04.17.09.36.37 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 17 Apr 2021 09:36:37 -0700 (PDT)
Subject: Re: SL's response to all inquiries re: Readspeaker voices
To: blinux-list@redhat.com
References: <alpine.OSX.2.23.453.2104171212160.2805@dans-mac-mini-2.home>
Message-ID: <5d9cd0bb-75bd-b1cf-c600-eab31382cffd@gmail.com>
Date: Sat, 17 Apr 2021 17:36:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <alpine.OSX.2.23.453.2104171212160.2805@dans-mac-mini-2.home>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm interested, having heard the demos. They do sound more natural to me 
than espeak-NG really, but how responsive are they vs Espeak-NG?

On 17/04/2021 17:22, Linux for blind general discussion wrote:
> I'm using voiceover in terminal now to write this.  I constructed a screen reader using the so called key commanders in combination with
> existing voiceover key commands.
>
> One main reason I don't use linux is the absence of easily intelligible voices, of which the mac and voiceover have many built in; including
> in terminal which is a flavor of unix..
>
> On Fri, 16 Apr 2021, Linux for blind general discussion wrote:
>
>> Further, I believe?, that tdsr is recommended for the mac terminal, since
>> voiceover cannot run effortlessly in terminal.
>> Mac is a Unix based system, like Linux.
>>
>>
>> On Fri, 16 Apr 2021, Linux for blind general discussion wrote:
>>
>>> If you made this synthesizer compatible with Speech Dispatcher then it
>>> could be compatible with any screen reader that used Speech Dispatcher.  I
>>> know that Orca and TDSR use Speech Dispatcher and others are probably able
>>> to use it as well.
>>>
>>> On Fri, Apr 16, 2021, 5:56 PM Linux for blind general discussion <
>>> blinux-list@redhat.com> wrote:
>>>
>>>> Hi all,
>>>>
>>>> Thanks for yourinterest and for all your good questions. It seems like
>>>> maybe some ofyou missed the link to the demos that was posted in the first
>>>> email.So for those who didn't see it, I am pasting it again here for you
>>>> toclick and listen. I'm putting the link first so you don't miss it.But
>>>> then, under that, I will endeavor to answer each of yourquestions as best I
>>>> can. So please continue reading after clickingthe link:
>>>>
>>>>
>>>>
>>>>
>>>> https://www.readspeaker.com/text-to-speech-demo/
>>>>
>>>>
>>>>
>>>>
>>>> To Rudy:
>>>>
>>>> Hopefully the linkin this email will give you an idea of how the voices
>>>> sound. When youclick it, it brings you to Readspeaker's official demo page
>>>> where youcan hear short samples of the voices available.
> If they are not
>>>> longenough for you to get a sense of the flow with longer text, you
>>>> canemail me for some samples in mp3 format. I tried to include my
>>>> emailbefore but it just blanks out the punctuation. So I will spell outthe
>>>> punctuation, and you will know to just insert the actual symbolsinstead. My
>>>> email is:
>>>>
>>>> software dotliberators at slmail dot me
>>>>
>>>> To A:
>>>>
>>>> If there is enoughinterest in this project to make it official, then the
>>>> goal is tomake Readspeakr  voices available to any of the most widely
>>>> usedDistros that have Orca or Speakup. Similar to how Voxin offers
>>>> Nuancevoices that you can install on most Distros with screenreaders.
>>>>
>>>> Yes, Readspeakerdoes offer both Swedish and Finnish along with many other
>>>> languages.
>>>>
>>>> Please click on thelink I included at the top of this email. On that page,
>>>> you will seea combo box to select your language for a demo. Scroll up in
>>>> thatcombo box and you will find Swedish and Finnish, then, once youselect
>>>> the language, tab down, and press enter on "listen".
>>>>
>>>> To the person whosuggested further platforms of usage such as Mac
>>>> terminals and Linuxon Windows, I appreciate the suggestion and this is
>>>> certainlysomething to look into.
>>>>
>>>> Personally I onlyhave experience with stand alone Windows, and stand alone
>>>> Linux.
>>>>
>>>> I really don't knowanything about the workings of Mac OS, but if a Mac
>>>> terminal runs onLinux compatible software, then it might be possible to
>>>> incorporateReadspeaker voices. However, with Mac, I'm assuming you're
>>>> dealingwith Apple and whatever protocols they have as a company to
>>>> approveof third party TTS providers. That is an avenue that I am really
>>>> notfamiliar with, but if anyone hear is a Mac afficionado withexperience
>>>> with Apple's protocols for approving third partyproviders, please feel free
>>>> to share that knowledge with me.
>>>>
>>>>   Mac and Windowsalready have so many natural sounding speech options
>>>> available thatI'm really focusing on trying to bring Readspeaker to Linux
>>>> inparticular, to give Linux users more choices for natural soundingspeech.
>>>> So if Apple already provides natural voices for the Macterminal, then it
>>>> may be better to focus solely on stand alone Linuxsystems.
>>>>
>>>>   However, it seemsthat the Linux on Windows that you speak of, should be
>>>> able toutilize these voices if its essentially still Linux software.
>>>>
>>>> I'm still open toany ideas about Mac terminal and Linux on Windows, its
>>>> just that Idon't have any experience with that, I don't know if there
>>>> arealready existing natural voices for them seeing as it seems to be Linux
>>>> software but running on top of Mac or Windows, but any input on that would
>>>> be great.
>>>>
>>>>   To Chime:
>>>>
>>>> We might be able torequest Heather if we get enough interest to get this
>>>> project up andgoing. Although the only place where I have seen Heather
>>>> utilized isin their web-reader solutions which are a bit different from
>>>> theirLinux compatible SDK. They do offer the option to have
>>>> customizedvoices though, so we might be able to request Heather if we
>>>> reallywant that. Personally, for US English I like the Julie voice which
>>>> isavailable to demo on the Readspeaker site, as well as the Sophievoice
>>>> which is what they used to record that mp3 file for Consoleusers that you
>>>> listened to.
>>>>
>>>> Let me know if youever end up finding any samples of the Voxygen Hypra
>>>> voices, I'd liketo know what they sound like in English and I havn't found
>>>> any Hyprasamples either.
>>>>
>>>> To Debin Prater:
>>>>
>>>> Thanks for theinput.
>>>>
>>>> I'm a beginnerso I don't have experience with the Emacspeak servers you
>>>> speak of.But if we move forward with a project with Readspeaker, the
>>>> goalwould be to offer the voices for the most widely used Distros
>>>> thatinclude Orca or Speakup for people to install the voices and use on
>>>> their localsystem.
>>>>
>>>> I really havn'tsmoothed out the finite details on that as to how exactly
>>>> the interface making Readspeaker available for Linux screenreaders would
>>>> work in terms of the technicalities. For example, how to make it available
>>>> both for Debian based systems and for something like Arch, just throwing
>>>> out examples. But Voxin has done it with Nuance, so it should be doable
>>>> with Readspeaker and the guys at Readspeaker are apparently willing to
>>>> consider developing an interface to make it possible, as long as there is
>>>> enough interest in the community, and so long  as it would be commercially
>>>> viable for them.
>>>>
>>>> My first step is to simply find out ifthere is any interest, which, it
>>>> seems like there is a small handful here on this list that would be
>>>> interested.
>>>>
>>>> Other Consolereaders might be considered as well, and would be mentioned
>>>> in an officialsurvey before actually getting started on the project, to
>>>> determinewhat is the most popular Console screenreader for Linux users
>>>> andstart with that. Hopefully offering voices for Orca graphical, and
>>>> atleast the most widely used Console reader. I know there's quite a
>>>> fewConsole readers out there, but we'd have to really decide where
>>>> thedevelopers at Readspeaker would focus their time and effort intomaking
>>>> their Linux compatible interface to bring Readspeaker voicesto
>>>> screenreaders.
>>>>
>>>>
>>>>   I think startingwith Orca for Graphical, and then one Console Reader,
>>>> would be good.
>>>>
>>>> Havn't even gotteninto Emacs yet, but if that uses a seperate screenreader
>>>> and iswidely used, then that would be something to consider including
>>>> ifpossible. I'm just trying to cover the basics of something forgraphical,
>>>> and something for console. As far as I know, isn't Emacslike a text editor
>>>> and used for programming etc? Do people also useit like a screenreader to
>>>> access daily tasks on Linux instead of OrcaOr Espeakup?
>>>>
>>>> To Didier:
>>>>
>>>> Wow, didn't know youalso reached out to Readspeaker as an Ivona
>>>> distributor back in theday. Good to know. Its too bad that something can't
>>>> be done to bringIvona to Linux seeing as one of their original pages said
>>>> that anIvona SDK was compatible. But when I asked them, I got the
>>>> sameresponse that Ivona is linked with Amazon now so Ivona is not an option.
>>>>
>>>>   I'm not the only oneto inquire. You asked them years before me, and I
>>>> wouldn't besurprised if we're not the only ones to ask for Ivona.
>>>> Quitefrustrating that Ivona is not more open to collaborating
>>>> foraccessibility solutions on multiple platforms. Even from a
>>>> strictlybusiness standpoint, Ivona could make additional proffits from
>>>> selling solutions to Linux users. Oh well.
>>>>
>>>> As for theReadspeaker brand voices, when I contacted them, they did say
>>>> thatthey usually only sell to businesses, not individuals; but they
>>>> saidthat in this case, they would be willing to consider developing
>>>> aninterface to bring Readspeaker voices to Linux screenreaders providedthat
>>>> there is enough interest in the community, and that it would becommercially
>>>> viable. Thats why I'm trying to get a baseline ofinterest, to see if its
>>>> worthwhile to try to move forward with this.
>>>>
>>>> To Francisco:
>>>>
>>>> Yes, I totally agreewith you. Thats why I started this endeavor, first
>>>> trying to bringIvona to Linux but that didn't work out. Now trying to
>>>> bringReadspeaker's own brand of voices  to Linux. I too want to see
>>>> morenatural sounding voices become available to Linux. Allowing Linuxusers
>>>> to have a similar range of natural TTS choices as Windowsusers, and in
>>>> return, more people may decide to give Linux a try.
>>>>
>>>> Thanks to all forthe inquiries, hope I was able to answer at least some of
>>>> yourquestions, feel free to keep asking questions or sharing ideas, andfor
>>>> those of you who missed the link the first time around, please dotry
>>>> listening to the demos available on Readspeaker's web page.
>>>>
>>>> Thanks,
>>>>
>>>> SL
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

