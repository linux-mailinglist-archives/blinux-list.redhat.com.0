Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 48FC71FA955
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jun 2020 09:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592290803;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V26nluRhQKJRBng9UmGyVpN6hsXJowgsRDsr3F06bAk=;
	b=c4Tt637MO4GQb6k764b+VzqVq5WRwy2hmVKQ/GgFsedxEEzZ50nOJz8KzG3XOsbW35BQAl
	ssu55PGplTeRD7v217iGUMsUFqUii11l1BA1Ar2W9eAa2csmXfbRWDk77G3Wa3LWQ+W3lx
	/OpjqoakutKKc6e6Xx572hiWvdQHzKI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-ab4wX9VvOQaZ90-fq7LrLQ-1; Tue, 16 Jun 2020 03:00:00 -0400
X-MC-Unique: ab4wX9VvOQaZ90-fq7LrLQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5976BE90E;
	Tue, 16 Jun 2020 06:59:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B18D707C6;
	Tue, 16 Jun 2020 06:59:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 430E31809547;
	Tue, 16 Jun 2020 06:59:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05G6xf6M030501 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jun 2020 02:59:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2A9CD82861; Tue, 16 Jun 2020 06:59:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 252E08057D
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 06:59:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 852A985A5A3
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 06:59:38 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-433-gC_O1n_vPGyymSTRTMw6aA-1; Tue, 16 Jun 2020 02:59:34 -0400
X-MC-Unique: gC_O1n_vPGyymSTRTMw6aA-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05G6xXNI162322
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 06:59:33 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05G6xXNI162322
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05G6xXNI162322
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05G6xXLI162321
	for blinux-list@redhat.com; Tue, 16 Jun 2020 02:59:33 -0400
Date: Tue, 16 Jun 2020 02:59:33 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200616065933.GF2180@rednote.net>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.6.16-200.fc31.x86_64
X-MIME-Autoconverted: from 8bit to quoted-printable by opera.rednote.net id
	05G6xXNI162322
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05G6xf6M030501
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi, Amanda:

I don't understand your question. An Android device is a Linux device.
it runs on linux kernels, implements several Linux libraries. It's audio
subsystem is driven by alsa.

The user doesn't see this, of course, because all of that is under the
hood, so to speak. The user interface on Android is written in Java, so
bears no resemblance to the graphical desktop one might see on a typical
Linux computer, typically GNOME or KDE.

So, what are you asking? Please say more.

Best,

Janina

Linux for blind general discussion writes:
> Okay, so for a free Linuxy OS running on an Android device, can anyone
> suggest a starting point?
>=20
> Amanda
>=20
> On 6/15/20, Linux for blind general discussion <blinux-list@redhat.com> w=
rote:
> > Didier:
> >
> > I'm sure Hans, our list owner of record, would happily entertain a
> > better configuration. Please note this list runs on Redhat's list
> > servers which I believe are still mailman based. So, it's a question of
> > what Redhat has implemented upstream.
> >
> > If you want Hans' email, I can probably dig it up.
> >
> > Best,
> >
> > Janina
> >
> > Linux for blind general discussion writes:
> >> Or, this is to avoid SPF/DKIM authentication failure.
> >>
> >> As an example, I have an email server with DKIM enabled for the domain
> >> name slint.fr that I own and use for the Slint distribution, cf.:
> >> https://slint.fr
> >>
> >> So, the receiver of an email sent with a From: address with the domain
> >> name slint.fr can authenticate it checking that the email was sent fro=
m
> >> my server's IP address and not further modified if re-sent by a mailin=
g
> >> list to all registered users.
> >>
> >> Many mailing lists keep the From: field as is (for this email that wou=
ld
> >> be: didier@slint.fr) but modify its content, like to add a footer. The=
n
> >> the email will fail the authentication failure by the server that
> >> receives the email sent by the mailing list, and possibly reject it or
> >> put it in a spam folder, according to their policy and the instruction=
s
> >> given by the initial sending server, written in a DMARC record.
> >>
> >> I don't know if this the main reason, but not writing the initial
> >> poster's email address in the From: field prevents authentication
> >> failures.
> >>
> >> To cope with this policy, let's identify ourselves in the body of the
> >> emails we sent to the list.
> >>
> >> I do it below:
> >> Didier Spaier
> >> Slint maintainer
> >>
> >> Le 14/06/2020 =E0 22:56, Linux for blind general discussion a =E9crit=
=A0:
> >> > I think many years ago there were lots of spam which came through th=
is
> >> > list, so they altered to this current way
> >> > Chime
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >
> > --
> >
> > Janina Sajka
> >
> > Linux Foundation Fellow
> > Executive Chair, Accessibility Workgroup:=09http://a11y.org
> >
> > The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> > Chair, Accessible Platform Architectures=09http://www.w3.org/wai/apa
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>=20
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

--=20

Janina Sajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:=09http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Chair, Accessible Platform Architectures=09http://www.w3.org/wai/apa


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

