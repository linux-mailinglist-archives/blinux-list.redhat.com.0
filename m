Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 721684260CF
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 01:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633651157;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oFQZSUBqep86SYxsdrO/osduy/7CQIlCVTQw7xdpZZo=;
	b=KZ1Ph9S0DSr3fg86bMr5y6OS7Hqp5i0S7bvMYB+QlZWbP85PZjMoyRZpMdajIzWF1gsLO7
	XAc7hfBcT6ozHdnUb8JD09as81BxzLaAO8ODQy9Z5dOG05h5/nXeoCbgPqI6xHuj7w11Ca
	dXHgYqkFF2w6UGLcfgzP3cGkhu0nsYg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-251-N2b9aVOFMACs1G_dxfPvOg-1; Thu, 07 Oct 2021 19:59:14 -0400
X-MC-Unique: N2b9aVOFMACs1G_dxfPvOg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 141E2EE6F3;
	Thu,  7 Oct 2021 23:58:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A95919D9D;
	Thu,  7 Oct 2021 23:58:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C64E1800B8B;
	Thu,  7 Oct 2021 23:58:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 197Nw3UT024646 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 19:58:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0F2802026D07; Thu,  7 Oct 2021 23:58:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1D192026D69
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 23:57:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2391899EC1
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 23:57:59 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-573-1Io1vSyOOv-Li-hJ3CX8pw-1; Thu, 07 Oct 2021 19:57:57 -0400
X-MC-Unique: 1Io1vSyOOv-Li-hJ3CX8pw-1
Received: by mail-ot1-f49.google.com with SMTP id
	o27-20020a9d411b000000b005453f95356cso8680572ote.11
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 16:57:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=exQtZX4jZoaQSvOiaxpEK+GNkSwgpCso0uU5zqWYwyQ=;
	b=rdqtZYDiPyKndoZsYgIDUzA0nglQcxMgAhT1lTzT9PhKAiXvJs0jjuUv674E3+31dB
	ZC8PA5L0NrCwzcJly8wHY5IuPJBMG6yT5TPDuWzEQyNhnhJSOI9T9XiFHLfkmkro+hpA
	oAsHEjAYXHxDtu9x85nX4nEQEq+eeFM6cg3UDIYfRFzuCT8lkSwVDg7X6wt9TCQUgoea
	PY39WZB9m3gN5QqaoFTGnHv/QLHohd2XehQqygHzgt5lfx43XCmgop/jVwLCjsbgd544
	zBRto/Ao7ZX1h25XBWED8RXq7unCgZoVPWovQW4Ni0XTl5DLQw68mpH86Su+m7ObMHyr
	bsRw==
X-Gm-Message-State: AOAM530N1miMxkPJcBZ52ZTZXZzLZ2CA+9hvdvWRwJfvpBxdRrnaMKoj
	sPX18RWjkKKyOY1F/nzn2dUE1ArSPDw=
X-Google-Smtp-Source: ABdhPJy21tJhQq6TJXqZxKi+wVAZTaZkCO8m0fxmlOL7TCQfuCnHNs1Z9q0vtA9pBoOiivEFjLwfQw==
X-Received: by 2002:a9d:7091:: with SMTP id l17mr6059532otj.309.1633651076650; 
	Thu, 07 Oct 2021 16:57:56 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:596f:c81f:df28:2df3])
	by smtp.gmail.com with ESMTPSA id 64sm191036otc.18.2021.10.07.16.57.56
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Oct 2021 16:57:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Mate Desktop questions
Date: Thu, 7 Oct 2021 18:57:55 -0500
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<7858163b-dcd0-ae6f-de2a-513ae0fa2aa0@gmail.com>
	<df213663-47cd-687a-e54b-19e457208edc@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <df213663-47cd-687a-e54b-19e457208edc@gmail.com>
Message-Id: <6CF0700E-28AB-4788-9209-BD321235912F@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 197Nw3UT024646
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Would one go to www.mintlinux.com to get that?

> On Oct 7, 2021, at 5:29 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Mint Mate is a nice-looking distro!  I suggest the op give it a go,
> unless she/he needs something specifically Ubuntu, like some snaps. 
> 
> 
> Cheers,
> 
> 
> Dave  H.
> 
> 
> 
> On 10/7/21 6:11 PM, Linux for blind general discussion wrote:
>> I am enjoying getting my Linux feet wet again using Mint Mate.
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

