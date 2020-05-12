Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 4EF471CFB74
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 18:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589302762;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U8pcykrMZpc3wr0f2bUasNowdjc8Ei+O902PMzAE3RM=;
	b=iDO0WJ4LMdAzF4XY65Ga6QPP2UcScekMY2xHZc3pz7vUZNYUPYu8dhuVR9G1KSFChs5GFq
	zsDq7u9VkXNQ09ngmk9Vx8SMkzopa5QLsHRNAqh+lZGWNhDOjZ7iDib9Acl5Aoif9FtLpP
	fw0zeFjQM5INViqa4N9bGIYhw6n8U8A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-G4foXzlcObGDNnxuLZO7og-1; Tue, 12 May 2020 12:59:11 -0400
X-MC-Unique: G4foXzlcObGDNnxuLZO7og-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE065800687;
	Tue, 12 May 2020 16:59:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6A966E6EB;
	Tue, 12 May 2020 16:59:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 81B8E4CAA0;
	Tue, 12 May 2020 16:59:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CGx4LZ032308 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 12:59:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BA7202029F71; Tue, 12 May 2020 16:59:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B64B32029F6F
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:59:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8F9C811E77
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:59:01 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-255-nkJ9ST2tNfux3aCTodWFSA-1; Tue, 12 May 2020 12:58:59 -0400
X-MC-Unique: nkJ9ST2tNfux3aCTodWFSA-1
Received: by mail-qk1-f178.google.com with SMTP id y22so1710333qki.3
	for <blinux-list@redhat.com>; Tue, 12 May 2020 09:58:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ei3iExRLxchvrYBHks9dxpJJ3IolV7agUCMkQBJE4/o=;
	b=XjM4GjFg4POpw+lu8mVxARkO9A/c7unnyvI1OArIB34T1Y6XIS6HGiaGNk5hwt5GKs
	chvN50FEAAzkSxj9HcTV7lQSjA/kr61MHxt2P76nbEb04oYHxU9bTe2RHGBPdmipxWII
	y29aOYMtT21Fa/aw56RfT88SuwOYHyIkn44NmBMXSCJNfEDKtGCj8rayn1jJCUyO2GPW
	lCzD1aj6smddTv2+cS4ZPaEXOBVc+lUAkRllor470p8XxldJi2lIxnZZlCF8af0DfwJ9
	xkcaU/N0Wlw/EuWZN46bL0OlP4SzspA8UsTrTwRlzHZdiiZl+Y3bFzDicYo/NXNVjy1P
	07Mw==
X-Gm-Message-State: AGi0PuZQgUisfkRbHgBlBdH0kspy8AbILDK5+aClV8trLLAKaNpHspEa
	m28ISMphZ4fNxRgvgqPo29BSQkoS
X-Google-Smtp-Source: APiQypLVFmDUQwEXF9ftqvJq33qMeYysGs2RVOPj/EX02PFgwWIZv0ms1X3dUms2xJvH3WCwQqchjw==
X-Received: by 2002:ae9:e404:: with SMTP id q4mr21776976qkc.129.1589302738622; 
	Tue, 12 May 2020 09:58:58 -0700 (PDT)
Received: from xu4.kyle.tk
	(2606-a000-111a-8d0a-0000-0000-0000-065f.inf6.spectrum.com.
	[2606:a000:111a:8d0a::65f]) by smtp.gmail.com with ESMTPSA id
	p68sm11640651qka.56.2020.05.12.09.58.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 12 May 2020 09:58:57 -0700 (PDT)
Subject: Re: Manjaro linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
	<alpine.NEB.2.21.2005121221430.13470@panix1.panix.com>
	<CAO2sX32dVWnC1F8EQuQef1_SPStF0=r1c-k+JSz4M+Jm7z82PQ@mail.gmail.com>
Message-ID: <c33e7e92-9eb7-3b58-afb4-9285eb928b86@gmail.com>
Date: Tue, 12 May 2020 12:58:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:68.0) Gecko/20100101
	Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX32dVWnC1F8EQuQef1_SPStF0=r1c-k+JSz4M+Jm7z82PQ@mail.gmail.com>
Content-Language: en-US
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

On the other hand, to my knowledge, there is no distro that uses Orca
> to make a graphical installer accessible and that all distros that
> have accessible installers utilize either a text-mode screen reader or
> brltty to make a text-based installer accessible.


This isn't the case at all. Ubuntu uses Orca with Ubiquity, which is 
completely accessible. I know, I just used it last week to install to a 
rather old laptop for a client. There is a little problem getting the 
installer working from the "Install Ubuntu 20.04" app icon on the MATE 
version, but opening a terminal and running

sudo -e ubiquity

from there should speak without any issues. I believe someone told me 
this method worked, and there's no reason I can see why it shouldn't 
work. I can't comment on how well it works now, but OpenSUSE used to 
have an installer that worked with Orca. Anakonda in Fedora also works 
with Orca, but you need to switch from Wayland to an X session in order 
to make it work. Not text mode, just X, which is no longer the default. 
In fact, of all the major distros currently available, I think Debian is 
the only one that uses a text-based installer with a text-mode screen 
reader. Well, there's Arch, but its installation process is 100% manual, 
it has no automated installer at all, so it really doesn't count. I do 
fully agree though that Manjaro is probably not the best choice, and not 
only because of the installer. That was actually the least of the 
problems that we who worked with the Sonar project had with Manjaro, 
mostly after installation.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

