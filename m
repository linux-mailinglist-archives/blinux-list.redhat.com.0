Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id E4627119290
	for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2019 21:57:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576011475;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/A+0FKGoGmqG4dTGRIbW3RIqzGITWz0+yOOb8u9I0IQ=;
	b=KSsu0TAMtgiudFUoQu8ePRGk+Jg7nnvV27Auo/Ipm9UklxAFAlaOWeB5CPi/UEFtmQ8Oiv
	edSv1gysq+B07HAbyImXMjhNyxVmNwxtXTi60nLi/4l2nRJvSh0eByMU9Ji99XJfN3fVdZ
	lGOSrV5R91ZxrUgpXCP8Yl/DBotX+9A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-m2L4C3zJOGmXNRzDJiYjYw-1; Tue, 10 Dec 2019 15:57:53 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C74C800D4E;
	Tue, 10 Dec 2019 20:57:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADE255D6A5;
	Tue, 10 Dec 2019 20:57:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B66EE18089CD;
	Tue, 10 Dec 2019 20:57:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBAKveKj026512 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Dec 2019 15:57:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 65E40215ADC2; Tue, 10 Dec 2019 20:57:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 618A3215ADC0
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 20:57:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DD618D6BB1
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 20:57:38 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-194-lJdkmNGxP4-_B0gp-OQgEw-1; Tue, 10 Dec 2019 15:57:36 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47XXSc3V2dz1g9y
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 15:57:36 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47XXSc21crzcbc; Tue, 10 Dec 2019 15:57:36 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47XXSc1VJfzcbb
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 15:57:36 -0500 (EST)
Date: Tue, 10 Dec 2019 15:57:36 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google high security and linux command line email programs
In-Reply-To: <Pine.LNX.4.64.1912101449100.11149@server2.shellworld.net>
Message-ID: <alpine.NEB.2.21.1912101556570.6263@panix1.panix.com>
References: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
	<Pine.LNX.4.64.1912101449100.11149@server2.shellworld.net>
MIME-Version: 1.0
X-MC-Unique: lJdkmNGxP4-_B0gp-OQgEw-1
X-MC-Unique: m2L4C3zJOGmXNRzDJiYjYw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBAKveKj026512
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks, then I don't ever move to high security with google.

On Tue, 10 Dec 2019, Linux for blind general discussion wrote:

> Date: Tue, 10 Dec 2019 14:54:53
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: google high security and linux command line email programs
>
> Simply adding a side point based on discussions I am currently having with
> google accessibility.
> I lost access to the basic html  and standard email parts of my secondary
> gmail account because google has decided that the JavaScript incorporated in
> open source Linux browsers like Links the chain and elinks are not as they put
> it, the right kind of JavaScript.
> So, they are not going to post Linux based solutions  because they are not
> directly interested in supporting Linux in all its creative forms.
> Certainly not command line applications.
> Karen
>
>
> On Tue, 10 Dec 2019, Linux for blind general discussion wrote:
>
> > Has anyone here gone high security with google and generated an
> > app-password for their command line email apps?  If so, which apps?
> > I have and can use a few different apps but really want to know what
> > google will be limiting me to with two-factor authentication and an
> > app-password before I enable two-factor authentication.  If there's no
> > apps this can be done with, no point enabling two-factor authentication
> > and trying to generate an app password for any of these.  When google
> > security is after users to enable higher security and google recognizes
> > linux devices have been and are likely to continue being used on an
> > account those messages ought to include a list of apps that will work in
> > linux.
> >
> >
> >
> > --
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

