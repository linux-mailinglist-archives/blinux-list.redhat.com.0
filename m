Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 974BA297DF1
	for <lists+blinux-list@lfdr.de>; Sat, 24 Oct 2020 20:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603563071;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PcdyNRFV8uv3KO4cHGkxoKQHR674e1r6o3wuK89ggiA=;
	b=fxl6szd5BCWyUE5KwGjhxk6ueIKIZGFeIOg54gYAVYL+/k9cB+b09c/nB4FLUxOd2pzS06
	3UZsrEZnICIFZkmzYcwvWtsDB9Xu6Dxb/PHppkkincbrp/NP9V5wUlBFiswQK11n8lM6Vq
	gxjskzElXzMwbKbuy6R6cK1RZyEy+A4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-444-vYZgbLTKPc2AobpuyZ7svQ-1; Sat, 24 Oct 2020 14:11:08 -0400
X-MC-Unique: vYZgbLTKPc2AobpuyZ7svQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 790B4107B471;
	Sat, 24 Oct 2020 18:11:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 897A160C84;
	Sat, 24 Oct 2020 18:11:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DCF8458123;
	Sat, 24 Oct 2020 18:10:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09OI5Qgv023015 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Oct 2020 14:05:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 95E032166BA2; Sat, 24 Oct 2020 18:05:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 906162166BA0
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 18:05:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 40F19185A78B
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 18:05:24 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-498-nCbPzZhxOh6oyZH4e56BsQ-1; Sat, 24 Oct 2020 14:05:20 -0400
X-MC-Unique: nCbPzZhxOh6oyZH4e56BsQ-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 09OI5I4H284246
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 18:05:18 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 09OI5I4H284246
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 09OI5I4H284246
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 09OI5I6T284245
	for blinux-list@redhat.com; Sat, 24 Oct 2020 14:05:18 -0400
Date: Sat, 24 Oct 2020 14:05:18 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: building kernel for ac97 sound card
Message-ID: <20201024180518.GB2013@rednote.net>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
X-Operating-System: Linux opera.rednote.net 5.8.15-101.fc31.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yes, the problem is that not all mb provide a speaker for pcspkr. So,
even with the module loaded, there may be nothing for it to drive.

This is exactly the problem I'm having with my System76 mini PC. Lovely
box in many ways, but no speaker. I can load pcspkr, but I get no sound.

I've been kicking myself over this issue since acquiring this system
earlier this year. Never again will I make that mistake.

Janina

Linux for blind general discussion writes:
> The sound card drivers are modules, so just build the module if need be.
> Ac97 sounds pretty standard to me though, so I think it should be part of
> the standard setup already.
> The pc speaker is something else though.
> There is a module called pcspkr which allow the use of that.
> All pc's does not have a speaker though.
> Maybe I am missing something in your message?
> Regards, Willem
> 
> 
> 
> 
> On Fri, 23 Oct 2020, Linux for blind general discussion wrote:
> 
> > I have an ac97 sound card and a c-media usb sound card on a system.  I
> > have only had success activating the pcspeaker when building a kernel for
> > gentoo.  I have no clue as to what to enable to get this done.  This is
> > even after having gone through lspci output and lsmod output with the
> > install-minimal dvd running the operating system  The speaker-test utility
> > puts out sound in the chroot environment and is silent after first boot
> > into the new environment made by the compiled kernel.
> > 
> > 
> > --
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
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

