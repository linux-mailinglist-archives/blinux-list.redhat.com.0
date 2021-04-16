Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7A41736217E
	for <lists+blinux-list@lfdr.de>; Fri, 16 Apr 2021 15:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618581230;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/JNTdTKTSdszAAWQx4K9zZ9i9F7sjXLZARrh+yBQmP4=;
	b=PsZ4CnKj8z1YXe9GF3tin9Gn2+yxQ03FkoES9CzaJe6C3TkZB9Ab1rAbjdSPKFOL3cro3L
	teTy7vFDgbmHJlqGEzN6gHovxjKNp54n9KUt8De8NRPs+GsbWcyqiHixYZkKIXF0sKYVW2
	oiAsc/HFgDNY1TSw1W1PGMX/qMlyaqc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-InGwIdpcNEqtsoBMeCShNg-1; Fri, 16 Apr 2021 09:53:48 -0400
X-MC-Unique: InGwIdpcNEqtsoBMeCShNg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 936A28030A0;
	Fri, 16 Apr 2021 13:53:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D56560CED;
	Fri, 16 Apr 2021 13:53:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 07F6C1806D16;
	Fri, 16 Apr 2021 13:53:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13GDqO2C031600 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 09:52:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 61E4120BDB1E; Fri, 16 Apr 2021 13:52:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59A4320BDB25
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 13:52:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F8CF85A5A8
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 13:52:21 +0000 (UTC)
Received: from mail-out-01.crystone.se (mail-out-01.crystone.se
	[93.90.145.11]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-362-YeIbfk29MoiaBE5nrRmpiA-1; Fri, 16 Apr 2021 09:52:17 -0400
X-MC-Unique: YeIbfk29MoiaBE5nrRmpiA-1
X-Halon-ID: f343f133-9eba-11eb-81a3-005056912ff2
Authorized-sender: anders@pipkrokodil.se
Received: from smtpclient.apple (unknown [185.176.246.116])
	by mail-out-02.crystone.se (Halon) with ESMTPSA
	id f343f133-9eba-11eb-81a3-005056912ff2;
	Fri, 16 Apr 2021 15:52:14 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.80.0.2.43\))
Subject: Re: Would you be interested in having natural sounding TTS voices by
	Readspeaker on Linux? demo link included
Date: Fri, 16 Apr 2021 15:52:14 +0200
References: <161854841366.7.5044640704122711519.5900574@slmail.me>
	<20210416.050139.449.4@[0.0.0.0]>
To: blinux-list@redhat.com
In-Reply-To: <20210416.050139.449.4@[0.0.0.0]>
Message-Id: <C50331B1-79A1-4EC9-920F-BE18BA55DF36@pipkrokodil.se>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13GDqO2C031600
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi!
Well, to be honest I can stand  e-speak quite well.
And to me braille is more important than Speech.
/A 

> 16 apr. 2021 kl. 07:01 skrev Linux for blind general discussion <blinux-list@redhat.com>:
> 
> Wow, fix your spacebar and try again.
> 
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Fri, 16 Apr 2021 04:46:53 -0000
> Subject: Would you be interested in having natural sounding TTS voices by Readspeaker on Linux? demo link included
> 
>> 				
> Hi everyone,
> This is SL.
> Some of you may remember that lastmonth, Chime and I were trying to find a way to legally port Ivonavoices to Linux.
> We have been in communications withReadspeaker, a company which creates its own quality TTS voices andis also an official distributor of Ivona.
> Unfortunately, due torestrictions and incompatibility, we are unable to bring Ivona toLinux at this time.
> However, Readspeaker is willing to considerthe possibility of working with us to bring their own high fidelityReadspeaker brand voices to Linux as a TTS option to use with Linuxscreenreaders if there is enough interest in the community and if theventure would be commercially viable.
> Right now, we are onlysending this to the Blinux list, so please do not forward it, as thisis not an official survey.
> If there is confirmed interest withinthe Blinux list as a baseline sample group, then we would send anofficial survey which would be reviewed by Readspeaker beforehand,and widely dispersed amongst multiple blind Linux/tech groups to gageinterest, pricing, language preferences, screenreader preferencesetc.
> Right now, we simply want to know if anyone else on thislist would want to have Readspeaker voices to use as a TTS option forLinux screenreaders before engaging in any further outreachefforts.
> We first need to know that we are not the only ones whothink it would be worth it to have Readspeaker's high fidelity voiceson Linux.
> If there is enough interest in this potential project,it would likely be a model similar to Voxin, where the consumer paysa yet-to-be-determined fee to have their choice of Readspeaker voicefor their Linux screenreader.
> We can refine those particulardetails later.
> For now, we just want to know if anyone on thisBlinux list would be interested in having Readspeaker voices on Linuxfor a more natural sounding TTS experience.
> If so, then we wouldknow whether to confirm interest with Readspeaker and work on anofficial survey which would help us determine price range and whichlanguages to focus on etc. 
> So, in this email we are including adirect link where you can listen to demos of Readspeaker voices andwe ask that you let us know if you would be interested in havingReadspeaker TTS on Linux.
> Please abide by Readspeaker's termsand conditions which prohibit the recording of said demos.
> Inthis email there is a direct link to Readspeaker's official demo pageon their website which features a variety of voices to sample. Justselect which voice you want to hear in the combo box, then press"listen".
> This link is preferable as you can accessmultiple voices which can be included in a Linux compatibleSDK.
>  However, you will need to use Firefox in Graphical toaccess it. If you have the ability to use graphical Firefox, pleasedo as this will give you the largest variety of choices.
> Weunderstand that some users may be accustomed to only using Consolebrowsers, and some multi media websites that work just fine withGraphical Firefox will not render on Lynx.
> If you areexclusively a Console user and cannot use Graphical Firefox to access the link below in this email,Readspeaker sent us two mp3 files, one with a sample of a US Englishvoice, and the other with a sample of a UK English voice for Consoleusers to listen to if they cannot switch to Graphical and use Firefoxto access Readspeaker's official demo page on their website. 
> 
> It is ourunderstanding that mp3 files cannot be posted to this mailinglist. (If this is incorrect, I can send a second email with the mp3 files if mp3 files are allowed on the Blinux list). Otherwise, if anyone on this list is exclusively a Console user and cannotaccess the link to Readspeaker's demo page included in this message,please feel free to email me, SL, at my email address which I willpost at the bottom of this message and I can send the two mp3 filesto you.
> 
> 
> However, the mp3files are only one sample of a US English voice, and one sample of aUK English voice. They are created for Console users who cannotaccess Readspeaker's official demo page which has the full variety ofvoices.
> 
> Even if you are a graphical user, you may still want to listen tothe two mp3 files because even though they are only a sample of two select voices as compared to the variety on the demo web page, they read a very long sample of text and itcan help you get a feel for the flow. So anyone who wants to listento the mp3 files, just email me.
> 
> If you have theability to use Graphical Firefox on your setup, please use Graphicalto click on the direct link to Readspeaker's demo page included belowin this email, which offers the full variety of voices, multiple options for US English, multiple options for UKEnglish, as well as other languages. If you would like to hear longertext read in two select voices, email me for the mp3 files.
> Graphicalusers please click this link to Readspeaker's official demo web page,select any voice from the combobox list and press"listen":
> 
> https://www.readspeaker.com/text-to-speech-demo/
> 
> Consoleusers, if you cannot access Readspeaker's official demo page andwould like to listen to two mp3 samples, also to graphical users whowould just like to listen to the mp3 files which read a rather longpiece of text where you can really get acquainted with the flow, feelfree to contact SL at:
> 
> 
> software.liberators@slmail.me
> 
> 
> 
> Thanks for your timeand we look forward to your feedback,
> SL and Chime
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

