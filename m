Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D83D5FD65A
	for <lists+blinux-list@lfdr.de>; Thu, 13 Oct 2022 10:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665650547;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pZoy7gQrUwPhN+38EmdVLJhfseTHG3PkOWe/myHKHdE=;
	b=Im7jLlm9yUG9sqB/AvrLJROHpMTNpTcFIYQ5BAchw+idgvrW4Lp/wP3D11iDl6nD8/Llgg
	MfQDBSq+Ghwt/yaldJgF6HK6KIFKN0HJL/y/dIRoij8Ftf5wLWAvj9CJZWbIfHxCPr9bG2
	xxo6y+1H5fUmmMKyn4/C34KLjZ6k9sA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-489-xaK_BzNoPuys6SI2FdE3ew-1; Thu, 13 Oct 2022 04:42:23 -0400
X-MC-Unique: xaK_BzNoPuys6SI2FdE3ew-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9F5511871CD8;
	Thu, 13 Oct 2022 08:42:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3E4F440C83C5;
	Thu, 13 Oct 2022 08:42:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3F13519465A3;
	Thu, 13 Oct 2022 08:42:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Processed: mail.comproom.co.uk, Thu, 13 Oct 2022 09:42:00 +0100
 (not processed: message from trusted or authenticated source)
To: <blinux-list@redhat.com>
References: <mailman.7301.1665480524.6076.blinux-list@redhat.com>
 <mailman.33.1665650190.3007.blinux-list@redhat.com>
In-Reply-To: <mailman.33.1665650190.3007.blinux-list@redhat.com>
Subject: RE: New user question
Date: Thu, 13 Oct 2022 09:42:01 +0100
MIME-Version: 1.0
Thread-Index: AQJi87l/jbGBvpnvmwTZ5WGL+bfbrgML0wB8rN94/PA=
Message-ID: <mailman.38.1665650537.3003.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-gb
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Yes, as I've read all your great responses on this, I realise that the VPS
itself doesn't have to talk, as I can SSH into it or use PuTTY, both of
which are accessible in Windows.

Thank you all.

All the best

Steve

-----Original Message-----
From: Blinux-list <blinux-list-bounces@redhat.com> On Behalf Of Linux for
blind general discussion
Sent: 13 October 2022 09:32
To: blinux-list@redhat.com
Subject: Re: New user question

On 10/11/22 11:24, Linux for blind general discussion wrote:
> Hi,
>
>
>
> I know the basics of Linux, but my question is this.
>
>
>
> I am totally blind and want an accessible Linux. I have always hosted 
> my own websites using Vultr, https://www.vultr.com.
>
>
>
> I currently have Windows Server 2012, but rather than upgrade Windows, 
> I thought I might try to host my sites in Linux.
>
>
>
> I am running Apache 2.24, MySQL and PHP etc.
>
>
>
> All this to ask what is the best Linux distro to install if I deploy a 
> Vultr virtual server? I have access to several distros, and would 
> probably install a command line version only, rather than use a Linux 
> GUI, but what distro would you guys recommend?
>

In headless mode, the distro that you will pick is not relevent as you will
do everything from the CLI!

Managing a server from Windows or linux is doable and accessible.

Note that I do not use Vultr.

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

