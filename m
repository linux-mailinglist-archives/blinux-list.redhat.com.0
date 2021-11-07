Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 69323447132
	for <lists+blinux-list@lfdr.de>; Sun,  7 Nov 2021 03:09:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636250971;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=H1uEsUr/gKhXtBsFy8J4Cz9SQvit8zDoTn6YTH1vVGg=;
	b=HK9TJI+QxU2HWHr2tmEAPpKN+WMLnCh5V/H5+vG94T5brMvDXiUEOcXZ4znsgX15g5VmOI
	xCEz2Uigqg5BtYqZPBwlw0YcUd2YhyRGfWLxDm9GEQgj6VhNnRfx9sBb+hyyN00bALPPHd
	tOgrM5s/c7Ecz5eXwymUvaZ9x4jyoQk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-fXau5ZhxMFOcuzNFf4t9Ow-1; Sat, 06 Nov 2021 22:09:27 -0400
X-MC-Unique: fXau5ZhxMFOcuzNFf4t9Ow-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6546915720;
	Sun,  7 Nov 2021 02:09:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA48C17CD9;
	Sun,  7 Nov 2021 02:09:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F03A84E58E;
	Sun,  7 Nov 2021 02:09:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A7290Dq019915 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 6 Nov 2021 22:09:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B5BDA2026D60; Sun,  7 Nov 2021 02:09:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B05C72026D48
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 02:08:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D649E811E76
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 02:08:57 +0000 (UTC)
Received: from nntp.AegisInfoSys.com (nntp.AegisInfoSys.com [65.242.138.29])
	by relay.mimecast.com with ESMTP id us-mta-539-UJhCeQyyNMO86yhhBygAbA-1;
	Sat, 06 Nov 2021 22:08:56 -0400
X-MC-Unique: UJhCeQyyNMO86yhhBygAbA-1
Received: (from henry@localhost) by nntp.AegisInfoSys.com (8.6.9/8.6.9) id
	WAA25253 for blinux-list@redhat.com; Sat, 6 Nov 2021 22:08:50 -0400
Date: Sat, 6 Nov 2021 22:08:50 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: anonymous postings
Message-ID: <20211107020850.GI17912@nntp.AegisInfoSys.com>
References: <CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<1C66A443-A56F-4B20-895C-DD5B7FB80918@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<20211102083235.nuzcsnnrrr2kxyno@begin>
	<CAPo=n-9A+Q-iGjhEbZbb=0bCdGHBtEsFZH8QoR4bn+AoudT3qA@mail.gmail.com>
	<fce16660-109a-fbea-ad65-75d77c682445@linux-a11y.org>
	<99C93103-154A-4522-A690-81731398338A@cfcl.com>
	<20211104074222.44ad2c12@bigbox.attlocal.net>
	<BE4511BD-CC0D-4215-A136-31FFDA52AE99@cfcl.com>
Mime-Version: 1.0
In-Reply-To: <BE4511BD-CC0D-4215-A136-31FFDA52AE99@cfcl.com>
User-Agent: Mutt/1.4.2.3i
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

mailman2 to mailman3 conversion is still much more of a chore than upgrading
mailman2 to a version that supports "from_is_list", and even then a shim
(which is probably not that complicated for this list's traffic) would be
needed. does anyone know if there is access to the server that's running
this list?

- Henry Yen

On Fri, Nov 05, 2021 at 03:07:37AM -0700, Linux for blind general discussion wrote:
> > On Nov 4, 2021, at 05:42, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > 
> > Tim here.  You're not the only one frustrated by the anonymous postings.
> 
> My take is that it's mostly a technological problem.  Most of the folks posting aren't really trying to be anonymous; they just forget to sign their messages because in most lists this isn't necessary.  So, I've done a bit of digging for a solution; early details follow...
> 
> This list is running on Mailman 2.1.12, which is rather ancient (the current 2.1.x release is 2.1.35).  Complicating matters somewhat, Mailman 2.1.x runs on Python 2, which is going away.  Consequently, most of the development effort is being spent on Mailman 3, which runs on Python 3.
> 
> At some point it would probably make sense to upgrade to a current version of Mailman.  However, this could be quite a hassle (different base language, code base, configuration file syntax, etc.)
> 
> And, in any event, neither branch of Mailman appears to provide any way to identify posters by name without revealing their email addresses.  I have posted issues on both branches; I'll report back if and when I hear anything promising.
> 
> - Rich Morin
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

