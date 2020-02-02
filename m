Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 7CADE14FB48
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 03:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580612091;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OiNvJokXx4/BvMVPguw+JpbyBO3CsXVjxH+qG2lLBa0=;
	b=a6a2R1d7MdI/+MACLaK4+YCdDSrUz14gicgLOdq0PazXLS0LcS2bK2ST/EhqrjDizGmqu7
	YIQR+ThPvgHSVX3XNwvtjyrkM6NnNCgakzyo+knVYc20BvyR6K2kNxX5+hHA4VZbfLCY1c
	V9B4tNRh3TFpFTWi8VApkc1ijBcPysc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-Yov2dqZeOjClALf-Bl2Ktw-1; Sat, 01 Feb 2020 21:54:48 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9994B107ACC7;
	Sun,  2 Feb 2020 02:54:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71B095C299;
	Sun,  2 Feb 2020 02:54:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 001FA85CF2;
	Sun,  2 Feb 2020 02:54:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0122sboh010707 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Feb 2020 21:54:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 14FDF2166B28; Sun,  2 Feb 2020 02:54:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10DBA2166B27
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 02:54:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 690D185A33E
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 02:54:34 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-406-psg_a0lcM62AnwOE27W-fQ-1; Sat, 01 Feb 2020 21:54:31 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 489Fsy5tZGz1fNL
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 21:54:30 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 489Fsy4BGbzcbc; Sat,  1 Feb 2020 21:54:30 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 489Fsy3c5jzcbV
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 21:54:30 -0500 (EST)
Date: Sat, 1 Feb 2020 21:54:30 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A Live Boot Image for the Mac that Talks
In-Reply-To: <E1iy5Fq-0006fl-BN@wb5agz>
Message-ID: <alpine.NEB.2.21.2002012152410.18123@panix1.panix.com>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
	<d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
	<10e5062a-cb11-97d5-e394-2042b9dedfaf@gmail.com>
	<E1iy5Fq-0006fl-BN@wb5agz>
MIME-Version: 1.0
X-MC-Unique: psg_a0lcM62AnwOE27W-fQ-1
X-MC-Unique: Yov2dqZeOjClALf-Bl2Ktw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0122sboh010707
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Certain distros specifically state to not use dd and to use other
copying utilities since those distros used structures dd cannot copy
well.  You'll find them by reading the copying instructions as I have
from time to time.

On Sat, 1 Feb 2020, Linux for blind general discussion wrote:

> Date: Sat, 1 Feb 2020 21:44:58
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: A Live Boot Image for the Mac that Talks
>
> 	I've been using unix commands of one kind or other for 30
> years + and dd is the goto utility when copying disks.  What else should
> we use if not dd?
>
> 	I have just tried two different thumb drives with unix
> distributions on them and both throw an error if you plug them in
> to the mac.  Both drives also mount without incident on a debian
> user system
>
> 	The different format someone mentioned is called ufs or
> something similar
>
> Martin
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

