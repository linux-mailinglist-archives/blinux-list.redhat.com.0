Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF7C482049
	for <lists+blinux-list@lfdr.de>; Thu, 30 Dec 2021 21:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640896725;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5scRscZQG9LO0s4s2A+zNDbLqFsmxA92FkyZI+SmhRQ=;
	b=XfMrrwqoU5378WfiupyzbDv43mwbcyqpAV9oJS7wfUsKrGrexdhwdigIwyEYaCVpy8HCWn
	40k5sJYJtSIkjTkPcCZaa6SeGmZC1H6wj5XtBa9BQnh2NIUl7SzdiNk9FwuPMhjWC4MoL0
	FNLto7FJ2BegqzP9X/FYVyQRgMAhImA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-144-wkXB5KalN56ie49scBP5Uw-1; Thu, 30 Dec 2021 15:38:44 -0500
X-MC-Unique: wkXB5KalN56ie49scBP5Uw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5FEF31006AA5;
	Thu, 30 Dec 2021 20:38:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64A0C45D9E;
	Thu, 30 Dec 2021 20:38:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 706434BB7C;
	Thu, 30 Dec 2021 20:38:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BUKcK7m009571 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 30 Dec 2021 15:38:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 63B3E53D7; Thu, 30 Dec 2021 20:38:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5ED1853D6
	for <blinux-list@redhat.com>; Thu, 30 Dec 2021 20:38:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6BC54800B21
	for <blinux-list@redhat.com>; Thu, 30 Dec 2021 20:38:17 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-631-rzeAGIQ_NcGVpFCAAgCeHA-1;
	Thu, 30 Dec 2021 15:38:14 -0500
X-MC-Unique: rzeAGIQ_NcGVpFCAAgCeHA-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id EF33BA3A04
	for <blinux-list@redhat.com>; Thu, 30 Dec 2021 20:38:04 +0100 (CET)
Subject: Re: Some Espeak variants crash
To: blinux-list@redhat.com
References: <dab728ae-51e1-47e8-0225-8ca7466fc493@seznam.cz>
Message-ID: <af55efe5-891f-ca5d-d49f-196c22af25b4@slint.fr>
Date: Thu, 30 Dec 2021 22:38:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <dab728ae-51e1-47e8-0225-8ca7466fc493@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Vojta,

I selected in the Orca preferences GUI to select in the voices tab espeak-ng, cs
and Czech+female2, with no issue.

This is with orca 41.1, speech-dispatcher 0.11.0 and the current state of
espeak-ng in the git repository (commit 29e621c2 applied).

Cheers,
Didier
--
Didier Spaier

On 30/12/2021 20:09, Linux for blind general discussion wrote:
> Good Evening,
> 
> some Espeak variants crash with Orca. Is some way to repair it? I would like to
> use Espeak CS+F2, variant Female 2, but it crashes with Orca and I have to
> repair it with braille display. Please, is some way to repair it? Yes, I know,
> there's a way to install Voxin and if Espeak crashes, Voxin will speak, OK, but
> I would like to use that espeak variant, because I am comfortable with that in
> my phone.
> 
> Thanks a lot.
> 
> Best regards
> 
> Vojta.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

