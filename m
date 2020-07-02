Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 97D6C212BDE
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jul 2020 20:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593713018;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vrQeLLoS8ILquOMSzaUPhJ0O93P94T7Gs6UXevL1irs=;
	b=RTNYUFpUSq2TJgECAZcDfA2bzDMlE6fdInzYGMe9ndMr0voJd7j/wu1pim/sadM9zuEJIy
	b/UXZLQW8tD+4OaOvFCm8s02OFzK9uvX5Y4Tk+m9yGMRzFVuVFQLVj03eg87w/Z4NpEyYv
	OghEIxsUp2ZQEv1lqUbLXFfzeKISIgU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-305-kyExRDy4Nf-nv5RGOesN2Q-1; Thu, 02 Jul 2020 14:03:36 -0400
X-MC-Unique: kyExRDy4Nf-nv5RGOesN2Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F00C36409;
	Thu,  2 Jul 2020 18:03:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABC8D79254;
	Thu,  2 Jul 2020 18:03:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7F3706C9C6;
	Thu,  2 Jul 2020 18:03:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 062I3Hjh009744 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jul 2020 14:03:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D1FF3207AEB4; Thu,  2 Jul 2020 18:03:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CDC83207AEB5
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 18:03:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A3817858EE9
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 18:03:14 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-480-JCe12hLIPtiGM4TBHQX3iw-1; Thu, 02 Jul 2020 14:03:12 -0400
X-MC-Unique: JCe12hLIPtiGM4TBHQX3iw-1
Received: by mail-wm1-f50.google.com with SMTP id o8so28118132wmh.4
	for <blinux-list@redhat.com>; Thu, 02 Jul 2020 11:03:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=PYddE3eO707otuBvJIC9dhTSzLbZtdpxZcsIiNaq+Og=;
	b=Tt0S8j7Gzz7y6O96VIZZ2P85IXcL4s+NrQeNxc1KGW0YxqtuHgWPExDhpxR4gLWjWy
	U5azp7zJAtHFXSwotW6EjpPNABqqj/P/eDCCAVCcRb2xHNMgvd3hEjG6zDsniU5KQ6UP
	EzvOxcYTMgiC7rXC00CchpsAYSyMGEBu7Rd+EJNzKmpgQByNHBdXNUvnT6RMQF+5HHGq
	qQHIPQaeqM7GmtX/DAN/ENjfbFCtagbsFlvI55RNYbVPcb84uidxfbP54WlW2BDSqvw3
	gR20iATLNTCj027E8Uc2ed7JNHmCQYGZmiSZleiYwneZEuphK66Y1GF6OymHTA/n5e/8
	1Z6g==
X-Gm-Message-State: AOAM532hdNTMAznDgZ2E+bAbjEx1sEhAyO7INn+b4s5+qIGJ64LdtCbm
	vHOb2jahG/in3zzOj69TNV6zV8kvFu0657XuX8n1Tlud
X-Google-Smtp-Source: ABdhPJyYWpcLETo3NzBwS6Y0VgFhuRbHuPXYNs88ZNRO95NtFz46DT8bSpthyI2xlq8TVX5mq9fk30jobNo4OhBkbDk=
X-Received: by 2002:a7b:cd09:: with SMTP id f9mr34424548wmj.160.1593712990903; 
	Thu, 02 Jul 2020 11:03:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:4688:0:0:0:0:0 with HTTP;
	Thu, 2 Jul 2020 11:03:10 -0700 (PDT)
In-Reply-To: <20200702125609.GB2669@rednote.net>
References: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
	<20200702125609.GB2669@rednote.net>
Date: Thu, 2 Jul 2020 14:03:10 -0400
Message-ID: <CADj8JxdPK5ynU8acKpG36qxNhPgqxS3VJ7e_Zz7TNjbJDw7kpQ@mail.gmail.com>
Subject: Re: using orca wile using jack
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm using Debian on a fresh install.

On 7/2/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> I can tell you that I've done so, but not on the same audio device, of
> course.
>
> I did not use the graphical jack tools but the cli.
>
> Best,
>
> Janina
>
> Linux for blind general discussion writes:
>> is it possible to use jack wile using orca? How should I configure it?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>
> --
>
> Janina Sajka
> https://linkedin.com/in/jsajka
>
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
>
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
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

