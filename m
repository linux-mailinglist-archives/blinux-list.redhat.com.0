Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CA3D12B7FC2
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 15:47:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605710851;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nDFrJzb6sHQte8PRJ8GIotbldX7YcltI34bjwljI68Q=;
	b=XduyWjoRaq4NryeMcO9hZIIKP3lZ4bj92kH498tOD10+zmNXS9hbBZ3UBk+l7gPu+hJC1t
	AxgW5R6hm+bF+zykrDc3cuwKdc3wkTzCIcaIpBIWJKroS9FxQ0ICYTAUPrWRYxgKtAVBSs
	64JonQKFGmtujSvD25nqObvbLMEsHtY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-547-KpxkqVGANY2ZBpIpw84KOA-1; Wed, 18 Nov 2020 09:47:29 -0500
X-MC-Unique: KpxkqVGANY2ZBpIpw84KOA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D901186DD44;
	Wed, 18 Nov 2020 14:47:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4BFE5D9CD;
	Wed, 18 Nov 2020 14:47:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 88C1D5813E;
	Wed, 18 Nov 2020 14:47:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AIElM3Q015933 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 09:47:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B423F112C088; Wed, 18 Nov 2020 14:47:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC85A112C080
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 14:47:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10838858F17
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 14:47:18 +0000 (UTC)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-353-RvxHT_hROs2QCXoF7UlsSg-1; Wed, 18 Nov 2020 09:47:13 -0500
X-MC-Unique: RvxHT_hROs2QCXoF7UlsSg-1
Received: by mail-io1-f46.google.com with SMTP id o11so2235699ioo.11
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 06:47:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=OTpyqGsIwFTj4T+ydi4AM1SwSM1NaTTILfMAT/GAsm0=;
	b=SaZrdEnjT9dM93+J7YnQqN08NiS/rso6SizBWR89hqYNQcqD6iLG7Il2VxTBLHQsbT
	OTzcj0kWpzvIuOaY4/raWTl8S9B6hPVaEnWVdmEuT2PpJH5a0k2MZ9zVyJDMkvXWEVLf
	75lFucun+B5EYDhYdTRn2oMCc+bWg98WxhicjpniWzsZ2Pp1snfRyxRYVGL2ImSF3sbs
	p1pmPCzTD9beBQ8bjYjZoQCqIFQY4lS8WiHN0SCUjlCFvBU4PVKMbBMIu+x/tXnJv4wU
	rs1XhbR8v9ew2RL5Y0DHKzzG666NBNHe8hHO1H54uu74X3nh6esJR3Np7UTHeNZq4Ym7
	ZxLA==
X-Gm-Message-State: AOAM530HaZ+sKmtyRdJpr0gvfH+PYNqMZjvxbut4BKxOH4yqOUPx/G+U
	xVIAVsiviNjdw3lM5604iZeaqhpzemZ8L3bOZ4GXi6tdJHY=
X-Google-Smtp-Source: ABdhPJwOKmcqjivibxi4bInlOrAB1pD5Eucq2eG3F2L62vY/GAHTwA0FIW6PpM6GYAo3vIcJ5Yx/xwGCKprLHRVwWGc=
X-Received: by 2002:a5d:858b:: with SMTP id f11mr15947367ioj.0.1605710831395; 
	Wed, 18 Nov 2020 06:47:11 -0800 (PST)
MIME-Version: 1.0
References: <41F1A979-146A-4091-8CDF-6B5E823D64A7.ref@yahoo.com>
	<41F1A979-146A-4091-8CDF-6B5E823D64A7@yahoo.com>
In-Reply-To: <41F1A979-146A-4091-8CDF-6B5E823D64A7@yahoo.com>
Date: Wed, 18 Nov 2020 08:46:58 -0600
Message-ID: <CAGJxbF4Wa5T8C8sbce0kNBreGUdz0EtmPWT4Y=zEHwR8-EVX+Q@mail.gmail.com>
Subject: Re: Bratty
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Do you mean BRLTTY? It should be in your distribution's package manager.
Devin Prater
r.d.t.prater@gmail.com


On Tue, Nov 17, 2020 at 11:03 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hi guys,
> I was wondering if anyone knew anything about this program? I am trying to
> download it for a class that I am taking for school and I am a bit
> confused. Any help would be greatly appreciated.
> Thanks,
>
>
> Ashley Breger
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

