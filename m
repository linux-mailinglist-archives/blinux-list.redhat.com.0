Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D33D497D7B
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jan 2022 11:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643021822;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TorV2o1+2BCRIO/rLq6JmNF9uiMWAz1dL+xAwejF0O0=;
	b=b8WYY7e2jpidhJHE3M7MtJSMCoNdquG8qCHNc2OAK+1eb0kcDzX51ZdEqpom9I+jecAEWo
	lniN1r36FMoqozGAGWMDkkqH/MKB3pmwU+gRZjnML/Ot1Av3iRqT2rkefMBJ2vjEi25npS
	dje38wAi2DHHgB5svamItFetm5JKibM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-625-qBHHIHr4PZ-EgmTvOIJwgg-1; Mon, 24 Jan 2022 05:56:58 -0500
X-MC-Unique: qBHHIHr4PZ-EgmTvOIJwgg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DDCB118C89DA;
	Mon, 24 Jan 2022 10:56:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F8F77A2EF;
	Mon, 24 Jan 2022 10:56:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 40D181809CB8;
	Mon, 24 Jan 2022 10:56:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20OAudwC025380 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jan 2022 05:56:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EA4A0C08F3B; Mon, 24 Jan 2022 10:56:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E6C82C202CB
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 10:56:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C65F2299E742
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 10:56:38 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-195-YTt6F0glN-y8oOPEyIduRg-1; Mon, 24 Jan 2022 05:56:36 -0500
X-MC-Unique: YTt6F0glN-y8oOPEyIduRg-1
Received: from [192.168.116.128] (unknown [176.230.59.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id A1ED3382A7DD
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 10:56:34 +0000 (UTC)
Date: Mon, 24 Jan 2022 12:56:34 +0200 (IST)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running a Linux VM on Windows and making it talk?
In-Reply-To: <YelburhFkqY1AXFh@k.n5t.de>
Message-ID: <alpine.DEB.2.11.2201241251110.6762@debian.work>
References: <CABKqQvErSiA=YnCNo6MjtANW8LyqW+sQi=o_wPNPc0gTAZE5Pg@mail.gmail.com>
	<alpine.DEB.2.11.2201201340550.1250@debian.work>
	<YelburhFkqY1AXFh@k.n5t.de>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Thu, 20 Jan 2022, Linux for blind general discussion wrote:

> I am also using VMware player and Workstation Pro on Windows 10 for linux
> guests and generaly I am very happy with this kind of setup. I've activated
> the enhanced keyboard drivers from VMware and I can not say that they cause
> problems with NVDA or Jaws, but maybe I just do not notice them :-). What
> kind of problems are this? Do you have any examples?

I'm sorry, I don't have specifics.  I've not done it myself but a friend 
told me they had all sorts of problems with it. I will ask for details.

> TBH I do not even know what the enhanced keyboard driver does... If it
> rellay causes problems maybe I should also uninstall it...

Well if it works for you then I'd leave it.

> BTW.: Have you managed  to copy content from the Windows clipboard into a
> console of the linux guest or do you know if this is possible by using just
> the keyboard? Is this what the enhanced keyboard driver is necessary for?
> And is tere a way to copy the content of the clipboard from the Linux guest
> to the Windows host?

>From what I've managed to find, the only way this is provided is via the 
guest desktop.  I've not found a way to use the clipboard to share between 
the Linux CLI and the Windows host.

This frustrates me as I'm sure the data from the clipboard could be 
accessed via some API in the CLI.  I'd be willing to look into this 
further.

For now, I have the documents folder mounted in the Linux guest (by 
default it shows up under /mnt/hgfs/Documents), and I use a text file to 
share stuff between the host and guest.

Cheers,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

