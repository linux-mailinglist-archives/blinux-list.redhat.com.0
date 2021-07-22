Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2605D3D2EDE
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 23:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626988317;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W86Vg0UuAGnVPzfjTsjdL8X4qEI9Tf9TtWctTrDurKY=;
	b=fOmcLKqSAxbYR01k0874kXg7pQkMKe6MAPe6oWG2ezTeXjZhzBcTdYvwcKh1NB1x4FO6bo
	vj7ayHSuVho4txa3ABCBtFCVZta/zL4OiPnGp/34oyQKWo4HFfjt+W5cjzOOYPQ62cKMu+
	nmH9ZPD4ZxmKMb9xdOS4XYPNzEXs5+E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-47-V83WemdkNLyqqfBIAJRN3g-1; Thu, 22 Jul 2021 17:11:55 -0400
X-MC-Unique: V83WemdkNLyqqfBIAJRN3g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 85240107ACF5;
	Thu, 22 Jul 2021 21:11:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39FD35C1D5;
	Thu, 22 Jul 2021 21:11:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 59D72180BAB1;
	Thu, 22 Jul 2021 21:11:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MLBc8T020312 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 17:11:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 13486209D035; Thu, 22 Jul 2021 21:11:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F01820962F8
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 21:11:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78DFC800FFB
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 21:11:35 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-441-pe8nzMgGOJafQeOaLNBXUA-1; Thu, 22 Jul 2021 17:11:33 -0400
X-MC-Unique: pe8nzMgGOJafQeOaLNBXUA-1
Received: by mail-wr1-f51.google.com with SMTP id j2so117821wrx.9
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 14:11:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=rA3s/puM2Bu4i/c7QkkqqMUVi5At5j9QcZQV2j3exNs=;
	b=VFtEEJrwXFjnGLrtkOhJ+FVIv77p04xh4R87g9azMBui4Vrz9mvnfBaoXV3F7JiXXY
	Ag+KJb4WJfQHbd6gtk9cjbZVB1JMVyCxeSHP1+PxOWyRpt9vsDgoiZOBnWYhdmTCyXt/
	E3vktaS7q020BB5HsfR7ZUIbBqYdW2R9Cib8qoF3iCNmEt26FsUzXv1EdYH+5SIid42+
	is2uUIPQF68t5Y8K6jAAK15QoGBipyow7uYBR1c3A+wgq5wkLXOFjEWEA6b5CpkGrufK
	CGnvAL+p9DJP0bdHkdYfnspXyXzERgFLv1elCSbfJbYgqW+OUNyWzhFhdg4UDyJwl7Vk
	s0tw==
X-Gm-Message-State: AOAM531UUeQMzI3EGyxd/qbObe4ItHu4Ohq7CA4Vi8/VgfIrQEPSuWR/
	nR3w8k7ZRmsLQxvXe3HR90VfSZAbAgsHVg==
X-Google-Smtp-Source: ABdhPJzrf3SKLOmmbdLgIjVBgkxUTExx6vLGkhZNo8Dkchcxlkuvut/VH68HlxYZBUH7Q3OF9Kq4yQ==
X-Received: by 2002:a5d:54cd:: with SMTP id x13mr1814885wrv.197.1626988292130; 
	Thu, 22 Jul 2021 14:11:32 -0700 (PDT)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	y66sm26100308wmy.39.2021.07.22.14.11.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 22 Jul 2021 14:11:31 -0700 (PDT)
Date: Fri, 23 Jul 2021 00:11:30 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about running emacspeak on Arch
Message-ID: <20210722211130.ij625tzg7gzjzu2z@alex-pc>
References: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
	<20210722134626.jueyx7z7q7a4oska@alex-pc>
	<CAD_4ddTKb85p_Wcr6-gH5EP_85tmyUn1rh0PCLD3veXmVywoxQ@mail.gmail.com>
	<20210722160953.fxkwmhyhb3oxa6fh@alex-pc>
	<CAGJxbF45urvOykPsbQ8XPP4aY+ZcMpbk4JGMsA3mD7fEZfSuRw@mail.gmail.com>
	<CAD_4ddTCXJuOmnYJzHUYhC_MBd+sW+o3jB4JggTdnmQEAzUJ+g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD_4ddTCXJuOmnYJzHUYhC_MBd+sW+o3jB4JggTdnmQEAzUJ+g@mail.gmail.com>
User-Agent: NeoMutt/20210205
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 22, 2021 at 08:33:15PM +0000, Linux for blind general discussion wrote:
> Hello everyone,
>
> I got it, thanks.
> I just subscribed to the mailing list and wrote to them, will se
> what happens!

ok. nice.

> Alexander, sorry, I forgot to add you as CC! my apologies!

no problem just write to me or forward the message if any action is needed
from me, I am the current emacspeak maintainer in the AUR.
but keep in mind that I am not using emacs or emacspeak.

> Best regards.
> Francisco.

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

