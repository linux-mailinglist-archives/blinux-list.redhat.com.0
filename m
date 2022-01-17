Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F7949007C
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 04:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642388893;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yJ41+y0jWhkGaRh9F1B4oa2I5e1i+hlKfXGSO0sp3t8=;
	b=eiJNCNipjDeGwCUOWRmqACxyvrUF4UzrBQHeB7vHHV8qI1foHgIAeHOT9ZxEY7WQTwKBMM
	Gr+bCCNiac69QSosT8+yrpPLS1hPX4mar5wn3akevJBiij1leUuQgb8z+2A3Yw24lz2nZR
	HkUgK6ymwDxSvtWPO6c4xRg/H81B4aU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-220-Pn7-jk3cOvmfPC-7XmPLNw-1; Sun, 16 Jan 2022 22:08:10 -0500
X-MC-Unique: Pn7-jk3cOvmfPC-7XmPLNw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A38FC2F27;
	Mon, 17 Jan 2022 03:08:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BDB0E4D726;
	Mon, 17 Jan 2022 03:08:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EDC351809CB8;
	Mon, 17 Jan 2022 03:08:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H34Ntd008973 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 22:04:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 96B3146D1ED; Mon, 17 Jan 2022 03:04:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92A6346D1E6
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:04:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 724DC811E78
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:04:23 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
	[209.85.219.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-131-Qe3HUFx8OzOobpeMXqOj2g-1; Sun, 16 Jan 2022 22:04:21 -0500
X-MC-Unique: Qe3HUFx8OzOobpeMXqOj2g-1
Received: by mail-yb1-f178.google.com with SMTP id g81so41792841ybg.10
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 19:04:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=VL0DFXugruFmSlHPGG5l5DFof3BYRekEzGoVH/I6rzQ=;
	b=V/flLO0jvJ7avX7tCqBzq3wH500SsHVru0bnIhuWyPI9hLmaMquSigPwkCl63rACau
	CoKkqzY6vIrvCT46EbsehPVrAvJiqe4R3mL4qeXsCLGde4pAr0GNUZIH3PO/yMQ8TMDs
	pWs3AvuO2uBTjtJh9BjriJeXWAXBZtGd40XezGxHpnFMqiwjs/aHgPRKxAVi8wdEsVc9
	oSIGChTqp+ya2cZoNUMLlBrxX9Y9H8yXUAKodD/RJa2Q4A102Bg/XcSKuM8gl5kR7QHd
	HhSumUeUf4BCf1vqz6Vg6L7AfxLXWYFTMh78hE/8ihZgz8rioKegHh7yRTLsut7WViyu
	94dQ==
X-Gm-Message-State: AOAM533ZzpvyG32YBagzffwEoR+fdTopv01Qm1ihdi07Sp2GS5ECgmnE
	2cTsobnBQEKaE+KGbVSNJsooEu0ACQqhsHNJO8HfdwtK
X-Google-Smtp-Source: ABdhPJwAEUMjWMIU4b2HEE4LhdFtk494P0KvNLuP7AgLN50R0TjatHgwnurE8BHJ3NN/18r4WxxtTe9EuoeCFuFqyVo=
X-Received: by 2002:a05:6902:70b:: with SMTP id
	k11mr28571381ybt.643.1642388660309; 
	Sun, 16 Jan 2022 19:04:20 -0800 (PST)
MIME-Version: 1.0
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<574571f2-a341-c700-d94a-415f76bc936e@gmail.com>
	<PH0PR14MB429684C61B04748E06FC0EC4C8579@PH0PR14MB4296.namprd14.prod.outlook.com>
In-Reply-To: <PH0PR14MB429684C61B04748E06FC0EC4C8579@PH0PR14MB4296.namprd14.prod.outlook.com>
Date: Sun, 16 Jan 2022 21:04:08 -0600
Message-ID: <CAGJxbF5S52GtVXpJUnq4KQFw8kUTFbmMQRJmd_s3qj3+0T1TCA@mail.gmail.com>
Subject: Re: Getting Started with linux
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It would be easier to like Gnome, but the settings center is really hard to
navigate.
Devin Prater
r.d.t.prater@gmail.com




On Sun, Jan 16, 2022 at 7:08 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Well, simpler is a subjective term. I prefer Gnome over Mate and I find
> Gnome to use a lot of the same concepts that I use on my Windows 10 desktop.
>
> --
> Christopher (AKA CJ)
> Chaltain at Outlook
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Sunday, January 16, 2022 9:54 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Getting Started with linux
>
> Hi,
>
>
> I personally do not like vanilla Ubuntu, simply because the Gnome desktop
> does not make any sence to me at all. If it was me, and at one point, long,
> long ago, it was, I'd download Ubuntu Mate, simply because the desktop is a
> hell of a lot simpler to get use to, and also a lot more like the
> traditional Windows Desktop in the sence that you can, if you so wish, put
> all your crap on it, unlike Gnome.
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from the Slint machine using Thunderbird
>
> On 2022/01/16 17:19, Linux for blind general discussion wrote:
> > Well, it sounds like you're telling me to run linux under windows?
> > That isn't what I had in mind.  Here's what I've learned thus far:
> > I need to download a linux OS; then make a bootable media and install
> > the linux ISO to it.
> >
> > Well, I did that:
> > downloaded ubuntu-20.04.3-desktop-amd64.iso and (for flashing it to
> > the thumb drive) balenaEtcher-Portable-1.7.3.exe made a bootable thumb
> > drive and installed ubuntu on it.
> >
> >
> > Now I need to learn how to install ubuntu from the thumb drive.  I
> > must search for instructions to go on from here.
> >
> > Thanks.
> > Howard
> >
> >
> > On 1/15/2022 5:53 PM, Linux for blind general discussion wrote:
> >> Ubuntu or Fedora could do that for you. alt-windows-s toggles speech
> >> on and off and you want to choose try ubuntu or try fedora buttons on
> >> the desktop screen.  Desktop screen is windows-d once system boots
> >> and you have speech.
> >>
> >>
> >> On Sat, 15 Jan 2022, Linux for blind general discussion wrote:
> >>
> >>> Hello all,
> >>>
> >>> I've been wanting to try out linux but haven't wanted to give up or
> >>> mess up any of my working windows systems.  Would it be possible to
> >>> install some version of linux on a CD or a DVD; then just boot a
> >>> computer from that disk bypassing windows altogether?  If so, I'd
> >>> have to make it either talk or drive a Braille display.
> >>>
> >>> Wonder if anyone would have any suggestions?  Thank you.
> >>>
> >>> Howard
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flis
> >>> tman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%
> >>> 7C%7Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaa
> >>> aaaa%7C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
> >>> 4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;
> >>> sdata=l%2FF6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;res
> >>> erved=0
> >>>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flist
> >> man.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C
> >> %7Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaaaaa
> >> a%7C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLj
> >> AwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata
> >> =l%2FF6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;reserved=
> >> 0
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistm
> > an.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7
> > Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7
> > C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
> > AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=l%2F
> > F6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;reserved=0
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
>
> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=l%2FF6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;reserved=0
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

