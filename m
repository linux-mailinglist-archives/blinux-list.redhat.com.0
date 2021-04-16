Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id A33BA3627A2
	for <lists+blinux-list@lfdr.de>; Fri, 16 Apr 2021 20:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618597373;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GIN7Vr6KjwptUFOGr9XJw/uH5/dknMAsunB8oWrB6Mk=;
	b=g5oRyH8gnDLESNgjBF+KTa8dznpOqzeXWOedSCjhw1yzuA/HnSzWC2cE+83esReXwUPmGZ
	KnqFPb+HekUiBnCEwJrDdsU15rq6bv6YasA6leTprmcxSZ8s8CqxsLfwf2UGECEtIgTcIU
	jqKs0BJAdQa6HHwAHciqkM3SuR7mBm0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-580-4R4ffMyJNi2c-NRjW85jxg-1; Fri, 16 Apr 2021 14:22:51 -0400
X-MC-Unique: 4R4ffMyJNi2c-NRjW85jxg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EDF8107ACE3;
	Fri, 16 Apr 2021 18:22:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA07250FA2;
	Fri, 16 Apr 2021 18:22:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA7811806D0F;
	Fri, 16 Apr 2021 18:22:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13GILpRu023122 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 14:21:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 69F5321BBFA6; Fri, 16 Apr 2021 18:21:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 647C721BBFA8
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 18:21:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ABE8B85A5AA
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 18:21:48 +0000 (UTC)
Received: from l2mail1.panix.com (l2mail1.panix.com [166.84.1.75]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-190-UOZDQ4qGNHex1A4eVIJa4g-1; Fri, 16 Apr 2021 14:21:46 -0400
X-MC-Unique: UOZDQ4qGNHex1A4eVIJa4g-1
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by l2mail1.panix.com (Postfix) with ESMTPS id 4FMPFV0jQZzDWl
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 14:02:54 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FMPFT0L0fzPx6
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 14:02:53 -0400 (EDT)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4FMPFT0GRHz1QXP; Fri, 16 Apr 2021 14:02:53 -0400 (EDT)
Date: Fri, 16 Apr 2021 14:02:52 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: re-sending this: are you interested in natural sounding TTS
	voices for Linux by Readspeaker? demo link included
Message-ID: <YHnRTGRFoSURP+uE@panix.com>
References: <161856255164.6.7776816386753760223.5910318@slmail.me>
MIME-Version: 1.0
In-Reply-To: <161856255164.6.7776816386753760223.5910318@slmail.me>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It depends. Point me to some youtube samples of these voices for a listen  and then I'll
respond with my level of interest.

Rudy

On Fri, Apr 16, 2021 at 08:42:31AM -0000, Linux for blind general discussion wrote:
> Hi,
> Its SL again. As you can probably tell, I just tried sending this and the formatting got messed up somehow.
> I wrote the message in a word processor, then pasted it into my email client, checked it multiple times before I posted it and it all read normally for me.
> But then, somehow, when it sent, it completely messed up the formatting, taking out spaces, mashing words together, and inserting random line breaks.
> I did not create the layout like that, it somehow happened when it sent.
> So I am trying again to re-sent it. I tried to add in all the spaces that got taken out, even went over it with a braille display afterwords to double check,?? I'm hoping this will read better for you guys.
> For those of you who couldn't make sense out of that jumble that was sent before, hopefully the format will not be obstructed this time. Here is the message again:
> Hi everyone,
> This is SL.
> Some of you may remember that last month, Chime and I were trying to find a way to legally port Ivona voices to Linux.
> We have been in communications with Readspeaker, a company which creates its own quality TTS voices and is also an official distributor of Ivona.
> Unfortunately, due to restrictions and incompatibility, we are unable to bring Ivona to Linux at this time.
> However, Readspeaker is willing to consider the possibility of working with us to bring their own high fidelity Readspeaker brand voices to Linux as a TTS option to use with Linux screenreaders if there is enough interest in the community and if the venture would be commercially viable.
> Right now, we are only sending this to the Blinux list, so please do not forward it, as this is not an official survey.
> If there is confirmed interest within the Blinux list as a baseline sample group, then we would send an official survey which would be reviewed by Readspeaker beforehand, and widely dispersed amongst multiple blind Linux/tech groups to gage interest, pricing, language preferences, screenreader preferences etc.
> Right now, we simply want to know if anyone else on this list would want to have Readspeaker voices to use as a TTS option for Linux screenreaders before engaging in any further outreach efforts.
> We first need to know that we are not the only ones who think it would be worth it to have Readspeaker's high fidelity voices on Linux.
> If there is enough interest in this potential project, it would likely be a model similar to Voxin, where the consumer pays a yet-to-be-determined fee to have their choice of Readspeaker voice for their Linux screenreader.
> We can refine those particular details later.
> For now, we just want to know if anyone on this Blinux list would be interested in having Readspeaker voices on Linux for a more natural sounding TTS experience.
> If so, then we would know whether to confirm interest with Readspeaker and work on an official survey which would help us determine price range and which languages to focus on etc. 
> So, in this email we are including a direct link where you can listen to demos of Readspeaker voices and we ask that you let us know if you would be interested in having Readspeaker TTS on Linux.
> Please abide by Readspeaker's terms and conditions which prohibit the recording of said demos.
> In this email there is a direct link to Readspeaker's official demo page on their website which features a variety of voices to sample. Just select which voice you want to hear in the combo box, then press "listen".
> This link is preferable as you can access multiple voices which can be included in a Linux compatible SDK.
> ??However, you will need to use Firefox in Graphical to access it. If you have the ability to use graphical Firefox, please do as this will give you the largest variety of choices.
> We understand that some users may be accustomed to only using Console browsers, and some multi media websites that work just fine with Graphical Firefox will not render on Lynx.
> If you are exclusively a Console user and cannot use Graphical Firefox to access the link below in this email, Readspeaker sent us two mp3 files, one with a sample of a US English voice, and the other with a sample of a UK English voice for Console users to listen to if they cannot switch to Graphical and use Firefox to access Readspeaker's official demo page on their website.
> It is our understanding that mp3 files cannot be posted to this mailinglist. (If this is incorrect, I can send a second email with the mp3 files if mp3 files are allowed on the Blinux list). Otherwise, if anyone on this list is exclusively a Console user and cannot access the link to Readspeaker's demo page included in this message, please feel free to email me, SL, at my email address which I will post at the bottom of this message and I can send the two mp3 files to you.
> However, the mp3 files are only one sample of a US English voice, and one sample of aUK English voice. They are created for Console users who cannot access Readspeaker's official demo page which has the full variety of voices. Even if you are a graphical user, you may still want to listen to the two mp3 files because even though they are only a sample of two select voices as compared to the variety on the demo web page, they read a very long sample of text and it can help you get a feel for the flow. So anyone who wants to listen to the mp3 files, just email me.
> If you have the ability to use Graphical Firefox on your setup, please use Graphical to click on the direct link to Readspeaker's demo page included below in this email, which offers the full variety of voices, multiple options for US English, multiple options for UK English, as well as other languages. If you would like to hear longer text read in two select voices, email me for the mp3 files.
> Graphical users please click this link to Readspeaker's official demo web page, select any voice from the combo box list and press "listen":
> 
> https://www.readspeaker.com/text-to-speech-demo
> 
> Console users, if you cannot access Readspeaker's official demo page and would like to listen to two mp3 samples, also to graphical users who would just like to listen to the mp3 files which read a rather long piece of text where you can really get acquainted with the flow, feel free to contact SL at:
> 
> software.liberators@slmail.me
> 
> Thanks for your time and we look forward to your feedback,
> SL and Chime
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

