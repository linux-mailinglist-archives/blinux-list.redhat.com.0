Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 237234CA972
	for <lists+blinux-list@lfdr.de>; Wed,  2 Mar 2022 16:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646236070;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tNxxUUiO7wklNTQFhClqpxMKyO643r33Vk9AVHcPthI=;
	b=AwAGlqXqpzQMykChs2vKAm+ilwkF3BbgPBy7U7mtUzqC9YweYWHUQRb272Oi8VV4+hczgN
	TO9dV0MchLSCRBRvNl+ru0dIp52IFdCr4EKaOm060HWmetNccsEZHp4OPjg62jAgA/zaJk
	zfRehX4Kb/SFCdWQIxUflJNEagXxGBc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-120-csPHcXGrO5yTDvSB2AmYPg-1; Wed, 02 Mar 2022 10:47:48 -0500
X-MC-Unique: csPHcXGrO5yTDvSB2AmYPg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A05728DCC41;
	Wed,  2 Mar 2022 15:47:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C43326E49;
	Wed,  2 Mar 2022 15:47:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0E3181809C98;
	Wed,  2 Mar 2022 15:47:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 222FlY6H011876 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 2 Mar 2022 10:47:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0ACB92026614; Wed,  2 Mar 2022 15:47:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05964202660C
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 15:47:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AFDE885A5BC
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 15:47:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-657-Q7k2Tp50PBGk58xf3kefEA-1; Wed, 02 Mar 2022 10:47:28 -0500
X-MC-Unique: Q7k2Tp50PBGk58xf3kefEA-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K7z5X3WJWzM8P
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 10:47:28 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4K7z5X46VLz1QWf; Wed,  2 Mar 2022 10:47:28 -0500 (EST)
Date: Wed, 2 Mar 2022 10:47:28 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Any progress on .pdf viewing?
Message-ID: <Yh+RkO1vPG63zhAu@panix.com>
References: <Yh9aEWNufoEE0Bvp@waffles>
MIME-Version: 1.0
In-Reply-To: <Yh9aEWNufoEE0Bvp@waffles>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

pdftotext file.pdf - | fold -s > /tmp/file$$; vi /tmp/file$$; rm /tmp/file$$

On Wed, Mar 02, 2022 at 11:50:41AM +0000, Linux for blind general discussion wrote:
> I've been out of the loop on pdf files for a bit
> 
> So, what's the most accessible way to view a pdf file, either on a
> terminal, or desktop GUI program? I'm trying to put together a list so I
> can throw it on a new install
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

