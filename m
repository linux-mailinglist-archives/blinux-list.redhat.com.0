Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id B7D251CA619
	for <lists+blinux-list@lfdr.de>; Fri,  8 May 2020 10:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588926658;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=imrE+t0A0l+Zb8wMucNL3a4m2cd5t3p6yEfib3a+K5M=;
	b=eK/7HOQxX5JjtzrUy3NJRSf2e3gtHOYVj+AzFVnsohxCCfz05BMRPtfNyHR5pG4h5oyYaM
	7IO2s/xdVxTIbAzXUUXhLXwrDCQHi7kYWT4dtry8fZngKeKUTYLmNpaInANEvTpig/SOvg
	y+ei9QKrfm6wZH5IzLzSYfqLqRLSbWQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-117-d2x47IPNO7GoyK8JzU9CWQ-1; Fri, 08 May 2020 04:30:56 -0400
X-MC-Unique: d2x47IPNO7GoyK8JzU9CWQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 751FC464;
	Fri,  8 May 2020 08:30:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2D4760CD1;
	Fri,  8 May 2020 08:30:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C2CE4CA95;
	Fri,  8 May 2020 08:30:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0488Ubcu031574 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 8 May 2020 04:30:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9389D10ABC83; Fri,  8 May 2020 08:30:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F0C810ABCA6
	for <blinux-list@redhat.com>; Fri,  8 May 2020 08:30:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C999D80CDB1
	for <blinux-list@redhat.com>; Fri,  8 May 2020 08:30:34 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-278-bTkscOHrPCefP2WrysvxsQ-1; Fri, 08 May 2020 04:30:31 -0400
X-MC-Unique: bTkscOHrPCefP2WrysvxsQ-1
Received: from [192.168.116.128] (unknown [176.230.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id D261B6387466
	for <blinux-list@redhat.com>; Fri,  8 May 2020 08:30:29 +0000 (UTC)
Date: Fri, 8 May 2020 11:30:25 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Tab-Completing a Program After man?
In-Reply-To: <fcca34ac-46b4-cb54-d490-30c87be07187@crosslink.net>
Message-ID: <alpine.DEB.2.11.2005081123120.18476@debian.work>
References: <Pine.LNX.4.64.2005061731420.9482@server2.shellworld.net>
	<alpine.NEB.2.21.2005070001100.25293@panix1.panix.com>
	<Pine.LNX.4.64.2005062106410.11539@server2.shellworld.net>
	<fcca34ac-46b4-cb54-d490-30c87be07187@crosslink.net>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-124350435-1588926628=:18476"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--8323329-124350435-1588926628=:18476
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On Thu, 7 May 2020, Linux for blind general discussion wrote:

> =C2=A0=C2=A0=C2=A0 Tab completion is for finding things in the directory =
you are pointing=20
> to.

Actually, this isn't strictly correct.

The built-in tab completion for the Bash and other  shells does do this.

However, it's possible to configure Bash at least to provide tab=20
completion for specific programs.

The bash-completion package under Debian contains over 600 such completion=
=20
recipes.

Installing it allows me to get tab completion for the man command as=20
discussed here.

However, the original poster was asking about TCSH, which I do not know=20
about.

HTH,
Geoff.

--8323329-124350435-1588926628=:18476
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
--8323329-124350435-1588926628=:18476--

