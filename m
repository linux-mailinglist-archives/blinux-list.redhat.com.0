Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5D00F2030BF
	for <lists+blinux-list@lfdr.de>; Mon, 22 Jun 2020 09:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592811770;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EuhvbvySAFZx4yNWx5MqPAgw8oitq3Dp2WM98DQytmg=;
	b=dtkseaScNhbSwqC1TNjy5zzy8cNUnh3G0kyqYh7kXyKPlaER/vCdoY+REx6S5AkZC11Wz0
	9I2mfM5RLa/Giy7H2X2KVOyysNf1GAhIqYKKPn0v0C/r1Z6OXLPbGMyZdcJqY4GM9uS7co
	B3dcR/ga+/STwg4VEPzh9ct5s10g06g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-292-9DAFm9QJMUSHZjC7TfO4Fw-1; Mon, 22 Jun 2020 03:42:47 -0400
X-MC-Unique: 9DAFm9QJMUSHZjC7TfO4Fw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6657C84B83F;
	Mon, 22 Jun 2020 07:42:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F12660BEC;
	Mon, 22 Jun 2020 07:42:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E25FE1809547;
	Mon, 22 Jun 2020 07:42:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05M7gWgA026738 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 03:42:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1A72E30BA6; Mon, 22 Jun 2020 07:42:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15E3C3325C
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 07:42:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 99E0D800052
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 07:42:29 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-306-ZaXf_JY_MTKcBZXba3Nfxg-1; Mon, 22 Jun 2020 03:42:24 -0400
X-MC-Unique: ZaXf_JY_MTKcBZXba3Nfxg-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05M7gN9W078593
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 07:42:23 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05M7gN9W078593
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05M7gN9W078593
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05M7gNFL078592
	for blinux-list@redhat.com; Mon, 22 Jun 2020 03:42:23 -0400
Date: Mon, 22 Jun 2020 03:42:23 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200622074223.GB2690@rednote.net>
References: <3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<CABKqQvEyRFTSLg_38LtPaoUXgiz7Y8vsnM_d3No3fmQ2AmFEmw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABKqQvEyRFTSLg_38LtPaoUXgiz7Y8vsnM_d3No3fmQ2AmFEmw@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.6.18-200.fc31.x86_64
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Amanda:

MeerKat's point is to be tiny. System76 advertise the ability to attach
the short version directly to a monitor so that it takes up no space on
a desk. It's portable only in the sense that it's small and would fit
neatly into any traveling case.

If you want battery powered, well they make a range of compelling
laptops, too.

Putting a battery into the tall MeerKat's second drive compartment is an
interesting notion. Perhaps System76 might find that attractive. Why not
ask them?

And, as for being blocked on boot for lack of mouse or monitor, I think
those days are history on Linux, though I can't specifically speak to
Ubuntu. Here's the mainstream problem with that--it doesn't support
headless deployments, which are fairly common these days.

Best,

Janina

Linux for blind general discussion writes:
> A couple of questions about the MeerKat:
> Do you have to plug in a mouse and/or monitor for it to work when it
> starts up? I had this experience on another Ubuntu system
> Can you get a built-in battery? I don't understand the point of a tiny
> device if you have to plug it in to use it.
> 
> Amanda
> 
> On 6/21/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > My apology for not keeping the initial question in mind.
> >
> > However, I wonder if asking an Android phone to serve this function is
> > more an academic exercise than a practical one at this point?
> >
> > I say this because I'm just now in the process of buying my next
> > (natively) Linux computer, and it's quite small. It comes pretty close
> > to the size of an Android phone. So, I suspect it might be the easier
> > path of practicality is the point.
> >
> > I'm talking about the MeerKat 5 (small) from System76.com (which you can
> > get with up to a 10th generation Intel I7, 64Gb RAM, and 2Tb NVME
> > drive), all in a box about 4.5 inches by 4.5 inches by 1.5 inches tall.
> > The base price is very competitive with a new Android device, imo, with
> > far more going for it when portable Linux is the goal.
> >
> > Which is not to put down academic exercies aimed at hacking Android into
> > something usable. I just think the two questions are worth treating
> > separately.
> >
> > Best,
> >
> > Janina
> >
> > Linux for blind general discussion writes:
> >> I think Amanda is trying to get back to the question I originally posted.
> >> That is, she wants to set up a cell phone with a (mostly) FOSS Android
> >> variant,
> >> in order to have an accessible, extensible, and extremely portable
> >> computer
> >> that is under her (rather than Google's) control.
> >>
> >> Although she might use the Android UI for some tasks, the goal is to have
> >> a
> >> command-line interface and a set of blind-friendly commands that she can
> >> enter
> >> via Bluetooth, SSH, etc.  Longer term, entering commands by braille or
> >> voice
> >> might allow her to dispense with a separate keyboard.
> >>
> >> As my posting indicated, there are several candidates for a base OS, but
> >> it's
> >> hard to tell which one(s) would be a good fit for this use case.
> >> Suggestions?
> >>
> >> - Rich Morin
> >>
> >> > On Jun 15, 2020, at 23:59, Linux for blind general discussion
> >> > <blinux-list@redhat.com> wrote:
> >> >
> >> > I don't understand your question. An Android device is a Linux device.
> >> > It runs on linux kernels, implements several Linux libraries. Its audio
> >> > subsystem is driven by alsa.
> >> >
> >> > The user doesn't see this, of course, because all of that is under the
> >> > hood, so to speak. The user interface on Android is written in Java, so
> >> > bears no resemblance to the graphical desktop one might see on a
> >> > typical
> >> > Linux computer, typically GNOME or KDE.
> >> >
> >> > So, what are you asking? Please say more.
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
> > Executive Chair, Accessibility Workgroup:	http://a11y.org
> >
> > The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> > Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

