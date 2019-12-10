Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id A876211911C
	for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2019 20:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576007710;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YL8oIQwelS4N1GtVJbiJB4mgG2qD/ccsL3AM94CdnYA=;
	b=McGZdhsnYsP6Ewhj2WAcEEedjHiQa48Fl6oH7CV1DkDL8YuOrAbFAlJfFjMfqMybp4FGN5
	91UtZNU+Ocox5KjK64KeBgW83naJnYmgA3T2usQRK8UVPWF6rehgW7rWu3mt92rvYIolAx
	RoQY5Xtd5RM7k22XPfcwrDK1/4mHflw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-305-VsxA0JrsMNeSk8w9QEZoKA-1; Tue, 10 Dec 2019 14:55:08 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AADF78BE9B2;
	Tue, 10 Dec 2019 19:55:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A4561001B07;
	Tue, 10 Dec 2019 19:55:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7229818095FF;
	Tue, 10 Dec 2019 19:55:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBAJsxrn003616 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Dec 2019 14:54:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 28CD81013F12; Tue, 10 Dec 2019 19:54:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 233C110D14FE
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 19:54:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9D6F907F2B
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 19:54:56 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-57-VGleOtCnPGqiTZtARzD2Iw-1; Tue, 10 Dec 2019 14:54:54 -0500
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 2AE6A8C0424; Tue, 10 Dec 2019 19:54:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 28DCD8C03E0
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 14:54:53 -0500 (EST)
Date: Tue, 10 Dec 2019 14:54:53 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google high security and linux command line email programs
In-Reply-To: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.1912101449100.11149@server2.shellworld.net>
References: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: VGleOtCnPGqiTZtARzD2Iw-1
X-MC-Unique: VsxA0JrsMNeSk8w9QEZoKA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBAJsxrn003616
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Simply adding a side point based on discussions I am currently having with 
google accessibility.
I lost access to the basic html  and standard email parts of my 
secondary 
gmail account because google has decided that the JavaScript incorporated 
in open source Linux browsers like Links the chain and elinks are not as 
they put it, the right kind of JavaScript.
So, they are not going to post Linux based solutions  because they are not 
directly interested in supporting Linux in all its creative forms.
Certainly not command line applications.
Karen


On Tue, 10 Dec 2019, Linux for blind general discussion wrote:

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
>
>


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

