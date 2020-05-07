Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 457621C902B
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 16:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588862570;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TKTQdZ7lKA4JeSDYXvN80z0CvCmWjQc7Jq29Ec2G7VY=;
	b=O4UW+c//8ME9ZvVA0BLGhZxavCfajl1seN7uVQEyld44UJbX8ysniyqxtkC7SbOKYRcmM1
	+UufqmG2jx8pkNtO3dhQt1LlCEuS/31joBDXFREejcD1TyrFoaHkwXNU0z5Chq9SVRA0rH
	FYLS3ER1A5LTU0Zcnr0tSHm+P/4TQ1Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-7GIZucbkMEK7l7fMoL0AXw-1; Thu, 07 May 2020 10:42:24 -0400
X-MC-Unique: 7GIZucbkMEK7l7fMoL0AXw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EE2019057A1;
	Thu,  7 May 2020 14:42:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2E3F5D9C5;
	Thu,  7 May 2020 14:42:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 491241809540;
	Thu,  7 May 2020 14:42:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047EgFJP029775 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 10:42:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AA9A62156A23; Thu,  7 May 2020 14:42:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A67AC2166B27
	for <blinux-list@redhat.com>; Thu,  7 May 2020 14:42:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C66E803AC0
	for <blinux-list@redhat.com>; Thu,  7 May 2020 14:42:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-420-xWmePcIvNeSXwuu89AA4dA-1; Thu, 07 May 2020 10:42:09 -0400
X-MC-Unique: xWmePcIvNeSXwuu89AA4dA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49Hx4d0l0jz1j7t
	for <blinux-list@redhat.com>; Thu,  7 May 2020 10:42:09 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49Hx4c6yBdzcbc; Thu,  7 May 2020 10:42:08 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49Hx4c6PdyzcbW
	for <blinux-list@redhat.com>; Thu,  7 May 2020 10:42:08 -0400 (EDT)
Date: Thu, 7 May 2020 10:42:08 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Anything besides vanilla Arch?
In-Reply-To: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
Message-ID: <alpine.NEB.2.21.2005071040040.20641@panix1.panix.com>
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047EgFJP029775
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have Jenux installed and you get a choice of gnome mate kde or base
type installs with that distribution.  Oh, I forgot there's also a
couple android distributions it will do for you too if desired.  The
android installs have talkback for a screen reader.

wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso.sha512
wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso
sha512sum -c Jenux-2020.02.03-x86_64.iso.sha512
On Thu, 7 May 2020,
Linux for blind general discussion wrote:

> Date: Thu, 7 May 2020 06:22:56
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Blinux-list@redhat.com
> Subject: Anything besides vanilla Arch?
>
> Hi there,
>
>
>
> I have been running Ubuntu and Ubuntu spins for a while now and am looking
> for something else for a change. I have installed vanilla Arch before, but
> that was when my system was only running Linux. Due to the work I do, NVDA
> certified expert, Training and tech support, et al, I have to have a Windows
> instance to boot in to. I am not comfortable installing vanilla Arch on here
> at this time.
>
>
>
> Are there any Arch based distros we can actually install without sited help?
>
>
>
> Warm regards/Groetnis/herzliche Gr??e,
>
>
>
> Brandt Steenkamp
>
>
>
> Contact/Kontak/Kontakt
>
>
>
> Twitter: www.twitter.com/brandtsteenkamp
> <http://www.twitter.com/brandtsteenkamp>
>
>
>
> Skype: brandt.steenkamp007
>
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

