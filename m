Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 292D3362AE4
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 00:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618611339;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6ritFIYzuaDov7Am+TeRgK5LMMwLbp5LZ4JokV5clJs=;
	b=D0qy/FOWRH7+/cMuIxJVIRxAKb59J+FAilkbZN+yvTkrzyVpX9TxkQYATOjM4cBnUJcGK3
	++eiFkyxpRuqvgMeNTeweDX6XmqQmJ1bhgO9OIBzoEv4Nc7/PjgO4MMHBuWdPFYL8yVb/M
	CW04Ik0u5cCTlnjz11rn7olynKX8Fa4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-aHpxxHO6Nqaa0G-rZgpi9g-1; Fri, 16 Apr 2021 18:15:37 -0400
X-MC-Unique: aHpxxHO6Nqaa0G-rZgpi9g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66F116415E;
	Fri, 16 Apr 2021 22:15:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A7F810023B2;
	Fri, 16 Apr 2021 22:15:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9971144A5E;
	Fri, 16 Apr 2021 22:15:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13GMFNnn011587 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 18:15:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 89FC420FE6D2; Fri, 16 Apr 2021 22:15:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8466220FE6D6
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 22:15:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90DF9801E8D
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 22:15:20 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-8-1wm32EIVNcSZkT50vflXIg-1; Fri, 16 Apr 2021 18:15:17 -0400
X-MC-Unique: 1wm32EIVNcSZkT50vflXIg-1
Received: by mail-pf1-f174.google.com with SMTP id c3so430645pfo.3
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 15:15:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=YBbp6jKqid4Oj4Qsmw7g4NEL3viFA2L+42obgIeeApA=;
	b=HYxPjI9Os7RDa69XnQjsIANMEGUpgPX2pR4Op8Mz5hUgd0KlLGOpVsxwwzyipB4ic8
	9txn0pxrzMCoDj7L1oCAkcKH5hQQIA1EDS8mOyjOeY1xUKmD2wSdS4Fp98o8HUWwslZY
	SXi7tQxp9EQSgQATM2Us6JqQlZVkNdlBvCmpzw5S2kE32FRNVZ3hpCI7Km0t4Chm0Yfv
	mZcWm2bPqQY7fOx/cVsIc700HTpxMfEt1l2a/9rsVGneItKGGuvMZDqBSdyIsRvkJQoH
	MgsiPKszfNiovZ9YDTfsMaakF8mp5M8JfDz5QHszXHNeRqYIIaWXfiHC6vm7daoG3chd
	6MMg==
X-Gm-Message-State: AOAM530/7N41AEW4dRAwqxg6HV2POma1O2iFJtlHva1IjK1suzgiclND
	dR+wOWQnDYTRIcdBkjHhI/z5VhTi6PAP/PQIuxjBoEbO
X-Google-Smtp-Source: ABdhPJzstLpsqFnKDDwRaGDar2CJ2V4Zs2WJfvGnx27aOU0TqJsalM2DngDMxPv61DcXYCskN/hUvu4g5t3SpxraE9U=
X-Received: by 2002:aa7:989c:0:b029:253:a2c7:9b29 with SMTP id
	r28-20020aa7989c0000b0290253a2c79b29mr9530250pfl.39.1618611316397;
	Fri, 16 Apr 2021 15:15:16 -0700 (PDT)
MIME-Version: 1.0
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
In-Reply-To: <161860978196.7.10178583994303054677.5934759@slmail.me>
Date: Fri, 16 Apr 2021 18:15:03 -0400
Message-ID: <CAGPwheCWWcnB4Z2ta0v-odFSizObwNtgud-QdOhLc6=a0fVjfA@mail.gmail.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
To: blinux-list@redhat.com
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you made this synthesizer compatible with Speech Dispatcher then it
could be compatible with any screen reader that used Speech Dispatcher.  I
know that Orca and TDSR use Speech Dispatcher and others are probably able
to use it as well.

On Fri, Apr 16, 2021, 5:56 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

>
> Hi all,
>
> Thanks for yourinterest and for all your good questions. It seems like
> maybe some ofyou missed the link to the demos that was posted in the first
> email.So for those who didn't see it, I am pasting it again here for you
> toclick and listen. I'm putting the link first so you don't miss it.But
> then, under that, I will endeavor to answer each of yourquestions as best I
> can. So please continue reading after clickingthe link:
>
>
>
>
> https://www.readspeaker.com/text-to-speech-demo/
>
>
>
>
> To Rudy:
>
> Hopefully the linkin this email will give you an idea of how the voices
> sound. When youclick it, it brings you to Readspeaker's official demo page
> where youcan hear short samples of the voices available. If they are not
> longenough for you to get a sense of the flow with longer text, you
> canemail me for some samples in mp3 format. I tried to include my
> emailbefore but it just blanks out the punctuation. So I will spell outthe
> punctuation, and you will know to just insert the actual symbolsinstead. My
> email is:
>
> software dotliberators at slmail dot me
>
> To A:
>
> If there is enoughinterest in this project to make it official, then the
> goal is tomake Readspeakr  voices available to any of the most widely
> usedDistros that have Orca or Speakup. Similar to how Voxin offers
> Nuancevoices that you can install on most Distros with screenreaders.
>
> Yes, Readspeakerdoes offer both Swedish and Finnish along with many other
> languages.
>
> Please click on thelink I included at the top of this email. On that page,
> you will seea combo box to select your language for a demo. Scroll up in
> thatcombo box and you will find Swedish and Finnish, then, once youselect
> the language, tab down, and press enter on "listen".
>
> To the person whosuggested further platforms of usage such as Mac
> terminals and Linuxon Windows, I appreciate the suggestion and this is
> certainlysomething to look into.
>
> Personally I onlyhave experience with stand alone Windows, and stand alone
> Linux.
>
> I really don't knowanything about the workings of Mac OS, but if a Mac
> terminal runs onLinux compatible software, then it might be possible to
> incorporateReadspeaker voices. However, with Mac, I'm assuming you're
> dealingwith Apple and whatever protocols they have as a company to
> approveof third party TTS providers. That is an avenue that I am really
> notfamiliar with, but if anyone hear is a Mac afficionado withexperience
> with Apple's protocols for approving third partyproviders, please feel free
> to share that knowledge with me.
>
>  Mac and Windowsalready have so many natural sounding speech options
> available thatI'm really focusing on trying to bring Readspeaker to Linux
> inparticular, to give Linux users more choices for natural soundingspeech.
> So if Apple already provides natural voices for the Macterminal, then it
> may be better to focus solely on stand alone Linuxsystems.
>
>  However, it seemsthat the Linux on Windows that you speak of, should be
> able toutilize these voices if its essentially still Linux software.
>
> I'm still open toany ideas about Mac terminal and Linux on Windows, its
> just that Idon't have any experience with that, I don't know if there
> arealready existing natural voices for them seeing as it seems to be Linux
> software but running on top of Mac or Windows, but any input on that would
> be great.
>
>  To Chime:
>
> We might be able torequest Heather if we get enough interest to get this
> project up andgoing. Although the only place where I have seen Heather
> utilized isin their web-reader solutions which are a bit different from
> theirLinux compatible SDK. They do offer the option to have
> customizedvoices though, so we might be able to request Heather if we
> reallywant that. Personally, for US English I like the Julie voice which
> isavailable to demo on the Readspeaker site, as well as the Sophievoice
> which is what they used to record that mp3 file for Consoleusers that you
> listened to.
>
> Let me know if youever end up finding any samples of the Voxygen Hypra
> voices, I'd liketo know what they sound like in English and I havn't found
> any Hyprasamples either.
>
> To Debin Prater:
>
> Thanks for theinput.
>
> I'm a beginnerso I don't have experience with the Emacspeak servers you
> speak of.But if we move forward with a project with Readspeaker, the
> goalwould be to offer the voices for the most widely used Distros
> thatinclude Orca or Speakup for people to install the voices and use on
> their localsystem.
>
> I really havn'tsmoothed out the finite details on that as to how exactly
> the interface making Readspeaker available for Linux screenreaders would
> work in terms of the technicalities. For example, how to make it available
> both for Debian based systems and for something like Arch, just throwing
> out examples. But Voxin has done it with Nuance, so it should be doable
> with Readspeaker and the guys at Readspeaker are apparently willing to
> consider developing an interface to make it possible, as long as there is
> enough interest in the community, and so long  as it would be commercially
> viable for them.
>
> My first step is to simply find out ifthere is any interest, which, it
> seems like there is a small handful here on this list that would be
> interested.
>
> Other Consolereaders might be considered as well, and would be mentioned
> in an officialsurvey before actually getting started on the project, to
> determinewhat is the most popular Console screenreader for Linux users
> andstart with that. Hopefully offering voices for Orca graphical, and
> atleast the most widely used Console reader. I know there's quite a
> fewConsole readers out there, but we'd have to really decide where
> thedevelopers at Readspeaker would focus their time and effort intomaking
> their Linux compatible interface to bring Readspeaker voicesto
> screenreaders.
>
>
>  I think startingwith Orca for Graphical, and then one Console Reader,
> would be good.
>
> Havn't even gotteninto Emacs yet, but if that uses a seperate screenreader
> and iswidely used, then that would be something to consider including
> ifpossible. I'm just trying to cover the basics of something forgraphical,
> and something for console. As far as I know, isn't Emacslike a text editor
> and used for programming etc? Do people also useit like a screenreader to
> access daily tasks on Linux instead of OrcaOr Espeakup?
>
> To Didier:
>
> Wow, didn't know youalso reached out to Readspeaker as an Ivona
> distributor back in theday. Good to know. Its too bad that something can't
> be done to bringIvona to Linux seeing as one of their original pages said
> that anIvona SDK was compatible. But when I asked them, I got the
> sameresponse that Ivona is linked with Amazon now so Ivona is not an option.
>
>  I'm not the only oneto inquire. You asked them years before me, and I
> wouldn't besurprised if we're not the only ones to ask for Ivona.
> Quitefrustrating that Ivona is not more open to collaborating
> foraccessibility solutions on multiple platforms. Even from a
> strictlybusiness standpoint, Ivona could make additional proffits from
> selling solutions to Linux users. Oh well.
>
> As for theReadspeaker brand voices, when I contacted them, they did say
> thatthey usually only sell to businesses, not individuals; but they
> saidthat in this case, they would be willing to consider developing
> aninterface to bring Readspeaker voices to Linux screenreaders providedthat
> there is enough interest in the community, and that it would becommercially
> viable. Thats why I'm trying to get a baseline ofinterest, to see if its
> worthwhile to try to move forward with this.
>
> To Francisco:
>
> Yes, I totally agreewith you. Thats why I started this endeavor, first
> trying to bringIvona to Linux but that didn't work out. Now trying to
> bringReadspeaker's own brand of voices  to Linux. I too want to see
> morenatural sounding voices become available to Linux. Allowing Linuxusers
> to have a similar range of natural TTS choices as Windowsusers, and in
> return, more people may decide to give Linux a try.
>
> Thanks to all forthe inquiries, hope I was able to answer at least some of
> yourquestions, feel free to keep asking questions or sharing ideas, andfor
> those of you who missed the link the first time around, please dotry
> listening to the demos available on Readspeaker's web page.
>
> Thanks,
>
> SL
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

