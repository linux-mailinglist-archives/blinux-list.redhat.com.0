Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1FB4A2C0D
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 06:58:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643435887;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f+FyV6YhqaWrRhtGycw3z/Fx1ATSiu43wpKD1AzTmF8=;
	b=AHCMA8C/x9LWkLf0JOnVxNJSPDuimdx4HXh9RKHbSxJmr90Kj7nwT1+As7EURq+XdI7BA6
	iBNU8hG3fUPw8v+a+o043T9MBuetsUxIrGACGWkuHLzPTlIwRHHRR1eaF54vNyqDO3x/8n
	BJ0AePYAwDkQVUWSMvWdEuHU1bPPDk8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-16-xdp5fZtbMiuqb6d07-D0xA-1; Sat, 29 Jan 2022 00:58:03 -0500
X-MC-Unique: xdp5fZtbMiuqb6d07-D0xA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A3E753D98;
	Sat, 29 Jan 2022 05:57:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0822479455;
	Sat, 29 Jan 2022 05:57:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BABCF4BB7C;
	Sat, 29 Jan 2022 05:57:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20T5vpcJ018794 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 00:57:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3E8511121322; Sat, 29 Jan 2022 05:57:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A3431121315
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 05:57:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B91B800882
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 05:57:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-85-KvJaCweNOkK1JDkcuB9axg-1; Sat, 29 Jan 2022 00:57:45 -0500
X-MC-Unique: KvJaCweNOkK1JDkcuB9axg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jm3Ws2pg1z3mcg
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 00:57:45 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jm3Ws214Jzcbc; Sat, 29 Jan 2022 00:57:45 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jm3Ws1c6lzcbP
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 00:57:45 -0500 (EST)
Date: Sat, 29 Jan 2022 00:57:45 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
In-Reply-To: <55d93fef-37e8-765c-5f48-fe5e859f052f@gmail.com>
Message-ID: <42544918-c8cc-417-de7c-950c0ef5b15@panix.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<84ff2447-0200-a2ae-1d7b-1d62d6853c17@gmail.com>
	<79793ef9-1158-eb3c-cfdb-8cbe2aa9bb1@panix.com>
	<9b23be50-9125-dbe1-66f4-03936e6c2aa1@gmail.com>
	<55d93fef-37e8-765c-5f48-fe5e859f052f@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Bare metal means no dual boot, no vm, an ssd or ide or scsi hard drive is
used.


On Fri, 28 Jan 2022, Linux for blind general discussion wrote:

> what is bare metal?
>
> I keep hearing that term zand am wanting to find out more inmfo on it
>
> On 1/27/2022 6:10 PM, Linux for blind general discussion wrote:
> > It will be interesting to find if archlinux on bare metal using
> >> pipewire runs into sound problems.
> >
> >
> > I don't think it will have sound problems. Everywhere I run Pipewire on bare
> > metal, it just works with no major problems, and actually few minor
> > problems. Fedora and Arch both seem to work on bare metal with Pipewire.
> > Virtual machines, especially Qemu and I believe VirtualBox as well, seem to
> > be the only places where it appears to have trouble.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

