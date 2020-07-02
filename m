Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 6BE0B212404
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jul 2020 15:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593694868;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZljeCJ7dsHSTGlTxhTcuzpXZD272AL7+6Gk3UAcJvEI=;
	b=HAjrllcBtiwTah/GBocY76HMsOuIPTBKHnL51mYAnSUm9uK+oWXbvvwwnimW1yS1FmShXf
	USSifKs1HliisuFtG86LXBwPaIXa/BbhX9Xn5sOmhChbgdkLwflBw0gTgDpttOSJWbyQDo
	KSXMqGY6sWtd5nBgFf2fDxonnC5x+6E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-483-sInppS5mMDG_hpzmU6jurA-1; Thu, 02 Jul 2020 09:01:06 -0400
X-MC-Unique: sInppS5mMDG_hpzmU6jurA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F18B108BD09;
	Thu,  2 Jul 2020 13:01:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32A9B2B4CE;
	Thu,  2 Jul 2020 13:01:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D3F876C9C6;
	Thu,  2 Jul 2020 13:01:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 062Cus1o025907 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jul 2020 08:56:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BC57A207AC2B; Thu,  2 Jul 2020 12:56:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B77BF206323A
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 12:56:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 198B2800260
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 12:56:47 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-94-w_3R2615NCmzDe1o4yQGlg-1; Thu, 02 Jul 2020 08:56:44 -0400
X-MC-Unique: w_3R2615NCmzDe1o4yQGlg-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 062Cuis4235586
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 2 Jul 2020 12:56:44 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 062Cuis4235586
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 062Cuis4235586
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 062CuibX235585
	for blinux-list@redhat.com; Thu, 2 Jul 2020 08:56:44 -0400
Date: Thu, 2 Jul 2020 08:56:44 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: using orca wile using jack
Message-ID: <20200702125644.GC2669@rednote.net>
References: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
	<CAPo=n-8eE+AtR2fp8LHn0oJSL19o94n6Tdv7NkAZ3ugNZ7cr6A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPo=n-8eE+AtR2fp8LHn0oJSL19o94n6Tdv7NkAZ3ugNZ7cr6A@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.6.19-200.fc31.x86_64
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

You don't need pulse to use jack.

Best,

Janina

Linux for blind general discussion writes:
> Hi,
> 
> One option is to use pulseaudio and have pulse output to jack. This only
> works with jack2 with dbus support, and you will need the pulseaudio jack
> plugins (in arch this is in a separate package for instance).
> You then start jack with "jack_control start", after which you should make
> sure jack is selected as output sink for pulse.
> 
> Regards,
> 
> Rynhardt
> 
> On Tue, 30 Jun 2020, 19:24 Linux for blind general discussion, <
> blinux-list@redhat.com> wrote:
> 
> > is it possible to use jack wile using orca? How should I configure it?
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

