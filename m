Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id E4D961190E7
	for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2019 20:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576006963;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=w6Nf3qT3BiMtU43OAIbIysLdwiflLe/6JQC3BP35Wz0=;
	b=eeYbMDDLPRmAjhEtJO/fDVvxKD84PNt0qdQE6oaiO9Nw1BY0vZfL/hO00dEL4GKs9yl39K
	8CqJ7qYpJ6gbPbel9W66VXFgqoQgTrCUgnBc2IDvIvE6i9KECB7B8zObw+df4xZsKbkNhQ
	GLEulzdEMMJ+VrafunyOBHAIrvldAFE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-qYPcwFLxOKiUxLw2qDSo9A-1; Tue, 10 Dec 2019 14:42:39 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B45D107ACE5;
	Tue, 10 Dec 2019 19:42:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DE4960BE2;
	Tue, 10 Dec 2019 19:42:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E633765D2B;
	Tue, 10 Dec 2019 19:42:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBAJgV4f013902 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Dec 2019 14:42:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9E7B9F77CF; Tue, 10 Dec 2019 19:42:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 99DCDF18D6
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 19:42:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 49FAA912542
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 19:42:29 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-180-U-dLuS4HNVGzRY3wXUHvdw-1; Tue, 10 Dec 2019 14:42:25 -0500
Received: from panix2.panix.com (panix2.panix.com [166.84.1.2])
	by mailbackend.panix.com (Postfix) with ESMTP id 47XVns40sQz1YXH
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 14:42:25 -0500 (EST)
Received: by panix2.panix.com (Postfix, from userid 20196)
	id 47XVns2zx0z1ZVx; Tue, 10 Dec 2019 14:42:25 -0500 (EST)
Date: Tue, 10 Dec 2019 14:42:25 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google high security and linux command line email programs
Message-ID: <20191210194225.GA18557@panix.com>
References: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-MC-Unique: U-dLuS4HNVGzRY3wXUHvdw-1
X-MC-Unique: qYPcwFLxOKiUxLw2qDSo9A-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBAJgV4f013902
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Check out surfraw.

On Tue, Dec 10, 2019 at 02:26:35PM -0500, Linux for blind general discussion wrote:
> Has anyone here gone high security with google and generated an
> app-password for their command line email apps?  If so, which apps?
> I have and can use a few different apps but really want to know what
> google will be limiting me to with two-factor authentication and an
> app-password before I enable two-factor authentication.  If there's no
> apps this can be done with, no point enabling two-factor authentication
> and trying to generate an app password for any of these.  When google
> security is after users to enable higher security and google recognizes
> linux devices have been and are likely to continue being used on an
> account those messages ought to include a list of apps that will work in
> linux.
> 
> 
> 
> --
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

