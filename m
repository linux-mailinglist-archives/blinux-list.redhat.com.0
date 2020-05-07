Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 2125A1C92DA
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 16:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588863590;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tUuxKAqP+ywKb1OwWftpnJvTTceWkRpufocyDyI38Ss=;
	b=Z2RE+3B5TmrTzpP6ixNTMFJHdhqR7I10T9sdsxUFoEQLyTZx1dKa9CsfFhUElWopXHMpNc
	QwaAq3jsHfvskr6mhFzfT1b+Oju1I5iIvFLABLd7ZLEcxLavEzlSjDvKqM7/1PiiBFgGAq
	s92RVpyW5uua6Gr3Css7mYIghmq6KMY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-251-JGtsEeRgMDaGZudDyvdofg-1; Thu, 07 May 2020 10:59:47 -0400
X-MC-Unique: JGtsEeRgMDaGZudDyvdofg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5CCDF800688;
	Thu,  7 May 2020 14:59:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05D791C933;
	Thu,  7 May 2020 14:59:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E3BB34CAA0;
	Thu,  7 May 2020 14:59:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047Exbk7031193 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 10:59:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 61A9010BBCD2; Thu,  7 May 2020 14:59:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E23510BBCD0
	for <blinux-list@redhat.com>; Thu,  7 May 2020 14:59:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CE7288855D
	for <blinux-list@redhat.com>; Thu,  7 May 2020 14:59:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-493-SRWReCnFP4u8AhClQWzq9w-1; Thu, 07 May 2020 10:59:32 -0400
X-MC-Unique: SRWReCnFP4u8AhClQWzq9w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49HxSh4kxGzVYn
	for <blinux-list@redhat.com>; Thu,  7 May 2020 10:59:32 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49HxSh3rXFzcbc; Thu,  7 May 2020 10:59:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49HxSh3M77zcbV
	for <blinux-list@redhat.com>; Thu,  7 May 2020 10:59:32 -0400 (EDT)
Date: Thu, 7 May 2020 10:59:32 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Tab-Completing a Program After man?
In-Reply-To: <Pine.LNX.4.64.2005062106410.11539@server2.shellworld.net>
Message-ID: <alpine.NEB.2.21.2005071058310.20641@panix1.panix.com>
References: <Pine.LNX.4.64.2005061731420.9482@server2.shellworld.net>
	<alpine.NEB.2.21.2005070001100.25293@panix1.panix.com>
	<Pine.LNX.4.64.2005062106410.11539@server2.shellworld.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047Exbk7031193
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm not even certain this is possible with man.  Perhaps whatis or
appropos offers more options.
On Wed, 6 May 2020, Linux for blind general
discussion wrote:

> Date: Thu, 7 May 2020 00:07:45
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Tab-Completing a Program After man?
>
> Just typing
> man 1 lyn
> give same results.
> Chime
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

