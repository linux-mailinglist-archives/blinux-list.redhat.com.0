Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A37E48C3C7
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jan 2022 13:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641989530;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hv8GCHtUFDiNKgeI4lXs2zSX0C9FeQrFgp4OTjSFF8A=;
	b=ipDu4MXwtcs/j+ic28fobefii1YL7XIXoXlbBL+HfKWgQj2WU+v8qCDSPSTF1pKvr5oESo
	I8ET4LlZr338tMwNntA7pydZdnmTJ1XDnmggqXIPgkfMtSbNXDrJb5GDKkCndp4Ae6KlxR
	Q1qs+4O/KpS9y+378rxE2O12Cs3+DQc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-131-NS_y7E7RM_yNIHxqwTpkDw-1; Wed, 12 Jan 2022 07:12:06 -0500
X-MC-Unique: NS_y7E7RM_yNIHxqwTpkDw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08B6B760C7;
	Wed, 12 Jan 2022 12:12:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE8867B6D4;
	Wed, 12 Jan 2022 12:11:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9560C4BB7C;
	Wed, 12 Jan 2022 12:11:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20CCBhVu031499 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jan 2022 07:11:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2DAA846D1EA; Wed, 12 Jan 2022 12:11:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A00746D1E3
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 12:11:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2C793C01B93
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 12:11:42 +0000 (UTC)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-497-f9aDbVAuNF-siy15mliH6Q-1; Wed, 12 Jan 2022 07:11:40 -0500
X-MC-Unique: f9aDbVAuNF-siy15mliH6Q-1
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	56BC72978DB0_1DEC47EB
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 12:07:26 +0000 (GMT)
Received: from marge.meraka.csir.co.za (marge.meraka.csir.co.za [146.64.28.1])
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id
	165DA2976228_1DEC47EF
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 12:07:26 +0000 (GMT)
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 0C5CB28229
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 14:07:26 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id q3nlhx3WQpBu for <blinux-list@redhat.com>;
	Wed, 12 Jan 2022 14:07:25 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown
	[IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 14:07:25 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>) id 1n7cPV-00034H-Fz
	for blinux-list@redhat.com; Wed, 12 Jan 2022 14:07:25 +0200
Date: Wed, 12 Jan 2022 14:07:25 +0200 (SAST)
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: MPV problem
In-Reply-To: <4f8b44c7-7955-ceb2-491f-b3a6de4cdda8@seznam.cz>
Message-ID: <alpine.DEB.2.21.1.2201121406370.11760@willempc.meraka.csir.co.za>
References: <4f8b44c7-7955-ceb2-491f-b3a6de4cdda8@seznam.cz>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-SASI-RCODE: 200
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Use mpv from a terminal.
Shift-q saves and quits mpv.
Regards, Willem


On Wed, 12 Jan 2022, Linux for blind general discussion wrote:

> Hello,
>
> When I play something in MPV and listen and save by shift Q, after some time, 
> it's saved, but not playing. I have to close it by Alt F4, launch it again 
> and press arrows to go to the last listened place.
>
> Is some way to repair it? Ubuntu Mate 20.04, Raspberry Pi 4B 4 GB.
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
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

