Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id EC9B43EA8D7
	for <lists+blinux-list@lfdr.de>; Thu, 12 Aug 2021 18:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628787340;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ztCa1tvCfdtU2kURZ8PpmXEwswbo4Cdk2r9Fxsa3Wok=;
	b=amaoK4pVDnJtZgysZG7JPzG2/zvvE0SRKQYPMnmhNa3VL8Sg6+HFMMcJvquMr1uM9dOnY6
	1iylOnyfF4ELlkk/u9f5RDp8MTWg2SiYMilwQP+mKpnToax9YiVQDm3O4ZRMmRRsTS6TXx
	yfvyDtvkLl89bcCeMxPWaMuVXOV9nRg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-17-B_rU-IRYP8Wz0_CnRbBL3g-1; Thu, 12 Aug 2021 12:55:38 -0400
X-MC-Unique: B_rU-IRYP8Wz0_CnRbBL3g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5582C1008065;
	Thu, 12 Aug 2021 16:55:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3273BE716;
	Thu, 12 Aug 2021 16:55:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D9A954BB7C;
	Thu, 12 Aug 2021 16:55:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17CGtV4h025344 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 12 Aug 2021 12:55:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 448F8202BFC0; Thu, 12 Aug 2021 16:55:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4038E202BFBF
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 16:55:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1607101A54C
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 16:55:26 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-438-BkVB1lqONCC2fx7p_OMKZA-1; Thu, 12 Aug 2021 12:55:24 -0400
X-MC-Unique: BkVB1lqONCC2fx7p_OMKZA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Glt981R3jzPmH
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 12:55:24 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Glt981GsXzcbc; Thu, 12 Aug 2021 12:55:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Glt981D1XzcbW
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 12:55:24 -0400 (EDT)
Date: Thu, 12 Aug 2021 12:55:24 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Installing using a service like "Be My Eyes"
In-Reply-To: <f350ad42-2eff-9ca8-429d-59c13e839627@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108121254180.9633@panix1.panix.com>
References: <f350ad42-2eff-9ca8-429d-59c13e839627@gmail.com>
MIME-Version: 1.0
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
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

Jenux has archlinux in it along with android, you choose what you want to
install.  You install jenux when the menu comes up to get archlinux on a
system.


On Thu, 12 Aug 2021, Linux for blind general discussion wrote:

> Hi all,
>
>
> I know that Distro-hopping really sucks, but we do it anyway.
>
>
> I am asking about installing with aid from a service such as be-my-eyes,
> because, as we all know, distros like Manjaro uses the Calamaris installer,
> which, last I checked, is totally inaccessible with Orca, and in many cases,
> Orca is not even included in the live environments.
>
>
> I would really like to run either Arch, which I always fail to install
> correctly for some or other reason, or an Arch derivative, but, Calamaris,
> enough said.
>
>
> If anyone knows whether you can install using Calamaris with the keyboard
> only, or if there is any Arch derivatives with an accessible installer, I
> would be really grateful.
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

