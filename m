Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 674593E0C79
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 04:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628130752;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yvCKL5vkVuTk9tBvO/b1K5Y3dBWqbfwtBwWY5fprSH8=;
	b=YxhhhLN/V0iJKEdCv/B7PVK2UGrqvNpNktNJijrjbxCQ6Biaj/PcBng4wRoux9M7Ngl6oe
	6h2lvI446GtOnlSfXtm4tpqwWdr1eDrQJgkF+q9ufCnwLd7jB8IRcJM9NBXmWn6Jfh3IUO
	u33KNay3TyrZA0JwwFqjM0l3B9GyD08=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-463-EWeyFXk9MwGBJnP0GV9dvA-1; Wed, 04 Aug 2021 22:32:31 -0400
X-MC-Unique: EWeyFXk9MwGBJnP0GV9dvA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D3791084F4C;
	Thu,  5 Aug 2021 02:32:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07C41781EA;
	Thu,  5 Aug 2021 02:32:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D55C5181A3E9;
	Thu,  5 Aug 2021 02:32:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1752WNIL007194 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 22:32:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 72D311032B6; Thu,  5 Aug 2021 02:32:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DC4B103401
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 02:32:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A9799800963
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 02:32:20 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-512-9AFl_hGNM6OwlJSXZfw23A-1; Wed, 04 Aug 2021 22:32:18 -0400
X-MC-Unique: 9AFl_hGNM6OwlJSXZfw23A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GgCLV0Q8Gz4DCf
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:32:18 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GgCLT6y5nzcbc; Wed,  4 Aug 2021 22:32:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GgCLT6XnGzcbW
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 22:32:17 -0400 (EDT)
Date: Wed, 4 Aug 2021 22:32:17 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Solus DE observations
In-Reply-To: <EA5E1F3E-DE2D-46DB-B69F-D48C0CE6E337@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108042232001.28896@panix1.panix.com>
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
	<dfd09fe5-f568-1553-82a5-650ab234b84d@gmail.com>
	<da3aefc4-efce-2540-9eba-d6ddbd0a6c7e@gmail.com>
	<96BBED50-5B5B-4EED-B882-7CC419DE9B36@gmail.com>
	<224c29c2-1089-4113-ffce-ce3096c1c6c5@gmail.com>
	<EA5E1F3E-DE2D-46DB-B69F-D48C0CE6E337@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You could try poweroff once in the terminal.


On Wed, 4 Aug 2021, Linux for blind general discussion wrote:

> I shut down by going in to terminal, and typed
> reboot
> and that did it.
> I am sure budgie has some key shortcut for shutting down.
>
> > On Aug 4, 2021, at 7:30 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > You could hit the power-off button, and it will ask what you want to do.
> >
> >
> > --  Dave  --
> >
> >
> >
> > Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
> >
> > On 8/4/21 7:52 PM, Linux for blind general discussion wrote:
> >> A very basic question, how may I shutdown or restart a budgie system?
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

