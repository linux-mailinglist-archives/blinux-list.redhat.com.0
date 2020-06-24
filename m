Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 2B6CE2072FA
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 14:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593000805;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0R8JGHWz//9Mx4iCvOLmKaTNHGnlew34Vw523+ArH7M=;
	b=US4e2Y5Tm5nXzAbFJzcBfjW898Ada384Ng9VC4RHMVkycOZ4ejGvfabPNksSZypcq4Wn45
	uaLqXFWxZQ+t/wT2bcrxyp0froQBRUqJDAyXCkLOm6BPKp3zgrMX/ACzy7zY6QRe8WlGTs
	evO4acBNoVfWr/blmclbu48gyq/yXxU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-1AZnEo5_PgGMBvS6flvrEw-1; Wed, 24 Jun 2020 08:13:22 -0400
X-MC-Unique: 1AZnEo5_PgGMBvS6flvrEw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 109C810059A0;
	Wed, 24 Jun 2020 12:13:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E8D160C1D;
	Wed, 24 Jun 2020 12:13:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9A9E51809547;
	Wed, 24 Jun 2020 12:13:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OCDDFT002366 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 08:13:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CB0D22156A22; Wed, 24 Jun 2020 12:13:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5FB3217B438
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 12:13:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7BC25858EE2
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 12:13:10 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-409-znyrB_1ONNWxpFc_Nis7Gw-1; Wed, 24 Jun 2020 08:13:08 -0400
X-MC-Unique: znyrB_1ONNWxpFc_Nis7Gw-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05OCD7Vw216338
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 12:13:07 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05OCD7Vw216338
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05OCD7Vw216338
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05OCD7ZU216337
	for blinux-list@redhat.com; Wed, 24 Jun 2020 08:13:07 -0400
Date: Wed, 24 Jun 2020 08:13:07 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200624121307.GH2690@rednote.net>
References: <9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<2A1D7016-E760-46B1-BB5E-3A7C56B8BC88@gmail.com>
	<CAO2sX308N-y=iFGV53feLkM3_4BqEcTDdjSOXoSL+BLKh8KneA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX308N-y=iFGV53feLkM3_4BqEcTDdjSOXoSL+BLKh8KneA@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.6.18-200.fc31.x86_64
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I believe we once knew it as Suse Blinux. This list may have been named
that way.

If memory serves, it was developed by Marco Skambraks.

I wasn't aware it was being maintained, though.

Best,

Janina

Linux for blind general discussion writes:
> SBL is a console screen reader, and one of the reasons it's my
> favorite is that screen review is as simple as holding down caps lock
> and using the arrow keys(left/right for character-by-character,
> up/down for line-by-line).
> 
> It's the default text-mode screen reader used by Knoppix when run in
> it's accessibility-focused Adriane mode and is also available as an
> RPM package in OpenSuSe, but to my knowledge, those are the only
> distros it's avaialable for.
> 
> No clue where it lies on the kernel versus userspace spectrum(espeakup
> depends on the speakup kernel module while part of the original
> impetus for Fenrir was to create a fully userspace screen reader that
> would work on systems that exclude speakup from their kernels(and
> while I don't understand Kernel development much, I understand speakup
> has been stuck in something called staging for years and that only the
> more inclusive builds of Linux import anything from staging).
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

