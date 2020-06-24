Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 1AE0520732C
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 14:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593001202;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/tcWqyiw4Crxxq8Fh3V8SYNPktXeVcf8s95ye0TWGPY=;
	b=E0fOmQN5TPuUmscZB4oDanUTE0H9gujCuKadznxE3va30FpktGNH5YZafShJWUFibDxNBF
	ibZqrDuvftkpvLIlgRB4UNLQGJSW9sfdSp6mo9IdH6ENlZqs80gOsvP5b/v2YrZT8VUWXA
	6KCoguNnRAU2mFhilepxKE+qp+qucR0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-ct9nlp5zMzOGhFUATR2QMA-1; Wed, 24 Jun 2020 08:20:00 -0400
X-MC-Unique: ct9nlp5zMzOGhFUATR2QMA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46FD518FE863;
	Wed, 24 Jun 2020 12:19:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4851D1001925;
	Wed, 24 Jun 2020 12:19:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D0DEA97019;
	Wed, 24 Jun 2020 12:19:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OCJqpJ003219 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 08:19:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3020B2029F83; Wed, 24 Jun 2020 12:19:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BE8F20182A6
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 12:19:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C55E858F02
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 12:19:50 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-308-dSkluxJwP4uD7ewHQQNYQg-1; Wed, 24 Jun 2020 08:19:47 -0400
X-MC-Unique: dSkluxJwP4uD7ewHQQNYQg-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05OCJlhm216613
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 12:19:47 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05OCJlhm216613
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05OCJlhm216613
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05OCJluw216612
	for blinux-list@redhat.com; Wed, 24 Jun 2020 08:19:47 -0400
Date: Wed, 24 Jun 2020 08:19:47 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200624121947.GI2690@rednote.net>
References: <3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<59FA6586-BB9F-4405-9BDC-41565123A17E@gmail.com>
MIME-Version: 1.0
In-Reply-To: <59FA6586-BB9F-4405-9BDC-41565123A17E@gmail.com>
X-Operating-System: Linux opera.rednote.net 5.6.18-200.fc31.x86_64
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Disposition: inline

How? I liked their hardware specs at what seemed fair prices. I also
want to try the Open Hardware they feature.

I don't want to pay for Windows unless I'm actually buying Windows. That
little Bill Gates tax has always offended me.

They also seem to get good reviews.

They also seem to provide machines for all kinds of environments. The
MeerKat is by no means their top end, but it will meet my current needs.
Juryh's out whether I'll stay with Ubuntu or blow it away for Arch. I
will almost certainlyh repartition to my requirements, so mayh install
Arch alongside their installation of Ubuntu until I'm comfortable that
my installation meets my needs better.

Hope that answers your question.

Janina




Linux for blind general discussion writes:
> How did you decide on System 76 as and not some other machine and replacing the operating system of one bought from somewhere else?
> Is it the idea of a company that deals with linux all the time?
> 
> > On Jun 21, 2020, at 2:47 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > 
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
> >> That is, she wants to set up a cell phone with a (mostly) FOSS Android variant,
> >> in order to have an accessible, extensible, and extremely portable computer
> >> that is under her (rather than Google's) control.
> >> 
> >> Although she might use the Android UI for some tasks, the goal is to have a
> >> command-line interface and a set of blind-friendly commands that she can enter
> >> via Bluetooth, SSH, etc.  Longer term, entering commands by braille or voice
> >> might allow her to dispense with a separate keyboard.
> >> 
> >> As my posting indicated, there are several candidates for a base OS, but it's
> >> hard to tell which one(s) would be a good fit for this use case.  Suggestions?
> >> 
> >> - Rich Morin
> >> 
> >>> On Jun 15, 2020, at 23:59, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >>> 
> >>> I don't understand your question. An Android device is a Linux device.
> >>> It runs on linux kernels, implements several Linux libraries. Its audio
> >>> subsystem is driven by alsa.
> >>> 
> >>> The user doesn't see this, of course, because all of that is under the
> >>> hood, so to speak. The user interface on Android is written in Java, so
> >>> bears no resemblance to the graphical desktop one might see on a typical
> >>> Linux computer, typically GNOME or KDE.
> >>> 
> >>> So, what are you asking? Please say more.
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
> 
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

