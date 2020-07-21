Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5053A228CFB
	for <lists+blinux-list@lfdr.de>; Wed, 22 Jul 2020 02:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595376455;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Pfv6oENMpDrHkKtyBch9K2pRDSVaDwFBwHIoLBCjBJE=;
	b=bRUGr8FTvzb1qYmSIHibC8UI7KOPlt+hIT+AKJTIEIVt9fiwrkEi2aRlfLvgpfa+cm71xT
	0zbBpPAtIROeR4os0UlhgZjhmp8QnnsCg34pKNjfjUcIcI3b3aoya5Oin9fuG25eetupGw
	z92Hg7/ZdxyusOmQF4J0FTYI3G1SM3A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-133-EB4Gs8WFOAa4jSSq9DbbWA-1; Tue, 21 Jul 2020 20:07:33 -0400
X-MC-Unique: EB4Gs8WFOAa4jSSq9DbbWA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0E1E1009619;
	Wed, 22 Jul 2020 00:07:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 400D91001901;
	Wed, 22 Jul 2020 00:07:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 591D71809554;
	Wed, 22 Jul 2020 00:07:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06LNpY5c027072 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Jul 2020 19:51:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5F2D12166BA2; Tue, 21 Jul 2020 23:51:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5788E2156A3A
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 23:51:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51AD11012444
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 23:51:32 +0000 (UTC)
Received: from sonic315-21.consmr.mail.ne1.yahoo.com
	(sonic315-21.consmr.mail.ne1.yahoo.com [66.163.190.147]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-504-g9g3tMmIN6OIQNECspLHSQ-1;
	Tue, 21 Jul 2020 19:51:30 -0400
X-MC-Unique: g9g3tMmIN6OIQNECspLHSQ-1
X-YMail-OSG: aQg0QXAVM1kaXZpcXetAf8LIBX3onXsdapnJ039NZBxTX55K81KaZU2txuKn3L5
	8BKWvMRFl9JQOIT8lLpc8iWOy_oErBZg5ehML.OSW3ASscJKl9E6u3JG35Q1KztOnGf1CIEZVZNg
	j_TVWH9baeMh98Nxt3FZPiF2dC1oIHeUqnkKR3KZKQeKyr3Pwq7Ey4H.mc1AH.9jIuC6Pt2MkgUx
	dQBDTQ_Zw68x_evo5.qqsTHXyhAsBLpTez7y_usSZKeqY28JhOg2GW9xlmGVz0W2iEHt.SA5C1Gd
	uNOIacgSqbeIAw6dgL6GAJ7Y1am5mBfDeSdWGMSvNZyY0ggbS.vvBgun2wewfcdJ9QGEMC1Qlor6
	dAZCCok0x.FJRdMF30aPInAemvSRN1fmyxN5dpkUKc0jqbQQEeiyVj5FjeduZDYT6Z_suVEBIdEl
	TiQos7HFbSe4N3hFgMlzXQSKp1uTGeL9Op4II8Fl6TlsRPsl5mET3HUCFYKuS40ZnhXuZN0_i1UW
	UJcsLA9j2Hl4xCPDmoQQyfuXYoHOuCo7ll8X83lB3DARQBW3psasFLLVs4WerNqxEf7eekcZHB6D
	e4LN74Y_3jt5Nt.V9.IoR1L9flvdITN227rKeTMag74fqKg0VQt3pn6Ta8N4ACg9CK5KkOvhfqJG
	OY_2B_evyITkxtUNWOkDa_Lw9075dd.b_t2v7.i.rNFBLiMtRr1Pf2OgNmVf6XCRiVz.dYssoUBk
	_d._bk9vKvHWQhbm3WWmeN7pkb0qbAHtUQMMHojwKrGAgM_B5LT70wg0rybsLfQ6wx8rL5QZgCjy
	dN3eUcVId5_fhjbzjmlJm0WZ.rAN8EGPnNZr5d509cMw4MoI9eVLwW2fl3GAinda..06SuQVhPps
	WJLCcJ43isX14YM8Ta6KgAMssEMKC1_0i3Ak5fNDoDwZXUA7k5RChMQUBWJJTnV6bqxekW7KESo4
	omaFy0nz7aftg_rRE72J7gFjvcFK2fBPXG7u1w83UE3dsxWKeSixxapdEbUsmyfguUfOR9vaAymJ
	UtXb3iuYfZjJ.BQMHuTG2aZA_L9I1paDIGWZFONRnMB3URhBT.FVCmr1upJW4.nOVb492AqJs1n8
	VZJmb.8134PqwgeUdyZPGM.T7ZJuX7fvXZjy8WDAcUEteU1awged.7GL6dG2hFOGJwHVtUjHsRdU
	h9_J8Mnk55uY.mA0tw1G6QtR3iR2McwcMiYf8qRZKx0F.uXGgyHhtqcXC3yebfs0M84rHwd89wSI
	A8.aHYckTZMnp8F4RIibdBzoGg4N5_YF0YnzOv9fg8oJ9ceXL7fpwZpFmq.l1IYnDsGtiCCSGyu5
	hGuhZx9xcawJVSPK8y3uVte0yXI1blRlrUHsa7asB
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic315.consmr.mail.ne1.yahoo.com with HTTP;
	Tue, 21 Jul 2020 23:51:29 +0000
Received: by smtp409.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 9c28d1ffc422e0f72fa1fd40c8fd4bbc; 
	Tue, 21 Jul 2020 23:51:25 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>	<20200718110724.GA2593@rednote.net>	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<005c01d65fb7$4cb802f0$e62808d0$@gmail.com>
In-Reply-To: <005c01d65fb7$4cb802f0$e62808d0$@gmail.com>
Subject: RE: installing speakup on RHEL 7/8
Date: Tue, 21 Jul 2020 16:51:25 -0700
Message-ID: <01a001d65fb9$d8e51a90$8aaf4fb0$@yahoo.com>
MIME-Version: 1.0
Thread-Index: AQNc5jLN+mdFGYYu0fUGJnDrgEEZpQIekfAKAdo7VQoCE/LScgHkpUN3pcYZoyA=
Content-Language: en-us
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


That's very true, but one would think the linux kernel is the same
everywhere?

I have to say having RHEL on a workstation is going to be an experience for
a lot of us, but unfortunately we don't have a lot of room to maneuver and
still comply with policy, so we are basically stuck with it

--David


-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Tuesday, July 21, 2020 4:33 PM
To: blinux-list@redhat.com
Subject: RE: installing speakup on RHEL 7/8

I doubt you're the only person, but I'm guessing that the issue you'll run
into is that RHEL is a server distribution and Speakup is a desktop package.

--
Christopher (AKA CJ)
Chaltain at Gmail

> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> 
> On Behalf Of Linux for blind general discussion
> Sent: Tuesday, July 21, 2020 4:44 PM
> To: blinux-list@redhat.com
> Subject: RE: installing speakup on RHEL 7/8
> 
> 
> Thanks Janina for the info, I wonder if anyone we can ask inside Red 
> hat
to shed
> some light on this topic, as I am unable to find any contact info for
their
> accessibility team.
> 
> I imagine I can't be the only one out there who is trying to use 
> speakup
with
> RHEL, or am I?
> 
> --David
> 
> 
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> 
> On Behalf Of Linux for blind general discussion
> Sent: Saturday, July 18, 2020 4:07 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: installing speakup on RHEL 7/8
> 
> When he was still alive, Bill Acker routinely built Fedora kernels 
> that
included
> Speakup, both before and after Speakup became part of staging.
> I know for a fact that Bill tried, and never succeeded at building 
> Speakup
into
> RHEL. Now Bill's been gone for a few years, but I've no reason to 
> believe
the
> environment has suddenly become Speakup friendly, sorry to say.
> 
> No, I don't recall what the block was/were.
> 
> I know that's not what you wanted to hear, but it's the best answer I 
> can
provide
> and I don't believe you're going to find very much different info.
> I'll be happy to be proven wrong, of course.
> 
> It'll be interesting to see what RHEL does when Speakup finally 
> becomes a
first
> class kernel citizen. If I understand the situation correctly, that 
> should
come
> fairly soon.
> 
> Best,
> 
> Janina
> 
> Linux for blind general discussion writes:
> >
> >
> > Hi there -
> >
> >
> >
> > I am getting a workstation at work that will be running RHEL 7 or 8.
> > From what I understand, speakup is not a package in yum, but it is 
> > now part of the kernel staging tree.
> >
> >
> >
> > Does anyone have instructions on how to get speakup installed and 
> > running on RHEL 7 or 8 using software speech?
> >
> >
> >
> > Any help appreciated, thank you very much in advance
> >
> >
> >
> > --David
> >
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> 
> --
> 
> Janina Sajka
> https://linkedin.com/in/jsajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

